<?php

class Attendance_model extends CI_Model
{
    function display_records()
    {
        $query=$this->db->query("select * from attendance");
        return $query->result();
    }
    function get_attendance()
    {
        $query=$this->db->get('attendance');
        return $query->result_array();
    }
    function get_student_id($student_id){

        $array = array('student_code' => $student_id);
        $this->db->where($array);
//    	$this->db->where('device_id', $id);
        // here we select every column of the table
        $query = $this->db->get('student');
//        echo $query->result_array();
        return $query->result_array();
    }
    function add_attendance_api($data)
    {

        $this->db->insert('attendance', $data);
        if ($this->db->affected_rows() == '1')
        {
             return array('status' => 200,'message' => 'Data has been added.');
        }
        else
        {
            return array('status' => 404,'message' => 'Data has not been added.');
        }
    }
}
