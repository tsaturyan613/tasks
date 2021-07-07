<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends MX_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper(array('url', 'form', 'html', 'text'));
        $this->load->library(array('session', 'form_validation', 'email'));
        $this->load->model(array('common_model', 'adminlogin'));
    }

    public function index() {
        $this->load->view('login');
    }

    public function login() {
        $username = $this->input->post('username');
        $password = md5($this->input->post('password'));
        //// Login check//////
        $query = $this->adminlogin->loginCheck($username, $password);
        //echo $this->db->last_query(); exit();
        $row = $query->row();
        if ($query->num_rows() > 0) {
            if ($row->u_status == 'Y') {
                $this->session->set_userdata('EMAIL', $row->email);
                $this->session->set_userdata('ADMIN_ID', $row->u_id);                
                $this->session->set_userdata('USERTYPE', $row->usertype);
                redirect('admin/dashboard');
            } else {
                $message = '<div class="alert alert-danger">Your account is inactive!!</div>';
                $this->session->set_flashdata('success', $message);
                redirect('admin');
            }
        } else {

            $message = '<div class="alert alert-danger">Invalid username or password!!</div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin');
        }
    }

     public function all_subscribed_emails() {
        //echo "lll"; die;
        $this->db->select('subscribed.*')->from('subscribed')->order_by('id','desc');;
        $data['query'] = $this->db->get();

        $this->load->view('vereniging/all_subscribed_email', $data);
    }

    public function admin_setting() {
        $data['min_order_box'] = $this->common_model->RetriveRecordByWhereRow('setting',array('id'=>1));
            
        if($this->input->post('action') == 'update'){
            // check($_POST);
            $this->common_model->UpdateRecord(array('value'=>$this->input->post('num_of_box_order')),'setting','id',1);
            $message = '<div class="alert alert-success">successfully updated</div>';
            $this->session->set_flashdata('success', $message);
           redirect($this->uri->uri_string());
        }
        $this->load->view('admin/setting', $data);

    }

}
