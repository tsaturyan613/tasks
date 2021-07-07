<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends MX_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper(array('url', 'form', 'html', 'text', 'file', 'gen_helper'));
        $this->load->library(array('session', 'form_validation', 'email', 'upload', 'image_lib', 'google', 'facebook'));
        $this->load->model(array('common_model', 'custom_model'));
    }

    public function index() {
        $data = array();
        $data['active_home'] = 'active';
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_home', array('id' => '1'));
        $this->load->view('index', $data);
    }

    public function login() {
        if ($this->session->userdata('USER_ID') != '') {
            if ($this->session->userdata('USER_TYPE') == 'City') {
                redirect('user/mijidashboard');
            } else if ($this->session->userdata('USER_TYPE') == 'Association') {
                redirect('user/products');
            }
        }
        if ($_POST) {
//            print_r($_POST);exit();
            $email = $this->input->post('email');
            $password = md5($this->input->post('pswd'));
            $this->db->select('*');
            $this->db->from('users');
            $this->db->where(array('email' => $email, 'password' => $password, 'usertype !=' => 'Admin'));
            $query = $this->db->get();
//            echo $this->db->last_query();
//            exit();
            $row = $query->row();
            if ($query->num_rows() > 0) {
                if ($row->u_status == 'Y') {
                    // echo "<pre>";
                    // print_r($row);
                    // exit();
                    $this->session->set_userdata('EMAIL', $row->email);
                    $this->session->set_userdata('USER_ID', $row->u_id);
                    $this->session->set_userdata('USER_POSTCODE', $row->post_code);
                    $this->session->set_userdata('USER_TYPE', $row->usertype);
                    $this->session->set_userdata('USER_IMAGE', $row->u_image);
                    $this->session->set_userdata('USER_NAME', $row->f_name);
                    if ($row->usertype == 'City') {
                        $this->session->set_userdata('USER_POST_CODE', $row->post_code);
                        $this->session->set_userdata('USER_CITY_NAME', $row->city_name);
                        redirect('user/mijidashboard');
                    } else if ($row->usertype == 'Super_City') {
                        $this->session->set_userdata('USER_POST_CODE', $row->post_code);
                        $this->session->set_userdata('USER_CITY_NAME', $row->city_name);
                        redirect('user/mijidashboard');
                    } else if ($row->usertype == 'Association') {
                        $this->db->select('association')->from('verenigings')->where(array('v_id' => $row->association));
                        $query2 = $this->db->get();
                        $row2 = $query2->row();

                        $this->session->set_userdata('USER_TYPE_NAME', $row2->association);
                        redirect('user/products');
                    }
                } else {
                    $message = '<div class="alert alert-danger">Your account is inactive!!</div>';
                    $this->session->set_flashdata('success', $message);
                    redirect('/login');
                }
            } else {
                $message = '<div class="alert alert-danger">Invalid username or password!!</div>';
                $this->session->set_flashdata('success', $message);
                redirect('/login');
            }
        }
        $data = array();
        $this->load->view('login', $data);
    }

    public function forgot_password() {
        $this->load->view('forgot_password');
    }

    public function forgot_password_submit() {
        $data = array();
        if ($_POST) {
            if ($_POST['chk_type'] == 'email') {
                $email = $this->input->post('email');
                $this->db->select('*');
                $this->db->from('users');
                $this->db->where(array('email' => $email, 'usertype !=' => 'Admin'));
                $query = $this->db->get();
                $row = $query->row();
                if ($query->num_rows() > 0) {
                    if ($row->u_status == 'Y') {

                        $this->common_model->Delete('password_otp', $email, 'email');
                        $otp = rand(111, 54845);
                        $getData = array(
                            'otp' => $otp,
                            'email' => $email
                        );

                        $this->common_model->AddRecord($getData, 'password_otp');

//                        $data['to'] = 'gsr.dev.15@gmail.com';
                        $data['to'] = $email;
                        $data['subject'] = 'Forgot password';
                        $data['email_template'] = 'forgot-password';
                        $data['otp'] = $otp;
                        $result = send_mail($data);
                        if ($result) {
                            echo 'sent';
                        } else {
                            echo 'not_sent';
                        }
                    } else {
                        echo 'inactive';
                    }
                } else {
                    echo 'not';
                }
            }

            if ($_POST['chk_type'] == 'otp') {
                $otp = $this->input->post('otp');
                $password = md5($this->input->post('password'));
                $email = $this->input->post('email');

                $updateData['password'] = $password;

                if ($this->common_model->UpdateRecord($updateData, 'users', 'email', $email)) {
                    echo 'ok';
                } else {
                    echo 'no';
                }
            }
        }
    }

    public function bhuren() {
        $data = array();
        $this->load->view('bhuren', $data);
    }

    public function gemeenten() {
        $data = array();
        $this->load->view('gemeenten', $data);
    }

    public function profiwashvoorverenigingen() {
        $data = array();
        $this->db->select('users.*')->from('users')->where(array('usertype' => 'City'))->order_by('users.u_id', 'DESC');
        $data['cities'] = $this->db->get();
        $this->load->view('profiwashvoorverenigingen', $data);
    }

    public function aanbeve() {
        $data = array();
        $this->load->view('aanbeve', $data);
    }

    public function mijn() {
        $data = array();
        $this->load->view('mijn', $data);
    }

    public function serviceplatform() {
        $data = array();
        $this->load->view('serviceplatform', $data);
    }

    public function getVerenigingByPostcode() {
        $data = array();
        $association = $this->custom_model->getVerenigingByPostcode($_POST['postcode']);
        $html = '';
        foreach ($association as $dd) {
            //echo $dd->v_id; 
            $query = $this->db->select('users.*')
                    ->from('users')
                    ->where(array('association' => $dd->v_id, 'u_status' => 'Y'))
                    ->get();
            //echo $this->db->last_query(); 
            $chkUserExist = $query->num_rows();

            // var_dump($chkUserExist);

            if ($chkUserExist == 0) {
                $html .= '<option  value="' . $dd->v_id . '">' . $dd->association . '</option>';
            } else {
                $html .= '<option style="color:gray" disabled value="' . $dd->v_id . '">' . $dd->association . '</option>';
            }
        }
        $html .= '<option value="0">Other</option>';
        echo $html;
    }

    public function getPostCode() {

        $data = array();
        $post_code = $this->custom_model->getPostcodeByCity($_POST['city_name']);
        $html = '';
        foreach ($post_code as $dd) {
            $html .= '<option value="' . $dd->post_code . '">' . $dd->post_code . '</option>';
        }

        echo $html;
    }

    public function aanbod() {
        $data = array();
        $data['active_aanbod'] = 'active';
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_aanbod', array('id' => '1'));
        $this->load->view('aanbod', $data);
    }

    public function bio() {
        $data = array();
        $data['active_bio'] = 'active';
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_bio', array('id' => '1'));
        $this->load->view('bio', $data);
    }

    public function referenties() {
        $data = array();
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_referenties', array('id' => '1'));
        $this->load->view('referenties', $data);
    }

    public function missie() {
        $data = array();
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_missie', array('id' => '1'));
        $this->load->view('missie', $data);
    }

    public function contact() {
        $data = array();
        if ($_POST) {
            $getData = array(
                'name' => $this->input->post('name'),
                'email' => $this->input->post('email'),
                'phone' => $this->input->post('phone'),
                'tools' => json_encode($_POST['tools']),
                'msg' => $this->input->post('msg'),
            );

            $this->common_model->AddRecord($getData, 'contact_msg');
            $message = '<div class="alert alert-success"><p>Successfully added.</p></div>';
            $this->session->set_flashdata('success', $message);
            redirect('/contact');
        }
        $data['active_contact'] = 'active';
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('cms_contact', array('id' => '1'));
        $this->load->view('contact_v2', $data);
    }

    public function subscribe() {

        $arr['email'] = $_POST['email'];
        $arr['browser'] = $_SERVER['HTTP_USER_AGENT'];
        $arr['ip'] = $_SERVER['REMOTE_ADDR'];
        $arr['time'] = time();
        $query = $this->db->select('subscribed.*')
                ->from('subscribed')
                ->where(array('email' => $arr['email']))
                ->get();
        //echo $this->db->last_query(); 
        $chkUserExist = $query->num_rows();

        if ($chkUserExist == 0) {
            $this->common_model->AddRecord($arr, 'subscribed');
            echo "You Have Successfully Subscribed";
        } else {
            echo "You Have already Subscribed";
        }
        //die;
    }

    public function allProductsGuest() {
        $data = array();

        if ($_POST['set_type'] == 'postcode') {
            $this->session->set_userdata('postcode', $this->input->post('postcode'));
        }
        $data['cities'] = $this->common_model->RetriveRecordByWhere('users', array('usertype' => 'City', 'u_status' => 'Y'));
        $data['query'] = $this->common_model->RetriveRecordByWhere('products', array('p_status' => 'Y'));
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('order_page_settings', array('id' => '1'));

        $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_products', array('id' => '1'));
        $this->load->view('home/all-products', $data);
    }

    public function getProductPriceDetailsByPostcode() {
        $this->db->select('product_price_by_city.*');
        $this->db->from('product_price_by_city');
        $this->db->join('users', 'users.super_city_id=product_price_by_city.super_city_id');
        $this->db->where('users.post_code', $this->session->userdata('postcode'));
        $this->db->where('product_price_by_city.p_id', $_POST['p_id']);
        $this->db->where('product_price_by_city.min_qty <= ', $_POST['qty']);
        $this->db->order_by('product_price_by_city.id ', 'desc');
        $result = $this->db->get()->row_array();
        if (count($result) > 0) {
            $getData = array(
                'box_prc' => number_format($result['box_prc'], 2, ',', ''),
                'wash_prc' => number_format($result['wash_prc'], 2, ',', ''),
                'loss_prc' => number_format($result['loss_prc'], 2, ',', ''),
            );
        } else {
            $this->db->select('*');
            $this->db->from('product_price_by_city');
            $this->db->where('p_id', $_POST['p_id']);
            $this->db->where('super_city_id', 0);
            $this->db->where('min_qty <= ', $_POST['qty']);
            $this->db->order_by('min_qty', 'desc');
            $result2 = $this->db->get()->row_array();
//             echo $this->db->last_query();
            $getData = array(
                'box_prc' => number_format($result2['box_prc'], 2, ',', ''),
                'wash_prc' => number_format($result2['wash_prc'], 2, ',', ''),
                'loss_prc' => number_format($result2['loss_prc'], 2, ',', ''),
            );
        }
        echo json_encode($getData);
    }

    public function populateCart() {
        $data = array();
        $data['val'] = $_POST;

        // echo '<pre>'; print_r($data); die;

        $this->load->view('home/cart-section', $data);
    }

}
