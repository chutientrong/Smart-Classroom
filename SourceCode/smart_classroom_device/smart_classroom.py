import imp
import os

import face_recognition
import cv2
import numpy as np
import time
from connectdb import *
import serial
from time import sleep
from control_device import *
from api import *
dataset_folder = './data/'
# detect_folder = './detect/'
ser=serial.Serial('/dev/ttyUSB0', 9600)

def detect():
    count_push_attendance = 0
    start_time_attendance = time.time()
    # Folder image

    # Get list student
    file_ListStudent = open(dataset_folder + 'danhSachLop.txt', 'w')

    known_face_encodings = []
    known_face_names = []

    print('Start Encoding')
    for img in os.listdir(dataset_folder + 'class/'):

        # Encoding
        temp_image = face_recognition.load_image_file(dataset_folder + 'class/' + img)

        temp_face_encoding = face_recognition.face_encodings(temp_image)[0]
            
        known_face_encodings.append(temp_face_encoding)

        # Name
        name = img[:-4]  # list_student.get(int(img[:8]))
        known_face_names.append(name)
    print('End Encoding')


    # Get a reference to webcam #0 (the default one)
    video_capture = cv2.VideoCapture(0)

    # Initialize some variables
    face_locations = []
    face_encodings = []
    face_names = []
    process_this_frame = True
    pre_status_fan = "OFF"
    print('Start Detect')
    # for img in os.listdir(detect_folder):
    while True:

        status_led = get_status_led()
        status_fan = get_status_fan()

        ret, frame = video_capture.read()
            # Resize frame of video to 1/4 size for faster face recognition processing
        small_frame = cv2.resize(frame, (0, 0), fx=0.25, fy=0.25)
            # Convert the image from BGR color (which OpenCV uses) to RGB color (which face_recognition uses)
        rgb_small_frame = small_frame[:, :, ::-1]

            # Only process every other frame of video to save time
        if process_this_frame:
                # Find all the faces and face encodings in the current frame of video
            face_locations = face_recognition.face_locations(rgb_small_frame)
            face_encodings = face_recognition.face_encodings(rgb_small_frame, face_locations)

            # Control device
            if face_encodings:
                # Turn on device
                if status_led == 'OFF':
                    change_status('LEDON') # change in device
                    change_status_led() # call api to change in db
            else:
                if status_led == 'ON':
                    change_status('LEDOFF')
                    change_status_led()

            if status_fan == 'OFF' and pre_status_fan == 'ON':
                change_status('FANOFF')
                pre_status_fan = 'OFF'
            elif status_fan == 'ON' and pre_status_fan == 'OFF':
                change_status('FANON')
                pre_status_fan = 'ON'

            # face_names = []
            for face_encoding in face_encodings:
                # See if the face is a match for the known face(s)
                matches = face_recognition.compare_faces(known_face_encodings, face_encoding)                
                name = "Unknown"
                
                face_distances = face_recognition.face_distance(known_face_encodings, face_encoding)
                best_match_index = np.argmin(face_distances)
                
                if matches[best_match_index]:
                    name = known_face_names[best_match_index]
                    print('name: ', name)

                if count_push_attendance == 0:
                    face_names.append(name + '\n')    

        check_time_attendance = time.time()
        face_locations = []
        face_encodings = []

        if (check_time_attendance - start_time_attendance) >= 120 and count_push_attendance == 0:
            print('End Attendance ==================================================================')
            count_push_attendance += 1
            file_ListStudent.writelines(face_names)
            file_ListStudent.close()
            handle_attendance()
            face_names = []

        print('time: ', check_time_attendance - start_time_attendance)


    
# process_this_frame = not process_this_frame



def handle_attendance():
    f = open(dataset_folder + 'danhSachLop.txt', 'r')
    f1 = open(dataset_folder + 'attendanced.txt', 'w')
    listAttendanced = f.readlines()

    dictTemp = {}

    for row in range(len(listAttendanced) - 1):
        if row == 0:
            dictTemp[listAttendanced[row][:-3]] = listAttendanced[row][:-3]
        else:
            if listAttendanced[row][:-3] != dictTemp.get(listAttendanced[row][:-3]):
                dictTemp[listAttendanced[row][:-3]] = listAttendanced[row][:-3]

    listTemp = []
    for row in dictTemp:
        if (dictTemp[row] != 'Unkno') and (dictTemp[row] != 'Unknown'):
            listTemp.append(dictTemp[row] + '\n')

    f1.writelines(listTemp)
    f1.close()


if __name__ == "__main__":

    print('Start ....')
    detect()

