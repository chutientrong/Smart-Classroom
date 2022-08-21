<?php

class Device_model extends CI_Model
{
    function display_records()
    {
        $query=$this->db->query("select * from classdevice");
        return $query->result();
    }
    function display_light_status()
    {
        $query=$this->db->get_where('classdevice', array('name_device' => 'light'));
        return $query->result_array();
    }
    public function display_light_status_api($id)
    {
        $array = array('device_id' => $id, 'name_device' => 'light');
        $this->db->where($array);
//    	$this->db->where('device_id', $id);
	// here we select every column of the table
	$query = $this->db->get('classdevice');
        return $query->result_array();
    }
    public function update_light_status_api($id,$status)
    {
        $data=array(
            'status' => $status
        );
//        echo ($data['status']);
//        $query = $this->db->where('device_id',$id)->update('classdevice',$data);
        $this->db->update('classdevice', $data, array('device_id' => $id));
        return array('status' => 200,'message' => 'Data has been updated.');
//        return $query->result_array();
    }
    function display_fan_status()
    {
        $query=$this->db->get_where('classdevice', array('name_device' => 'fan'));
        return $query->result_array();
    }

    public function display_fan_status_api($id)
    {
        $array = array('device_id' => $id, 'name_device' => 'fan');
        $this->db->where($array);
	// here we select every column of the table
	    $query = $this->db->get('classdevice');

        return $query->result_array();
    }
    public function update_fan_status_api($id,$status)
    {
        $data=array(
            'status' => $status
        );
//        echo ($data['status']);
//        $query = $this->db->where('device_id',$id)->update('classdevice',$data);
        $this->db->update('classdevice', $data, array('device_id' => $id));
        return array('status' => 200,'message' => 'Data has been updated.');
//        return $query->result_array();
    }

    function updaterecords($id,$class_id,$section_id,$teacher_id,$name_device,$status)
    {
        $query="UPDATE `classdevice` 
		SET `class_id`='class_id',
		`section_id`='section_id',
		`teacher_id`='teacher_id',
		`name_device`='name_device',
		`status`='status' WHERE id=$id";
        $this->db->query($query);
    }

    public function book_update_data($id,$data)
    {
        $this->db->where('device_id',$id)->update('classdevice',$data);
        return array('status' => 200,'message' => 'Data has been updated.');
    }

}


