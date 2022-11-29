<?php
defined('BASEPATH') or exit('No direct script allowed');
date_default_timezone_set("Asia/Jakarta");

/*----------------------------------------REQUIRE THIS PLUGIN----------------------------------------*/
require APPPATH . '/libraries/REST_Controller.php';
//use Restserver\Libraries\REST_Controller;

class Device1status extends REST_Controller
{
    /*----------------------------------------CONSTRUCTOR----------------------------------------*/
    function __construct($config = 'rest')
    {
        parent::__construct($config);
        $this->load->database();
    }

    /*----------------------------------------GET KONTAK----------------------------------------*/
    function index_get()
    {

        $this->db->limit(1);
        $this->db->order_by('id', 'desc');
        $buff3 = $this->db->get('temperature1')->result();
        $temperature1 = $buff3[0]->value > 20 ? "Suhu Berlebihan" : "Normal";

        $this->db->limit(1);
        $this->db->order_by('id', 'desc');
        $buff2 = $this->db->get('temperature2')->result();
        $temperature2 = $buff2[0]->value > 20 ? "Suhu Berlebihan" : "Normal";

        $data = array([
            "temperature1" => $temperature1,
            "temperature2" => $temperature2
        ]);

        $this->response($data, 200);
    }

    // function index_post()
    // {
    // $humidity1 = $this->post('humidity1');
    // $humidity2 = $this->post('humidity2');
    // $temperature1 = $this->post('temperature1');
    // $temperature2 = $this->post('temperature2');


    // //Device1
    // // 1-humidity 1
    // // 2-humidity 2
    // // 3- temperatur 1
    // // 4- temperatur 2

    // $status = 0;

    // if ($humidity1 != null) {
    //     $dataHumidity = array(
    //         'date' => date("Y-m-d"),
    //         'time' => date("H:i:s"),
    //         'value' => $humidity1,
    //     );

    //     $insertHumidity = $this->db->insert('humidity1', $dataHumidity);
    //     if (!$insertHumidity) {
    //         $status = 1;
    //     }
    // }

    // if ($humidity2 != null) {
    //     $dataHumidity2 = array(
    //         'date' => date("Y-m-d"),
    //         'time' => date("H:i:s"),
    //         'value' => $humidity2,
    //     );

    //     $insertHumidity2 = $this->db->insert('humidity2', $dataHumidity2);
    //     if (!$insertHumidity2) {
    //         $status = 2;
    //     }
    // }

    // if ($temperature1 != null) {
    //     $dataTemperature1 = array(
    //         'date' => date("Y-m-d"),
    //         'time' => date("H:i:s"),
    //         'value' => $temperature1,
    //     );

    //     $insertTemperature1 = $this->db->insert('temperature1', $dataTemperature1);
    //     if (!$insertTemperature1) {
    //         $status = 3;
    //     }
    // }

    // if ($temperature2 != null) {
    //     $dataTemperature2 = array(
    //         'date' => date("Y-m-d"),
    //         'time' => date("H:i:s"),
    //         'value' => $temperature2,
    //     );

    //     $insertTemperature2 = $this->db->insert('temperature2', $dataTemperature2);
    //     if (!$insertTemperature2) {
    //         $status = 4;
    //     }
    // }

    // //Device1
    // // 1-humidity 1
    // // 2-humidity 2
    // // 3- temperatur 1
    // // 4- temperatur 2

    // if ($status == 0) {
    //     $this->response(array('Status' => 'Success'), 200);
    // } elseif ($status == 1) {
    //     $this->response(array('Status' => 'Error on insert 1'), 200);
    // } elseif ($status == 2) {
    //     $this->response(array('Status' => 'Error on insert 2'), 200);
    // } elseif ($status == 3) {
    //     $this->response(array('Status' => 'Error on insert 3'), 200);
    // } elseif ($status == 4) {
    //     $this->response(array('Status' => 'Error on insert 4'), 200);
    // }
    // }

    // function index_put()
    // {
    //     $nama_relay = $this->put('nama_relay');
    //     $nilai = $this->put('nilai');

    //     if ($nilai != null){
    //         if ($nilai == 1) {
    //             $data['status'] = "ON";
    //             $data['button'] = "succes";
    //             $data['nilai'] = $nilai;
    //         }else{
    //             $data['status'] = "OFF";
    //             $data['button'] = "danger";
    //             $data['nilai'] = $nilai;
    //         }
    //     }

    //     $this->db->where('nama_relay', $nama_relay);
    //     $update = $this->db->update('relay', $data);

    //     if ($update) {
    //         $this->response($data, 200);
    //     } else {
    //         $this->response(array('status' => 'fail'), 502);
    //     }
    // }

    // function index_delete()
    // {
    //     $id = $this->delete('id');
    //     $auth = $this->delete('auth');


    //     if ($auth == "batman") {
    //         $delete = $this->db->empty_table('relay');
    //     }else{
    //         $this->db->where('id', $id);
    //         $delete = $this->db->delete('arus_pompa_1');
    //     }
    //     if ($delete) {
    //         $this->response(array('status' => 'success'), 201);
    //     } else {
    //         $this->response(array('status' => 'fail'), 502);
    //     }
    // }
}
