<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Product_management extends MX_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper(array('url', 'form', 'html', 'text', 'common_helper'));
        $this->load->library(array('session', 'form_validation', 'email', 'upload', 'image_lib'));
        $this->load->model(array('common_model', 'custom_model'));
        if ($this->session->userdata('ADMIN_ID') == '') {
            redirect('admin');
        }
    }

    public function all_product() {
        $this->db->select('products.*');
        $this->db->from('products');
        $this->db->order_by('products.p_id', 'DESC');
        $data['query'] = $this->db->get();
        $this->load->view('product/all-product', $data);
    }

    public function add_product() {
        $data = array();
        $data['all_super_cities'] = $this->common_model->RetriveRecordByWhere('users', array('usertype' => 'Super_City'));
        $this->load->view('product/add-product', $data);
    }

    public function save_product() {

        $data = array();
        $getData = array(
            'name' => $this->input->post('name'),
            'material' => $this->input->post('material'),
            'qty' => $this->input->post('qty'),
//            'box_prc' => $this->input->post('box_prc'),
//            'loss_prc' => $this->input->post('loss_prc'),
//            'wash_prc' => $this->input->post('wash_prc'),
            'sort_desc' => $this->input->post('sort_desc'),
            'p_status' => 'Y',
        );


        if ($_FILES['image']['name'] != '') {
            $ext = strtolower(pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION));
            $target_dir = "uploads/product/";
            $file_name = time() . '_product_image.' . $ext;
            $target_file = $target_dir . $file_name;
            move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);

            $getData['image'] = $file_name;
        }


        $this->common_model->AddRecord($getData, 'products');
        $insert_id = $this->db->insert_id();
        $i = 0;
        foreach ($_POST['super_city_id'] as $super_city_id) {
            $priceData = array(
                'p_id' => $insert_id,
                'super_city_id' => $super_city_id,
                'min_qty' => $_POST['min_qty'][$i],
                'box_prc' => $_POST['box_prc'][$i],
                'loss_prc' => $_POST['loss_prc'][$i],
                'wash_prc' => $_POST['wash_prc'][$i],
                'status' => 'Y',
            );
            $this->common_model->AddRecord($priceData, 'product_price_by_city');

            $i++;
        }


        $message = '<div class="alert alert-success"><p>Products has been successfully added.</p></div>';
        $this->session->set_flashdata('success', $message);
        redirect('admin/product_management/all_product');
    }

    public function edit_product() {
        $data = array();
        $id = $this->uri->segment(4);
        $data['all_super_cities'] = $this->common_model->RetriveRecordByWhere('users', array('usertype' => 'Super_City'));
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('products', array('p_id' => $id));
        $this->load->view('product/edit-product', $data);
    }

    public function update_product() {
//        print_r($_POST);exit();
        $id = $this->input->post("p_id");
        $data = array();
        $getData = array(
            'name' => $this->input->post('name'),
            'material' => $this->input->post('material'),
            'qty' => $this->input->post('qty'),
//            'box_prc' => $this->input->post('box_prc'),
//            'loss_prc' => $this->input->post('loss_prc'),
//            'wash_prc' => $this->input->post('wash_prc'),
            'sort_desc' => $this->input->post('sort_desc'),
            'p_status' => 'Y',
        );
        if ($_FILES['image']['name'] != '') {
            $ext = strtolower(pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION));
            $target_dir = "uploads/product/";
            $file_name = time() . '_product_image.' . $ext;
            $target_file = $target_dir . $file_name;
            move_uploaded_file($_FILES["image"]["tmp_name"], $target_file);
            $getData['image'] = $file_name;
        } else {
            $getData['image'] = $this->input->post("old_image");
        }

        $getData['updated_at'] = date('Y-m-d h:m:s');

        $i = 0;

        foreach ($_POST['super_city_id'] as $super_city_id) {
            $priceData = array(
                'p_id' => $id,
                'super_city_id' => $super_city_id,
                'min_qty' => $_POST['min_qty'][$i],
                'box_prc' => $_POST['box_prc'][$i],
                'loss_prc' => $_POST['loss_prc'][$i],
                'wash_prc' => $_POST['wash_prc'][$i],
            );
            if ($_POST['field_id'][$i] && $_POST['field_id'][$i] != '') {
                $this->common_model->UpdateRecord($priceData, 'product_price_by_city', 'id', $_POST['field_id'][$i]);
            } else {
                $this->common_model->AddRecord($priceData, 'product_price_by_city');
            }


            $i++;
        }




        $this->common_model->UpdateRecord($getData, 'products', 'p_id', $id);
        $message = '<div class="alert alert-success"><p>Products has been successfully updated.</p></div>';
        $this->session->set_flashdata('success', $message);
        redirect('admin/product_management/all_product');
    }

    public function delete_product() {
        $id = $this->uri->segment(4);
        $this->common_model->Delete('products', $id, 'p_id');
        $message = '<div class="alert alert-success"><p>Products has been deleted successfully.</p></div>';
        $this->session->set_flashdata('success', $message);
        redirect('admin/product_management/all_product');
    }

    public function change_product_status() {

        $data = array();
        $id = $this->input->post('id');
        $value = $this->input->post('val');
        $save_data['p_status'] = $value;
        $this->common_model->UpdateRecord($save_data, 'products', 'p_id', $id);
        echo 'ok';
    }

    public function order_page_product() {
        $data = array();
        if ($_POST) {
            $data = array();
            $getData = array(
                'collection_by_profiwash_at_the_event' => $this->input->post('collection_by_profiwash_at_the_event'),
                'return_to_address' => $this->input->post('return_to_address'),
                'collection_by_profiwash_at_collection_point ' => $this->input->post('collection_by_profiwash_at_collection_point'),
                'return_via_collection_point' => $this->input->post('return_via_collection_point'),
                'delivery_to_profiwash' => $this->input->post('delivery_to_profiwash'),
                'pick_up_at_profiwash' => $this->input->post('pick_up_at_profiwash'),
                'terms_and_con' => json_encode($_POST['terms_and_con']),
            );

            $getData['updated_at'] = date('Y-m-d h:m:s');

            $this->common_model->UpdateRecord($getData, 'order_page_settings', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/product_management/order_page_product');
        }
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('order_page_settings', array('id' => '1'));
        $this->load->view('product/order-page-settings', $data);
    }

    public function getAddMorePrcFrom() {
        $this->load->view('product/all-more-prc-frm');
    }

    public function removePrcFrom() {
        $main_id = $_POST['main_id'];
        $this->common_model->Delete('product_price_by_city', $main_id, 'id');
        echo 'ok';
    }

}
