<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class User extends MX_Controller {

    public function __construct() { 
        //echo "1"; die; 
        parent::__construct();
        $this->load->helper(array('url', 'form', 'html', 'text', 'file', 'gen_helper', 'common_helper'));
        $this->load->library(array('session', 'form_validation', 'email', 'upload', 'image_lib', 'google', 'facebook'));
        $this->load->model(array('common_model', 'custom_model', 'user_model'));
    }

    public function sucess() {
        $data = array(); 
        $this->load->view('user/sucess', $data);
    }

    public function sucess_intermediate() {
        $data = array();
        $this->load->view('user/sucess_intermediate', $data);
    }

    public function inbox() {
        //echo $this->session->userdata('USER_ID'); die;
        if (empty($this->session->userdata('USER_ID'))) {
            redirect('/login');
        }
        $data = array();
        $data['active_inbox'] = 'active';
        $this->db->select('*');
        $this->db->from('inbox');
        $this->db->where(array('inbox.to_u_id' => $this->session->userdata('USER_ID')));
        $this->db->order_by("id", "asc");
        $query = $this->db->get();
        //echo $this->db->last_query(); die;
        $data['query'] = $query;
        $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_inbox', array('id' => '1'));
        $this->load->view('user/inbox', $data);
    }

    public function cityInbox() {
        //echo "111"; die;
        if (empty($this->session->userdata('USER_ID'))) {
            redirect('/login');
        }
        $data['active_cityinbox'] = 'active';


        $data = array();
        $this->db->select('*');
        $this->db->from('verenigings');
        if ($this->session->userdata('USER_TYPE') == 'Super_City') {
            
        } else {
            $this->db->where(array('verenigings.post_code' => $this->session->userdata('USER_POST_CODE')));
        }

        //echo '<pre>'. print_r($this->session->userdata()); die;

        $query = $this->db->get();
        //echo $this->db->last_query(); die;
        $data['query'] = $query;

        $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_city_inbox', array('id' => '1'));
        $this->load->view('user/city-inbox', $data);
    }

    public function invoice() {
        $data = array();
        $this->load->view('user/invoice', $data);
    }

    public function aanbeve() {
        $data['recommendation_data'] = $this->common_model->GetAll('recommendation')->result()  ;
        $this->load->view('user/aanbeve', $data);
    }

    public function bekers() {
        $data = array();
        $data['active_bekers'] = 'active';
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('order_page_settings', array('id' => '1'));
        $data['query'] = $this->common_model->RetriveRecordByWhere('products', array('p_status' => 'Y'));
        $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_bekers', array('id' => '1'));
        $this->load->view('user/bekers', $data);
    }

    public function mijidashboard() {
        if (empty($this->session->userdata('USER_ID'))) {
            redirect('/login');
        }
//        echo "<pre>";
        $data = array();

        if ($this->session->userdata('USER_TYPE') == 'Super_City') {
// echo  $this->session->userdata('USER_ID');
            $this->db->select('orders.*,orders.id as order_id,users.*,u_city.super_city_id as main_super_city_id');
            $this->db->from('orders');
            $this->db->join('users', 'users.u_id=orders.user_id');
            $this->db->join('verenigings', 'users.association=verenigings.v_id','left');
            $this->db->join('users as u_city', 'u_city.u_id=users.city_id','left');
//            $this->db->where(array('users.usertype' => 'Association', 'orders.invoice_created_by_admin' => '1'));
//           $this->db->where(array('users.usertype' => 'Association', 'orders.invoice_created_by_admin' => '1', 'users.super_city_id' => $this->session->userdata('USER_ID')));
             $this->db->where(array('users.usertype' => 'Association', 'orders.invoice_created_by_admin' => '1', 'u_city.super_city_id' => $this->session->userdata('USER_ID')));
            $all_order = $this->db->get()->result();
            $data['all_order'] = $all_order;
//            echo "<pre>";
//print_r($all_order);
//            echo "</pre>";
//            echo $this->db->last_query();
            $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_mijidashboard', array('id' => '1'));
            $this->load->view('user/mijidashboard_v2', $data);
        } else {
            $this->db->select('orders.*,orders.id as order_id,users.*');
            $this->db->from('orders');
            $this->db->join('users', 'users.u_id=orders.user_id');
            $this->db->join('verenigings', 'users.association=verenigings.v_id');
            $this->db->where(array('users.usertype' => 'Association', 'orders.invoice_created_by_admin' => '1', 'users.city_id' => $this->session->userdata('USER_ID')));
            $all_order = $this->db->get()->result();
            $data['all_order'] = $all_order;
            $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_mijidashboard', array('id' => '1'));
            $this->load->view('user/mijidashboard_v3', $data);
        }
    }

    public function mijidashboard_old() {
        if (empty($this->session->userdata('USER_ID'))) {
            redirect('/login');
        }
        $data = array();
        $association_name = array();
        $data['active_dashboard'] = 'active';
        $userDetails = $this->db->select('*')->from('users')->where(array('users.u_id' => $this->session->userdata('USER_ID')))->get();
        $rowUserDetails = $userDetails->row();


        $data['cityUserDetails'] = $rowUserDetails;


        $this->db->select('*');
        $this->db->from('users');
        if ($this->session->userdata('USER_TYPE') == 'Super_City') {
            $this->db->where(array('usertype' => 'Association'));
        } else {

            $this->db->where(array('users.post_code' => $rowUserDetails->post_code, 'usertype' => 'Association'));
        }
        $all_association = $this->db->get();
        $data['all_association'] = $all_association;

        foreach ($all_association->result() as $row) {
            $this->db->select('orders.*,count(orders.id) as tot_order_count');
            $this->db->from('orders');
            $this->db->select_sum('orders.used_cups');
            $this->db->select_sum('orders.lost_cup');
            $this->db->select_sum('orders.final_cost');
            $this->db->group_by('orders.user_id');
            if ($this->session->userdata('USER_TYPE') == 'Super_City') {
                $this->db->where(array('orders.order_status' => 'Y'));
                $all_order[0] = $this->db->get();
            } else {
                $this->db->where(array('orders.user_id' => $row->u_id, 'orders.order_status' => 'Y'));
                $all_order[] = $this->db->get();
                array_push($association_name, $row->u_id);
            }
//            $all_order[] = $this->db->get();
        }
        //echo $this->db->last_query(); die;
        /* echo "<pre>";
          print_r($association_name);
          echo "</pre>";
          exit(); */
        $data['all_order'] = $all_order;
        $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_mijidashboard', array('id' => '1'));
        $this->load->view('user/mijidashboard', $data);
    }

    public function vereniging() {
        if (empty($this->session->userdata('USER_ID'))) {
            redirect('/login');
        }
        $data = array();
        $data['active_vereniging'] = 'active';
        $data = array();

        if ($this->session->userdata('USER_TYPE') == 'Super_City') {
            $this->db->select('users.*,verenigings.association as association_name')->from('users')->join('verenigings', 'users.association=verenigings.v_id')->where(array('users.usertype' => 'Association', 'users.city_id !=' => ''))->order_by('users.u_id', 'DESC');
        } else {
            /* $this->db->select('users.*,verenigings.association as association_name')->from('users')->join('verenigings', 'users.association=verenigings.v_id')->where(array('users.usertype' => 'Association', 'users.city_id' => $this->session->userdata('USER_ID')))->order_by('users.u_id', 'DESC'); */

            $this->db->select('users.street as street,users.number as number,users.phone as phone,users.email as email,verenigings.association as association_name,verenigings.post_code as post_code')->from('verenigings')->join('users', 'verenigings.v_id=users.association', 'left')->where(array('verenigings.city_id' => $this->session->userdata('USER_ID')))->order_by('verenigings.v_id', 'DESC');

            /* SELECT `users`.*, `verenigings`.`association` as `association_name` FROM `verenigings` LEFT JOIN `users` ON `verenigings`.`v_id` = `users`.`association` WHERE  `verenigings`.`city_id` = '4' ORDER BY `verenigings`.`v_id` DESC */
        }
        $data['query'] = $this->db->get();
        //echo '<pre>'; print_r($data); die; 
//echo $this->db->last_query(); die;

        $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_vereniging', array('id' => '1'));
        $this->load->view('user/vereniging', $data);
    }

    public function registerGemeenteen() {
        $data = array();
        $getData = array(
            'city_name' => $this->input->post('city_name'),
            'post_code' => $this->input->post('post_code'),
            'street' => $this->input->post('street'),
            'number' => $this->input->post('number'),
            'email' => $this->input->post('login_email'),
            'password' => md5($this->input->post('login_password')),
            'added_by' => 'City',
            'usertype' => 'City',
        );


        $getContact['Voornaam'] = $_POST['Voornaam'];
        $getContact['Naam'] = $_POST['Naam'];
        $getContact['Dienst'] = $_POST['Dienst'];
        $getContact['Functie'] = $_POST['Functie'];
        $getContact['Telefoon'] = $_POST['Telefoon'];
        $getContact['GSM'] = $_POST['GSM'];
        $getContact['Emailadres'] = $_POST['Emailadres'];

        $getData['contact_details'] = json_encode($getContact);

        if ($this->user_model->registerGemeenteen($getData, 'users')) {
            redirect('user/sucess');
        } else {
            redirect('gemeenten');
        }
    }

    public function registerVerenigingen() {

        $data = array();
        $getData = array(
            'city_id' => $this->input->post('city_id'),
            'city_name' => $this->input->post('city_name'),
            'post_code' => $this->input->post('postcode'),
            'street' => $this->input->post('street'),
            'number' => $this->input->post('number'),
            'email' => $this->input->post('login_email'),
            'password' => md5($this->input->post('login_password')),
            'added_by' => 'Association',
            'usertype' => 'Association',
            'f_name' => $this->input->post('f_name'),
            'name' => $this->input->post('name'),
            'phone' => $this->input->post('phone'),
            'gsm' => $this->input->post('gsm'),
            'contact_email' => $this->input->post('email'),
        );

        if ($this->input->post('association') == 0) {
            $dd['association'] = $this->input->post('association_add');
            $dd['city_id'] = $this->input->post('city_id');
            $dd['post_code'] = $this->input->post('postcode');
            $dd['created_by'] = 'Association';
            $dd['v_status'] = 'Y';

            $this->common_model->AddRecord($dd, 'verenigings');
            $lstId = $this->db->insert_id();
            $getData['association'] = $lstId;

            $getData['u_status'] = 'Y';



            $cityDetails = $this->db->select('*')->from('users')->where(array('users.u_id' => $this->input->post('city_id')))->get()->row();


            $data['to'] = $cityDetails->email;
            $data['subject'] = $this->input->post('association_add') . ' wacht op goedkeuring.';
            $data['email_template'] = 'new-account-request';

            $data['dear_name'] = $cityDetails->city_name;
            $data['name_association'] = $this->input->post('association_add');
            $data['name_contact'] = $this->input->post('name');
            $data['email_association'] = $this->input->post('email');
            $data['phone_association'] = $this->input->post('phone');
            $result = send_mail($data);
        }


        if ($this->user_model->registerVerenigingen($getData)) {
### in mail association name ######
            $associationDetails = $this->db->select('*')->from('verenigings')->where(array('verenigings.v_id' => $this->input->post('association')))->get()->row();
            $association_nam = $associationDetails->association;
### in mail association name ######
            $data['to'] = $this->input->post('email');
            $data['subject'] = 'Welkom bij Durafest' . $association_nam;
            $data['email_template'] = 'new-account';
            $data['dear_name'] = $association_nam;
            $data['url'] = base_url() . 'login';

            $result = send_mail($data);


//            if ($this->input->post('association') != 0) {
                $this->db->select('*');
                $this->db->from('users');
                $this->db->where(array('u_id' => $this->db->insert_id()));
                $query = $this->db->get();
                $row = $query->row();
                if ($query->num_rows() > 0) {
                    $this->session->set_userdata('EMAIL', $row->email);
                    $this->session->set_userdata('USER_ID', $row->u_id);
                    $this->session->set_userdata('USER_TYPE', $row->usertype);
                    $this->session->set_userdata('USER_IMAGE', $row->u_image);


                    $this->db->select('association')->from('verenigings')->where(array('v_id' => $row->association));
                    $query2 = $this->db->get();
                    $row2 = $query2->row();

                    $this->session->set_userdata('USER_TYPE_NAME', $row2->association);
                }
                redirect('user/sucess');
//            } else {
//                redirect('user/sucess_intermediate');
//            }
        } else {
            redirect('gemeenten');
        }
    }

    public function addVereniging() {
        $data = array();
        $getData = array(
            'city_id' => $this->input->post('city_id'),
            'created_by' => $this->input->post('created_by'),
            'post_code' => $this->input->post('post_code'),
            'association' => $this->input->post('association'),
        );

        $this->common_model->AddRecord($getData, 'verenigings');
        $this->session->set_flashdata('success', 'Successfully added.');
        redirect('user/vereniging');
    }

    public function check_email_exist() {
        $email = $this->input->post('email');
        $getUsername = $this->common_model->RetriveRecordByWhereRow('users', array('email' => $email));
        if (count($getUsername) > 0) {
            echo 1;
        } else {
            echo 0;
        }
    }

    public function myEvents() {
        if (empty($this->session->userdata('USER_ID'))) {
            redirect('/login');
        }
        $data = array();
        $data['active_mijievenementen'] = 'active';

        $this->db->select('*');
        $this->db->from('orders');
        $this->db->where(array('orders.user_id' => $this->session->userdata('USER_ID')));
        $query = $this->db->get();
        $data['ord_items'] = $query;

        $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_mijievenementen', array('id' => '1'));
        $this->load->view('user/mijievenementen', $data);
    }

    public function myCityEvents() {
        if (empty($this->session->userdata('USER_ID'))) {
            redirect('/login');
        }
        $data = array();
        $data['active_mijievenementen'] = 'active';

        $this->db->select('*');
        $this->db->from('orders');
        $this->db->where(array('orders.user_id' => $this->session->userdata('USER_ID')));
        $query = $this->db->get();
        $data['ord_items'] = $query;

        $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_cityevenementen', array('id' => '1'));
        $this->load->view('user/cityevenementen', $data);
    }

    public function change_association_status() {

        $data = array();
        $id = $this->input->post('id');
        $value = $this->input->post('val');
        $save_data['v_status'] = $value;
        $this->common_model->UpdateRecord($save_data, 'verenigings', 'v_id', $id);

        $save_data2['u_status'] = $value;
        $this->common_model->UpdateRecordWhereArray($save_data2, 'users', array('association' => $id));


        $userDetails = $this->db->select('*')->from('users')->where(array('users.association' => $id))->get()->row();

        ### in mail association name ######
        $associationDetails = $this->db->select('*')->from('verenigings')->where(array('verenigings.v_id' => $id))->get()->row();
        $association_nam = $associationDetails->association;
### in mail association name ######

        $data['to'] = $userDetails->email;
        $data['subject'] = 'Welkom bij Durafest ' . " " . $association_nam;
        $data['email_template'] = 'new-account-approval';
        $data['dear_name'] = $association_nam;
        $data['url'] = base_url() . '/login';

        $result = send_mail($data);


        echo 'ok';
    }

    public function add_vereniging_csv() {

        $count = 0;
        $fp = fopen($_FILES['file']['tmp_name'], 'r') or die("can't open file");
        while ($csv_line = fgetcsv($fp, 1024)) {
            $count++;
            if ($count == 1) {
                continue;
            }//keep this if condition if you want to remove the first row
            for ($i = 0, $j = count($csv_line); $i < $j; $i++) {
                $this->db->select('u_id');
                $this->db->from('users');
                $this->db->where(array('post_code' => $csv_line[0], 'usertype' => 'City'));
                $query = $this->db->get();
                $city_id = $query->row();

                $insert_csv = array();
                $insert_csv['city_id'] = $city_id->u_id;
                $insert_csv['created_by'] = 'City Admin';
                $insert_csv['post_code'] = $csv_line[0];
                $insert_csv['association'] = $csv_line[2];
            }
            $i++;

            $this->common_model->AddRecord($insert_csv, 'verenigings');
        }

        fclose($fp) or die("can't close file");
        $this->session->set_flashdata('success', 'Successfully added.');

        redirect('user/vereniging');
    }

    public function cityprofile() {
        $data = array();
        if ($_POST) {
            $getData = array(
                'city_name' => $this->input->post('city_name'),
                'post_code' => $this->input->post('post_code'),
                'street' => $this->input->post('street'),
                'number' => $this->input->post('number'),
                'email' => $this->input->post('login_email'),
            );

            if ($_POST['login_password'] != '') {
                $getData['password'] = md5($this->input->post('login_password'));
            }
            if ($_FILES['u_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['u_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/users/";
                $file_name = time() . '_user_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["u_image"]["tmp_name"], $target_file);

                $getData['u_image'] = $file_name;
                $this->session->set_userdata('USER_IMAGE', $file_name);
            }

            $getContact['Voornaam'] = $_POST['Voornaam'];
            $getContact['Naam'] = $_POST['Naam'];
            $getContact['Dienst'] = $_POST['Dienst'];
            $getContact['Functie'] = $_POST['Functie'];
            $getContact['Telefoon'] = $_POST['Telefoon'];
            $getContact['GSM'] = $_POST['GSM'];
            $getContact['Emailadres'] = $_POST['Emailadres'];

            $getData['contact_details'] = json_encode($getContact);

            $this->common_model->UpdateRecord($getData, 'users', 'u_id', $this->session->userdata('USER_ID'));
        }
        $data['query'] = $this->common_model->RetriveRecordByWhereRow('users', array('u_id' => $this->session->userdata('USER_ID')));
        $this->load->view('user/cityprofile', $data);
    }

    public function associationprofile() {
        if (empty($this->session->userdata('USER_ID'))) {
            redirect('/login');
        }
        $data = array();
//        echo $this->session->userdata('USER_ID');
        if ($_POST) {
            $getData = array(
//                'city_id' => $this->input->post('city_id'),
//                'city_name' => $this->input->post('city_name'),
//                'post_code' => $this->input->post('postcode'),
                'street' => $this->input->post('street'),
                'number' => $this->input->post('number'),
                'btw_number' => $this->input->post('btw_number'),
//                'association' => $this->input->post('association'),
//                'email' => $this->input->post('login_email'),
//                'added_by' => 'Association',
//                'usertype' => 'Association',
                'f_name' => $this->input->post('f_name'),
                'name' => $this->input->post('name'),
                'phone' => $this->input->post('phone'),
                'gsm' => $this->input->post('gsm'),
                'contact_email' => $this->input->post('email'),
            );

            if ($_POST['login_password'] != '') {
                $getData['password'] = md5($this->input->post('login_password'));
            }
            if ($_FILES['u_image']['name'] != '') {
                $ext = strtolower(pathinfo($_FILES['u_image']['name'], PATHINFO_EXTENSION));
                $target_dir = "uploads/users/";
                $file_name = time() . '_user_image.' . $ext;
                $target_file = $target_dir . $file_name;
                move_uploaded_file($_FILES["u_image"]["tmp_name"], $target_file);

                $getData['u_image'] = $file_name;
                $this->session->set_userdata('USER_IMAGE', $file_name);
            }


            $this->common_model->UpdateRecord($getData, 'users', 'u_id', $this->session->userdata('USER_ID'));
        }
        $this->db->select('users.*')->from('users')->where(array('usertype' => 'City'))->order_by('users.u_id', 'DESC');
        $data['cities'] = $this->db->get();
        $data['query'] = $this->db->select('users.*,verenigings.association as association_name')->from('users')->join('verenigings', 'verenigings.v_id = users.association','left')->where(array('users.u_id' => $this->session->userdata('USER_ID')))->get()->row_array();
//       echo $this->db->last_query();
//        $this->db->join('verenigings', 'verenigings.v_id', 'users.association');
        $this->load->view('user/associationprofile', $data);
    }

    
    
   
}
