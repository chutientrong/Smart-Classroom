<?php
defined('BASEPATH') OR exit('No direct script access allowed');


class Device_Controller extends CI_Controller {


    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
        $this->load->model('Device_model');
    }

    public function viewdevice()
    {
        $data=$this->Device_model->display_records();
        $i=1;
        foreach($data as $row)
        {
            echo "<tr>";
            echo "<td>".$i."</td>";
            echo "<td>".$row->class_id."</td>";
            echo "<td>".$row->section_id."</td>";
            echo "<td>".$row->teacher_id."</td>";
            echo "<td>".$row->name_device."</td>";
            echo "<td>".$row->status."</td>";
            echo "</tr>";
            $i++;
        }
    }
    public function light_status()
    {
        $data=$this->Device_model->display_light_status();
        foreach($data as $row)
        {
            echo $row['status'];
        }
    }

    public function light_status_api($id)
    {
        $data=$this->Device_model->display_light_status_api($id);
        echo json_encode($data[0]['status']);
    }
    public function update_light_api($id)
    {
        $data=$this->Device_model->display_light_status($id);
        foreach($data as $row)
        {
            $status = $row['status'];
//            echo $status;
        }

        if($status=="ON")
        {
            $status="OFF";
        }
        elseif ($status=="OFF"){
            $status="ON";
        }
        else
        {
            $status="OFF";
        }
        $data2=$this->Device_model->update_light_status_api($id,$status);
        echo json_encode($data2);
    }
    public function fan_status()
    {
        $data=$this->Device_model->display_fan_status();
        foreach($data as $row)
        {
            echo $row['status'];
        }
    }
    public function fan_status_api($id)
    {
        $data=$this->Device_model->display_fan_status_api($id);
        echo json_encode($data[0]['status']);
    }
    public function update_fan_api($id)
    {
        $data=$this->Device_model->display_fan_status($id);
        foreach($data as $row)
        {
            $status = $row['status'];
//            echo $status;
        }

        if($status=="ON")
        {
            $status="OFF";
        }
        elseif ($status=="OFF"){
            $status="ON";
        }
        else
        {
            $status="OFF";
        }
        $data2=$this->Device_model->update_fan_status_api($id,$status);
        echo json_encode($data2);
    }
    function updaterecords($id)
    {
        if($this->input->post('type')==3)
        {
//            $id=$this->input->post('device_id');
            $class_id=$this->input->post('class_id');
            $section_id=$this->input->post('section_id');
            $teacher_id=$this->input->post('teacher_id');
            $name_device=$this->input->post('name_device');
            $status=$this->input->post('status');
            $this->Device_model->updaterecords($id,$class_id,$section_id,$teacher_id,$name_device,$status);
            echo json_encode(array(
                "statusCode"=>200
            ));
        }
    }
    

    public function update($id)
    {
        $method = $_SERVER['REQUEST_METHOD'];
        if($method != 'PUT' || $this->uri->segment(3) == '' || is_numeric($this->uri->segment(3)) == FALSE){
            json_output(400,array('status' => 400,'message' => 'Bad request.'));
        } else {

            $params = json_decode(file_get_contents('php://input'), TRUE);
            $params['updated_at'] = date('Y-m-d H:i:s');
            if ($params['status'] == "" ) {
                $resp = array('status' => 400,'message' =>  'status can\'t empty');
            } else {
                $resp = $this->Device_model->book_update_data($id,$params);
            }
            json_output($resp);


        }
    }
}
