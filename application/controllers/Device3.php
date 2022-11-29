<?php
defined('BASEPATH') or exit('No direct script allowed');
date_default_timezone_set("Asia/Jakarta");

/*----------------------------------------REQUIRE THIS PLUGIN----------------------------------------*/
require APPPATH . '/libraries/REST_Controller.php';
//use Restserver\Libraries\REST_Controller;

class Device3 extends REST_Controller
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
        $buff1 = $this->db->get('humidity3')->result();
        $humidity3 = $buff1[0]->value;



        $this->db->limit(1);
        $this->db->order_by(
            'id',
            'desc'
        );
        $buff3 = $this->db->get('temperature3')->result();
        $temperature3 = $buff3[0]->value;


        $data = array([
            "humidity3" => $humidity3,
            "temperature3" => $temperature3,
        ]);

        $this->response($data, 200);
    }

    function index_post()
    {
        $humidity3 = $this->post('humidity3');
        $temperature3 = $this->post('temperature3');


        // Device3
        // -Humidity 3
        // - temperatur 3


        $status = 0;

        if ($humidity3 != null) {
            $dataHumidity3 = array(
                'date' => date("Y-m-d"),
                'time' => date("H:i:s"),
                'value' => $humidity3,
            );

            $insertHumidity3 = $this->db->insert('humidity3', $dataHumidity3);
            if (!$insertHumidity3) {
                $status = 1;
            }
        }



        if ($temperature3 != null) {
            $dataTemperature3 = array(
                'date' => date("Y-m-d"),
                'time' => date("H:i:s"),
                'value' => $temperature3,
            );

            $insertTemperature3 = $this->db->insert('temperature3', $dataTemperature3);
            if (!$insertTemperature3) {
                $status = 4;
            }
        }

        // Device3
        // -Humidity 3
        // - temperatur 3

        if ($status == 0) {
            $this->response(array('Status' => 'Success'), 200);
        } elseif ($status == 1) {
            $this->response(array('Status' => 'Error on insert 1'), 200);
        } elseif ($status == 2) {
            $this->response(array('Status' => 'Error on insert 2'), 200);
        }
    }

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
