import serial
from time import sleep

ser=serial.Serial('/dev/ttyUSB0', 9600)

def change_status(status):


    try:
        ser.write((status + '\r').encode())
        print('transfer ' + status)

        data = ser.readline()
        data = data.decode()
        data = data.rstrip()
        
        print('Trang thai: ' + data)
        return data
            
        
    except KeyboardInterrupt:
        ser.close()
