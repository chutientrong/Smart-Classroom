<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class ChartController extends CI_Controller {

/**
* Get All Data from this method.
*
* @return Response
*/
public function __construct() {
parent::__construct();
$this->load->database();
}

/**
* Get All Data from this method.
*
* @return Response
*/
public function index()
{
$query = $this->db->query("SELECT SUM(id) as count FROM classdevice
GROUP BY name ORDER BY id");
$data['device_id'] = json_encode(array_column($query->result(), 'count'),JSON_NUMERIC_CHECK);

$this->load->view('admin/device', $data);
}
}