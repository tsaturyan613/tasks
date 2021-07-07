<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends MX_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper(array('url', 'form', 'html', 'text'));
        $this->load->library(array('session', 'form_validation', 'email', 'upload'));
        $this->load->model(array('common_model', 'custom_model'));
        if ($this->session->userdata('ADMIN_ID') == '') {
            redirect('admin');
        }
    }
 
    public function index() {
        $data = array();
        
//    ->order_by('orders.id','desc')->join('users as u', 'orders.user_id = u.u_id')
        
        $data['query'] = $this->db->select('*','MONTH(CAST(event_start_date AS datetime))')->from('orders')->order_by('MONTH(CAST(event_start_date AS datetime))','asc')->get();
        
        
        $this->load->view('dashboard', $data);
    }

    public function profile() {
        $data = array();

        if ($_POST) {
            $id = $this->input->post("id");
            $data['fname'] = $this->input->post("fname");
            $data['lname'] = $this->input->post("lname");
            $data['email'] = $this->input->post("email");
            if ($this->input->post("password") != '') {
                $data['password'] = md5($this->input->post("password"));
            } else {
                $data['password'] = $this->input->post("old_password");
            }

            
            $this->common_model->UpdateRecord($data, 'users', 'id', $id);
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
        }

        $data['query'] = $this->common_model->get_all_record('users', array('id' => $this->session->userdata('ADMIN_ID')));
        $this->load->view('my_profile', $data);
    }

}
