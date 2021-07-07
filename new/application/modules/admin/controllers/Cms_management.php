<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Cms_management extends MX_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper(array('url', 'form', 'html', 'text'));
        $this->load->library(array('session', 'form_validation', 'email', 'upload', 'image_lib'));
        $this->load->model(array('common_model', 'custom_model'));
        if ($this->session->userdata('ADMIN_ID') == '') {
            redirect('admin');
        }
    }

    public function contact_request() {
        $data = array();
        $this->db->select('contact_msg.*');
        $this->db->from('contact_msg');
        $this->db->order_by('contact_msg.id', 'DESC');
        $data['query'] = $this->db->get();
        $this->load->view('cms/contact-request', $data);
    }

    public function edit_index() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2'),
                'banner_text_3' => $this->input->post('banner_text_3'),
                'banner_btn_1_text' => $this->input->post('banner_btn_1_text'),
                'banner_btn_1_url' => $this->input->post('banner_btn_1_url'),
                'banner_btn_2_text' => $this->input->post('banner_btn_2_text'),
                'banner_btn_2_url' => $this->input->post('banner_btn_2_url'),
                'service_headind_1' => $this->input->post('service_headind_1'),
                'service_content_1' => $this->input->post('service_content_1'),
                'service_headind_2' => $this->input->post('service_headind_2'),
                'service_content_2' => $this->input->post('service_content_2'),
                'service_headind_3' => $this->input->post('service_headind_3'),
                'service_content_3' => $this->input->post('service_content_3'),
                'service_headind_4' => $this->input->post('service_headind_4'),
                'service_content_4' => $this->input->post('service_content_4'),
                'testimonial_heading' => $this->input->post('testimonial_heading'),
                'testimonial_content' => $this->input->post('testimonial_content'),
                'testimonial_author' => $this->input->post('testimonial_author'),
                'testimonial_btn_text' => $this->input->post('testimonial_btn_text'),
                'testimonial_btn_url' => $this->input->post('testimonial_btn_url'),
                'section_1_heading' => $this->input->post('section_1_heading'),
                'section_1_content' => $this->input->post('section_1_content'),
                'section_1_sub_content' => $this->input->post('section_1_sub_content'),
                'section_1_btn_text' => $this->input->post('section_1_btn_text'),
                'section_1_btn_url' => $this->input->post('section_1_btn_url'),
                'call_now_number' => $this->input->post('call_now_number'),
                'mail_us_email' => $this->input->post('mail_us_email'),
                'section_2_heading' => $this->input->post('section_2_heading'),
                'section_2_content' => $this->input->post('section_2_content'),
                'happy_clients' => $this->input->post('happy_clients'),
                'awards' => $this->input->post('awards'),
                'employees' => $this->input->post('employees'),
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

            if ($_FILES['service_icon_1']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['service_icon_1']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_service_icon_1.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["service_icon_1"]["tmp_name"], $target_file);

                $getData['service_icon_1'] = $file_name;
            }

            if ($_FILES['service_icon_2']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['service_icon_2']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_service_icon_2.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["service_icon_2"]["tmp_name"], $target_file);

                $getData['service_icon_2'] = $file_name;
            }

            if ($_FILES['service_icon_3']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['service_icon_3']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_service_icon_3.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["service_icon_3"]["tmp_name"], $target_file);

                $getData['service_icon_3'] = $file_name;
            }

            if ($_FILES['service_icon_4']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['service_icon_4']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_service_icon_4.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["service_icon_4"]["tmp_name"], $target_file);

                $getData['service_icon_4'] = $file_name;
            }

            if ($_FILES['testimonial_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['testimonial_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_testimonial_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["testimonial_image"]["tmp_name"], $target_file);

                $getData['testimonial_image'] = $file_name;
            }
            if ($_FILES['section_1_big_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_1_big_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_1_big_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_1_big_image"]["tmp_name"], $target_file);

                $getData['section_1_big_image'] = $file_name;
            }
            if ($_FILES['section_2_big_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_2_big_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_2_big_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_2_big_image"]["tmp_name"], $target_file);

                $getData['section_2_big_image'] = $file_name;
            }


            $this->common_model->UpdateRecord($getData, 'cms_home', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_index');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_home', array('id' => '1'));

        $this->load->view('cms/edit-index', $data);
    }

    public function edit_aanbod() {
        $data = array();
        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_heading' => $this->input->post('banner_heading'),
                'banner_text' => $this->input->post('banner_text'),
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

            for ($i = 0; $i < count($_POST['content_heading']); $i++) {
                if ($_FILES['content_image']['name'][$i] != '') {
                    $ext = strtolower(pathinfo($_FILES['content_image']['name'][$i], PATHINFO_EXTENSION));
                    $target_dir = "uploads/cms/";
                    $file_name = time() . '_content_image.' . $ext;
                    $target_file = $target_dir . $file_name;
                    move_uploaded_file($_FILES["content_image"]["tmp_name"][$i], $target_file);

                    $content['content_image'][] = $file_name;
                } else {
                    $content['content_image'][] = $_POST['content_image_old'][$i];
                }
                $content['content_heading'][] = $_POST['content_heading'][$i];
                $content['content_text'][] = $_POST['content_text'][$i];
            }
            $getData['content'] = json_encode($content);

//echo "<pre>";
//print_r($getData);
//            exit();
            $this->common_model->UpdateRecord($getData, 'cms_aanbod', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_aanbod');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_aanbod', array('id' => '1'));

        $this->load->view('cms/edit-aanbod', $data);
    }

    public function edit_referenties() {
        $data = array();
        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_heading' => $this->input->post('banner_heading'),
                'banner_text' => $this->input->post('banner_text'),
                'section_1_heading' => $this->input->post('section_1_heading'),
                'section_1_content' => $this->input->post('section_1_content'),
                'happy_clients' => $this->input->post('happy_clients'),
                'awards' => $this->input->post('awards'),
                'employees' => $this->input->post('employees'),
//                'testimonial_heading' => $this->input->post('testimonial_heading'), 
                'testimonial_content' => $this->input->post('testimonial_content'),
                'testimonial_author' => $this->input->post('testimonial_author'),
                'section_2_heading' => $this->input->post('section_2_heading'),
                'section_2_content' => $this->input->post('section_2_content'),
                'section_3_heading' => $this->input->post('section_3_heading'),
                'section_3_content' => $this->input->post('section_3_content'),
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }
            if ($_FILES['section_1_big_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_1_big_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_1_big_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_1_big_image"]["tmp_name"], $target_file);

                $getData['section_1_big_image'] = $file_name;
            }
            if ($_FILES['section_2_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_2_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_2_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_2_image"]["tmp_name"], $target_file);

                $getData['section_2_image'] = $file_name;
            }
            if ($_FILES['section_3_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_3_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_3_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_3_image"]["tmp_name"], $target_file);

                $getData['section_3_image'] = $file_name;
            }

//echo "<pre>";
//print_r($getData);
//            exit();
            $this->common_model->UpdateRecord($getData, 'cms_referenties', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_referenties');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_referenties', array('id' => '1'));

        $this->load->view('cms/edit-referenties', $data);
    }

    public function edit_bio() {
        $data = array();
        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_heading' => $this->input->post('banner_heading'),
                'banner_text' => $this->input->post('banner_text'),
                'section_1_heading' => $this->input->post('section_1_heading'),
                'section_1_content' => $this->input->post('section_1_content'),
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

            for ($i = 0; $i < count($_POST['content_heading']); $i++) {
                if ($_FILES['content_image']['name'][$i] != '') {
                    $ext = strtolower(pathinfo($_FILES['content_image']['name'][$i], PATHINFO_EXTENSION));
                    $target_dir = "uploads/cms/";
                    $file_name = time() . '_content_image.' . $ext;
                    $target_file = $target_dir . $file_name;
                    move_uploaded_file($_FILES["content_image"]["tmp_name"][$i], $target_file);

                    $content['content_image'][] = $file_name;
                } else {
                    $content['content_image'][] = $_POST['content_image_old'][$i];
                }
                $content['content_heading'][] = $_POST['content_heading'][$i];
                $content['content_text'][] = $_POST['content_text'][$i];
            }
            $getData['content'] = json_encode($content);

//echo "<pre>";
//print_r($getData);
//            exit();
            $this->common_model->UpdateRecord($getData, 'cms_bio', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_bio');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_bio', array('id' => '1'));

        $this->load->view('cms/edit-bio', $data);
    }

    public function edit_missie() {
        $data = array();
        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_heading' => $this->input->post('banner_heading'),
                'banner_text' => $this->input->post('banner_text'),
                'section_1_heading' => $this->input->post('section_1_heading'),
                'section_1_content' => $this->input->post('section_1_content'),
                'section_2_heading' => $this->input->post('section_2_heading'),
                'section_2_content' => $this->input->post('section_2_content'),
                'section_3_heading' => $this->input->post('section_3_heading'),
                'section_3_content' => $this->input->post('section_3_content'),
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }
            if ($_FILES['section_1_big_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_1_big_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_1_big_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_1_big_image"]["tmp_name"], $target_file);

                $getData['section_1_big_image'] = $file_name;
            }
            if ($_FILES['section_2_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_2_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_2_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_2_image"]["tmp_name"], $target_file);

                $getData['section_2_image'] = $file_name;
            }
            if ($_FILES['section_3_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_3_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_3_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_3_image"]["tmp_name"], $target_file);

                $getData['section_3_image'] = $file_name;
            }

//echo "<pre>";
//print_r($getData);
//            exit();
            $this->common_model->UpdateRecord($getData, 'cms_missie', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_missie');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_missie', array('id' => '1'));

        $this->load->view('cms/edit-missie', $data);
    }

    public function edit_contact() {
        $data = array();
        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_heading' => $this->input->post('banner_heading'),
                'banner_text' => $this->input->post('banner_text'),
                'section_1_heading' => $this->input->post('section_1_heading'),
                'section_1_content' => $this->input->post('section_1_content'),
                'section_2_heading' => $this->input->post('section_2_heading'),
                'section_2_content' => $this->input->post('section_2_content'),
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }
            if ($_FILES['section_1_big_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_1_big_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_1_big_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_1_big_image"]["tmp_name"], $target_file);

                $getData['section_1_big_image'] = $file_name;
            }
            if ($_FILES['section_2_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['section_2_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_section_2_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["section_2_image"]["tmp_name"], $target_file);

                $getData['section_2_image'] = $file_name;
            }


//echo "<pre>";
//print_r($getData);
//            exit();
            $this->common_model->UpdateRecord($getData, 'cms_contact', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_contact');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_contact', array('id' => '1'));

        $this->load->view('cms/edit-contact', $data);
    }

    public function manage_menu() {
        $this->db->select('menus.*');
        $this->db->from('menus');
        $this->db->order_by('menus.id', 'DESC');
        $data['query'] = $this->db->get();
        $this->load->view('cms/manage-menu', $data);
    }

    public function all_pages() {
        if ($_POST) {
            $data = array();
            $getData = array(
                'page_name' => $this->input->post("page_name"),
                'page_url' => $this->input->post("page_url"),
            );

            $getData['updated_at'] = date('Y-m-d h:m:s');

            $this->common_model->AddRecord($getData, 'pages');
            $message = '<div class="alert alert-success"><p>Page has been successfully created.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/all_pages/');
            
            
        }
        $this->db->select('pages.*');
        $this->db->from('pages');
        $this->db->order_by('pages.id', 'DESC');
        $data['query'] = $this->db->get();
        $this->load->view('cms/all-pages', $data);
    }

    public function edit_menu() {
        $data = array();
        $menu_id = $this->uri->segment(4);
        if ($_POST) {

            $id = $this->input->post("id");
            $data = array();
            $getData = array(
                'menu_id' => $this->input->post("id"),
                'page_id' => $this->input->post("page_id"),
                'sort' => $this->input->post("sort"),
            );

            $getData['updated_at'] = date('Y-m-d h:m:s');

            $this->common_model->AddRecord($getData, 'page_by_menu');
            $message = '<div class="alert alert-success"><p>Menu has been successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_menu/'.$id);
            
            
        }
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('menus', array('id' => $menu_id));
        $this->db->select('pages.*')->from('pages')->order_by('pages.id', 'DESC');
        $data['pages'] = $this->db->get();
        $this->db->select('page_by_menu.*,pages.page_name,pages.page_url')->from('page_by_menu')->join('pages', 'page_by_menu.page_id=pages.id')->where(array('menu_id' => $menu_id))->order_by('id', 'DESC');
        $data['page_by_menu'] = $this->db->get();
        $this->load->view('cms/edit-menu', $data);
    }

    public function delete_page_from_menu() {
        $id = $this->uri->segment(4);
        $this->common_model->Delete('page_by_menu', $id, 'id');
        $message = '<div class="alert alert-success"><p>Page has been deleted successfully.</p></div>';
        $this->session->set_flashdata('success', $message);
        redirect('admin/cms_management/manage_menu');
    }
    

    public function delete_page() {
        $id = $this->uri->segment(4);
        $this->common_model->Delete('pages', $id, 'id');
        $message = '<div class="alert alert-success"><p>Page has been deleted successfully.</p></div>';
        $this->session->set_flashdata('success', $message);
        redirect('admin/cms_management/all_pages');
    }
    
     public function edit_page() {
        $data = array();
        $id = $this->uri->segment(4);
        if ($_POST) {

            $id = $this->input->post("id");
            $getData = array(
                'page_name' => $this->input->post("page_name"),
                'page_url' => $this->input->post("page_url"),
            );

            $getData['updated_at'] = date('Y-m-d h:m:s');

             $this->common_model->UpdateRecord($getData, 'pages', 'id', $id);
            $message = '<div class="alert alert-success"><p>Page has been successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
           redirect('admin/cms_management/all_pages');
            
            
        }
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('pages', array('id' => $id));
    
      
        $this->load->view('cms/edit-page', $data);
    }
    
    
    public function edit_mijidashboard() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2')
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

           

            $this->common_model->UpdateRecord($getData, 'cms_mijidashboard', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_mijidashboard');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_mijidashboard', array('id' => '1'));

        $this->load->view('cms/edit-mijidashboard', $data);
    }
    
    public function edit_cityproducts() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2')
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

           

            $this->common_model->UpdateRecord($getData, 'cms_cityproducts', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_cityproducts');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_cityproducts', array('id' => '1'));

        $this->load->view('cms/edit-cityproducts', $data);
    }
    
    public function edit_bekers() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2')
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

           

            $this->common_model->UpdateRecord($getData, 'cms_bekers', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_bekers');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_bekers', array('id' => '1'));

        $this->load->view('cms/edit-bekers', $data);
    }
    
    public function edit_vereniging() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2')
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

           

            $this->common_model->UpdateRecord($getData, 'cms_vereniging', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_vereniging');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_vereniging', array('id' => '1'));

        $this->load->view('cms/edit-vereniging', $data);
    }
    
    public function edit_cityevenementen() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2')
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

           

            $this->common_model->UpdateRecord($getData, 'cms_cityevenementen', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_cityevenementen');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_cityevenementen', array('id' => '1'));

        $this->load->view('cms/edit-cityevenementen', $data);
    }
    
    public function edit_city_inbox() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2')
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

           

            $this->common_model->UpdateRecord($getData, 'cms_city_inbox', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_city_inbox');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_city_inbox', array('id' => '1'));

        $this->load->view('cms/edit-city-inbox', $data);
    }
    
    public function edit_products() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2')
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

           

            $this->common_model->UpdateRecord($getData, 'cms_products', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_products');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_products', array('id' => '1'));

        $this->load->view('cms/edit-products', $data);
    }
    
    public function edit_mijievenementen() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2')
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

           

            $this->common_model->UpdateRecord($getData, 'cms_mijievenementen', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_mijievenementen');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_mijievenementen', array('id' => '1'));

        $this->load->view('cms/edit-mijievenementen', $data);
    }
    public function edit_inbox() {
        $data = array();

        if ($_POST) {
            $data = array();
            $getData = array(
                'banner_text_1' => $this->input->post('banner_text_1'),
                'banner_text_2' => $this->input->post('banner_text_2')
            );

            if ($_FILES['banner_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['banner_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/cms/";
                $file_name = time() . '_banner_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["banner_image"]["tmp_name"], $target_file);

                $getData['banner_image'] = $file_name;
            }

           

            $this->common_model->UpdateRecord($getData, 'cms_inbox', 'id', '1');
            $message = '<div class="alert alert-success"><p>Successfully updated.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('admin/cms_management/edit_inbox');
        }

        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_inbox', array('id' => '1'));

        $this->load->view('cms/edit-inbox', $data);
    }


    public function edit_recommendation() {
        if($_POST['action'] == 'submit_data'){

            $varity_count = $this->input->post('varity_count');
            $total_section = $this->input->post('total_section');

            for($i=1;$i<=$varity_count;$i++){
                
                if($_FILES['section_image'.$i]['name'] !=''){
                    $ext = strtolower(pathinfo($_FILES['section_image'.$i]['name'],PATHINFO_EXTENSION));
                    $target_dir = "uploads/cms/";
                    $section_img = date('dm').time().'.'.$ext;
                    $target_file = $target_dir . $section_img;
                    move_uploaded_file($_FILES["section_image".$i]["tmp_name"], $target_file);
                    
                    $recommendation_data = array(
                        'section_title'=>$this->input->post('section_title'.$i),
                        'section_content'=>$this->input->post('section_content'.$i),
                        'page_title'=>$this->input->post('page_title'),
                        'section_img'=>$section_img,
                        'create_at'=>date("Y/m/d H:i:s"),
                        'modify_at'=>date("Y/m/d H:i:s")
                    );
                   
                    $this->common_model->AddRecord($recommendation_data,'recommendation');
                }
                
            }

             $this->session->set_flashdata('success', 'New Add successfully');

        }

        if($_POST['total_section'] > 0){
            for($i=1;$i<=$total_section;$i++){

               
                if($_FILES['change_section_image'.$i]['name'] !=''){
                    $ext = strtolower(pathinfo($_FILES['change_section_image'.$i]['name'],PATHINFO_EXTENSION));
                    $target_dir = "uploads/cms/";
                    $section_img = date('dm').time().'.'.$ext;
                    $target_file = $target_dir . $section_img;
                    move_uploaded_file($_FILES["change_section_image".$i]["tmp_name"], $target_file);
                    unlink('uploads/cms/'.$this->input->post('old_section_image'.$i));
                }
                else{
                     $section_img =   $this->input->post('old_section_image'.$i) ;
                }

                $recommendation_data = array(
                    'section_title'=>$this->input->post('old_section_title'.$i),
                    'section_content'=>$this->input->post('old_section_content'.$i),
                    'section_img'=>$section_img,
                    'page_title'=>$this->input->post('page_title'),
                    'modify_at'=>date("Y/m/d H:i:s")
                );
                $id = $this->input->post('recommendation_id'.$i);
                 $this->common_model->UpdateRecord($recommendation_data,'recommendation','id',$id);
            }
             $this->session->set_flashdata('success', 'update successfully');
        }

        $data['recommendation_data'] = $this->common_model->GetAll('recommendation')->result()  ;
        $this->load->view('cms/edit-recommendation', $data);
       
    }
}
