<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Attendance_controller extends CI_Controller {

    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
        $this->load->model('Attendance_model');
    }

    public function get_attendance()
    {
        $data=$this->Attendance_model->get_attendance();
        foreach($data as $row)
        {
            echo  $row['attendance_id'] , '-' , $row['timestamp'] , '-' , $row['year'] , '-' ,  $row['class_id']
            , '-' ,  $row['section_id'] , '-' , $row['student_id'] , '-' , $row['class_routine_id'], '-' , $row['status'] ."<br>";

        }
    }

    public function add_attendance_api()
    {
        $timestamp = $this->input->post('timestamp');
        echo $timestamp;
        $timestamp = strtotime($timestamp);
        echo $timestamp;
        echo date("Y-m-d",$timestamp);
        $year = $this->input->post('year');
        $class_id = $this->input->post('class_id');
        $section_id = $this->input->post('section_id');
        $student_id = $this->input->post('student_id');
        $class_routine_id = null;
        $status = $this->input->post('status');
        $data2=$this->Attendance_model->get_student_id($student_id);
        $student_id= $data2[0]['student_id'];
        $data = array('timestamp' => $timestamp,'year'=>$year ,'class_id' => $class_id,'section_id'=>$section_id,
            'student_id'=>$student_id,'class_routine_id'=>$class_routine_id,'status'=>$status);
        $data=$this->Attendance_model->add_attendance_api($data);
        echo json_encode($data);
    }
}