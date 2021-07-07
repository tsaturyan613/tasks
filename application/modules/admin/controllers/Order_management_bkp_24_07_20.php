<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Order_management extends MX_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper(array('url', 'form', 'html', 'text','gen_helper'));
        $this->load->library(array('session', 'form_validation', 'email', 'upload', 'image_lib'));
        $this->load->model(array('common_model', 'custom_model'));
        if ($this->session->userdata('ADMIN_ID') == '') {
            redirect('admin');
        }
    }

    public function all_event() {
        $this->db->select('*','u.city_name');
        $this->db->from('orders');
        $this->db->join('users as u', 'orders.user_id = u.u_id');
        //$this->db->where(array('orders.user_id' => $this->session->userdata('USER_ID')));
        $this->db->where(array());
        $this->db->order_by('id','desc');
        $query = $this->db->get();
        $data['query'] = $query;
        $this->load->view('event/all-event', $data);
    }

    public function edit_event() {
        $data = array();
        $id = $this->uri->segment(4);
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('orders', array('id' => $id));

        $this->db->select('*,order_items.used_cups as order_items_used_cups,order_items.lost_cup as order_items_lost_cup');
        $this->db->from('order_items');
        $this->db->join('products', 'order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $data['ord_items'] = $query;

        $this->load->view('event/edit-event', $data);
    }

    public function update_event() {
        

        $id = $this->input->post("order_id");
        $userInfo = $this->db->select('*')
                                ->from('orders')
                                ->where(array('orders.id' => $id))
                                ->get()
                                ->row();
        //echo $userInfo->user_id; die;                     
        $data = array();
        $getData = array(
            'event_date' => $this->input->post('event_date'),
            'event_name' => $this->input->post('event_name'),
            'number_of_visitor' => $this->input->post('number_of_visitor'),
            'cups_per_visitor' => $this->input->post('cups_per_visitor'),
            'invoice_created_by_admin' => 1,
//            'used_cups' => $this->input->post('used_cups'),
//            'lost_cup' => $this->input->post('lost_cup'),
//            'wash_prc' => $this->input->post('wash_prc'),
//            'final_cost' => $this->input->post('final_cost'),
        );
//        print_r($_POST['item_id']);
//        echo count($_POST['used_cups']);
        for($i=0;$i<count($_POST['used_cups']);$i++){
            $getItemData = array(
            'used_cups' => $_POST['used_cups'][$i],
            'lost_cup' => $_POST['lost_cup'][$i],
        );
        $this->common_model->UpdateRecord($getItemData, 'order_items', 'id', $_POST['item_id'][$i]);
        
        }
//        exit();   
        $this->common_model->UpdateRecord($getData, 'orders', 'id', $id);
        $message = '<div class="alert alert-success"><p>Orders has been successfully updated.</p></div>';


        $msg='Hi, Invoice Generated for Your event [ ID: '.$id.' ]  By Admin.';
        $inbox_msg = array(
                'to_u_id' => $userInfo->user_id,            
                'created_u_id' => '1',
                'created_by' => 'Admin',
                'message' => $msg,
            );
        $this->common_model->AddRecord($inbox_msg, 'inbox');

        $userDetails = $this->db->select('*')
                                ->from('users')
                                ->where(array('users.u_id' => $userInfo->user_id))
                                ->get()
                                ->row();

        $data['to'] = $userDetails->email;
        $data['dear_name'] = $userDetails->f_name;
      $data['subject'] = 'Uw factuur voor bestelling'. $id .'is beschikbaar in uw account';
        $data['email_template'] = 'invoice';
        $data['ordernumber'] = $id;
        $data['url'] = '(Add url to dashboard admin )';

        $result = send_mail($data);



        $this->session->set_flashdata('success', $message);
        redirect('admin/order_management/all_event');
    }

    public function delete_product() {
        $id = $this->uri->segment(4);
        $this->common_model->Delete('products', $id, 'p_id');
        $message = '<div class="alert alert-success"><p>Products has been deleted successfully.</p></div>';
        $this->session->set_flashdata('success', $message);
        redirect('admin/product_management/all_product');
    }

    public function change_event_status() {

        $data = array();
        $id = $this->input->post('id');
        $to_u_id = $this->input->post('to_u_id'); 
        $value = $this->input->post('val');
        $save_data['order_status'] = $value;
        $this->common_model->UpdateRecord($save_data, 'orders', 'id', $id);
        if($value=='Y'){
        $msg='Hi, Your requested event [ ID: '.$id.' ] is Ativated.';
        $userDetails = $this->db->select('*')
                                ->from('users')
                                ->where(array('users.u_id' => $to_u_id))
                                ->get()
                                ->row();

        $data['to'] = $userDetails->email;
        $data['dear_name'] = $userDetails->f_name;
        $data['subject'] = 'Uw bestelling'. $id. 'is goedgekeurd door Durafest';
        $data['email_template'] = 'order-confirmation';
        $data['ordernumber'] = $id;
        //$data['url'] = '(Add url to dashboard admin )';

        $data['url'] = ' ';

        $result = send_mail($data);

        }else{
            $msg='Hi, Your requested event [ ID: '.$id.' ] is Inacive'.'.';
        }
        $inbox_msg = array(
                'to_u_id' => $to_u_id,            
                'created_u_id' => '1',
                'created_by' => 'Admin',
                'message' => $msg,
            );
        $this->common_model->AddRecord($inbox_msg, 'inbox');

        
        echo 'ok222';
    }
    
    public function all_wash_order() {
        $this->db->select('*');
        $this->db->from('wash_order');
        $this->db->where(array());
        $this->db->order_by('id','desc');
        $query = $this->db->get();
        $data['query'] = $query;
        $this->load->view('event/all-wash-order', $data);
    }

   public function invoice() {
        $data = array();
        $id = $this->uri->segment(4);
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('orders', array('id' => $id));

        $this->db->select('*');
        $this->db->from('order_items');
        $this->db->join('products', 'order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $data['ord_items'] = $query;
        $this->load->view('event/invoice', $data);
    }

}
