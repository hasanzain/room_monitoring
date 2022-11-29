<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Auth extends CI_Controller
{

    public function index()
    {
        $this->form_validation->set_rules('username', 'username', 'trim|required');
        $this->form_validation->set_rules('password', 'password', 'trim|required');


        if ($this->form_validation->run() == FALSE) {
            $this->load->view('header/auth_header');
            $this->load->view('v_login');
            $this->load->view('header/auth_footer');
        } else {
            $this->_login();
        }
    }

    private function _login()
    {

        $username = $this->input->post('username');
        $password = $this->input->post('password');
        $this->db->where('username', $username);
        $this->db->where('password', md5($password));
        $q = $this->db->get('admin');
        $user = $q->row_array();
        if ($q->num_rows() == 1) {
            $data = array(
                'username' => $user['username'],
            );

            $this->session->set_userdata($data);
            redirect('Monitoring');
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">password salah</div>');
            redirect('Auth');
        }

        // $email = $this->input->post('email');
        // $password = $this->input->post('password');
        // $this->db->where('email', $email);
        // $user = $this->db->get('admin')->row_array();
        // if ($user) {
        //    if (password_verify($password,$user['password'])) {
        //        $data = array(
        //            'email' => $user['email'],
        //            'customer' => $user['customer']
        //          );

        //          $this->session->set_userdata( $data);
        //          redirect('monitoring');
        //    }else{
        //        $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">password salah</div>');
        //     redirect('auth');
        //    }
        // }else {
        //     $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">email tidak terdaftar</div>');
        //     redirect('auth');

        // }

    }

    public function logout()
    {

        $this->session->unset_userdata('username');
        redirect('monitoring');
    }
}

/* End of file Controllername.php */