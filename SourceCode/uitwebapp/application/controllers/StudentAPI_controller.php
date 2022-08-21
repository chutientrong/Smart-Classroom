<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class StudentAPI_controller extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
        $this->load->model('Crud_model');
    }

    public function students_info_api($class_id)
    {
        $data=$this->Crud_model->get_students($class_id);
        echo json_encode($data);
    }

    public function student_image_api($student_code)
    {
        $student_info = $this->Crud_model->get_student_info_by_code($student_code);
//        echo json_encode($student_info);
            $data = $this->crud_model->get_image_url('student', $student_info['student_id']);
            echo $data;
    }
}
