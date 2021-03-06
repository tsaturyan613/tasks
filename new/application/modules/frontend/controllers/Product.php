<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends MX_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->helper(array('url', 'form', 'html', 'text', 'gen_helper'));
        $this->load->library(array('session', 'form_validation', 'email', 'upload', 'image_lib', 'google', 'facebook'));
        $this->load->model(array('common_model', 'custom_model', 'user_model'));
    }

    public function allProduct() {
        if ($this->session->userdata('USER_ID') == '') {
            redirect('/login');
        }
        $data = array();

        if (isset($_POST['set_type']) && $_POST['set_type'] == 'postcode') {
            $this->session->set_userdata('user_postcode', $this->input->post('user_postcode'));
        }
//        echo $this->session->userdata('user_postcode');
        $data['cities'] = $this->common_model->RetriveRecordByWhere('users', array('usertype' => 'City', 'u_status' => 'Y'));
        $data['query'] = $this->common_model->RetriveRecordByWhere('products', array('p_status' => 'Y'));
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('order_page_settings', array('id' => '1'));

        $data['cms'] = $this->common_model->RetriveRecordByWhereRow('cms_products', array('id' => '1'));
          $data['user_deti'] = $this->common_model->RetriveRecordByWhereRow('users', array('u_id'=> $this->session->userdata('USER_ID')));
        $this->load->view('product/all-product', $data);
    }


    

    public function cityinvoice() {
        if ($this->session->userdata('USER_ID') == '') {
            redirect('/login');
        }
        $data = array();
        $id = $this->uri->segment(3);
        if ($id == '') {
            redirect('/user/products');
        }
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('orders', array('id' => $id));

        $this->db->select('*');
        $this->db->from('order_items');
        $this->db->join('products', 'order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $data['ord_items'] = $query;
        echo "hhh";
        die;
        $this->load->view('product/cityinvoice', $data);
    }

    public function citynewinvoice() {
        if ($this->session->userdata('USER_ID') == '') {
            redirect('/login');
        }
        $data = array();
        $id = $this->uri->segment(3);
        if ($id == '') {
            redirect('/user/products');
        }
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('orders', array('id' => $id));

        $this->db->select('*');
        $this->db->from('order_items');
        $this->db->join('products', 'order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $data['ord_items'] = $query;
        $this->load->view('product/citynewinvoice', $data);
    }

    public function populateCart() {
        $data['minimum_order_box'] = $this->common_model->RetriveRecordByWhereRow('setting',array('id'=>1));
        $data['val'] = $_POST;
        $this->load->view('product/cart-section', $data);
    }

    public function submitCart() {

        $total_order_of_qty =$this->input->post('total_order_of_qty') ;
        $minimum_order_box =$this->input->post('minimum_order_box') ;
        $action =$this->input->post('action') ;
        
        if($total_order_of_qty >= $minimum_order_box){

        $getData = array(
            'user_id' => $this->session->userdata('USER_ID'),
            'association_name' => $this->session->userdata('USER_TYPE_NAME'),
            'event_name' => $this->input->post('event_name'),
            'number_of_visitor' => $this->input->post('number_of_visitor'),
            'cups_per_visitor' => $this->input->post('cups_per_visitor'),
            'number_of_bar' => $this->input->post('number_of_bar'),
            'postcode' => $this->input->post('postcode'),
            'street' => $this->input->post('street'),
            'number' => $this->input->post('number'),
            'event_start_date' => $this->input->post('event_start_date'),
//            'event_start_time' => $this->input->post('event_start_time'),
            'event_start_time' => $this->input->post('event_start_time_hr') . ':' . $this->input->post('event_start_time_min'),
            'event_end_date' => $this->input->post('event_end_date'),
//            'event_end_time' => $this->input->post('event_end_time'),
            'event_end_time' => $this->input->post('event_end_time_hr') . ':' . $this->input->post('event_end_time_min'),
            'collection_by_profiwash_at_the_event' => $this->input->post('collection_by_profiwash_at_the_event') ? $this->input->post('collection_by_profiwash_at_the_event') : '',
            'return_to_address' => $this->input->post('return_to_address') ? $this->input->post('return_to_address') : '',
            'collection_by_profiwash_at_collection_point' => $this->input->post('collection_by_profiwash_at_collection_point') ? $this->input->post('collection_by_profiwash_at_collection_point') : '',
            'return_via_collection_point' => $this->input->post('return_via_collection_point') ? $this->input->post('return_via_collection_point') : '',
            'delivery_to_profiwash' => $this->input->post('delivery_to_profiwash') ? $this->input->post('delivery_to_profiwash') : '',
            'pick_up_at_profiwash' => $this->input->post('pick_up_at_profiwash') ? $this->input->post('pick_up_at_profiwash') : '',
            'sub_total' => $this->input->post('sub_total'),
            'tax' => $this->input->post('tax'),
            'total' => $this->input->post('total'),
            'products' => json_encode($this->input->post('products')),
        );

        $this->common_model->AddRecord($getData, 'orders');
        $last_id = $this->db->insert_id();
        foreach ($_POST['products'] as $key => $value) {
            $p_items = array(
                'order_id' => $last_id,
                'order_p_id' => $key,
                'order_qty' => $value,
                'order_time_max_rental_cost_per_product' => $_POST['order_time_max_rental_cost_per_product'][$key],
                'order_time_max_wash_cost_per_product' => $_POST['order_time_max_wash_cost_per_product'][$key],
                'order_time_max_lost_cost_per_product' => $_POST['order_time_max_lost_cost_per_product'][$key],
            );

            $this->common_model->AddRecord($p_items, 'order_items');
        }
        $inbox_msg = array(
            'to_u_id' => $this->session->userdata('USER_ID'),
            'created_u_id' => '1',
            'created_by' => 'Admin',
            'message' => 'Hi, You have successfully requested for your event. Your request id is ' . $last_id . '. We will get back to you soon.',
        );
        $this->common_model->AddRecord($inbox_msg, 'inbox');

//        $userDetails = $this->db->select('*')->from('users')->where(array('users.u_id' => $this->session->userdata('USER_ID')))->get()->row();
//echo $this->session->userdata('USER_ID');
        $this->db->select('users.*')->from('users')->where(array('users.u_id' => $this->session->userdata('USER_ID')));

        if ($this->session->userdata('USER_TYPE') == 'Super_City') {
            $userDetails = $this->db->get()->row();
            $name = $userDetails->city_name;
            $link = base_url() . 'mijidashboard';
        } else if ($this->session->userdata('USER_TYPE') == 'City') {
            $userDetails = $this->db->get()->row();
            $name = $userDetails->city_name;
            $link = base_url() . 'mijidashboard';
        } else if ($this->session->userdata('USER_TYPE') == 'Association') {
            $this->db->select('verenigings.association as asso_name');
            $this->db->join('verenigings', 'users.association = verenigings.v_id');
            $userDetails = $this->db->get()->row();
            $name = $userDetails->asso_name;
            $link = base_url() . 'login';
        }
//        echo "<pre>";
//        echo $this->db->last_query();
//        print_R($userDetails);
        $data['to'] = $userDetails->email;
        $data['dear_name'] = $name;
        $data['subject'] = 'Uw bestelling ' . $last_id . ' is succesvol geplaatst';
        $data['email_template'] = 'order-created-front';
        $data['ordernumber'] = $last_id;
        $data['url'] = $link;
        $result = send_mail($data);


        $adminDetails = $this->db->select('*')->from('users')->where(array('users.usertype' => 'Admin'))->get()->row();
//        print_R($adminDetails);
        $data['to'] = $adminDetails->email;
        $data['subject'] = $name . ' heeft een nieuwe bestelling geplaatst  ';
        $data['email_template'] = 'order-created-front-to-admin';
        $data['ordernumber'] = $last_id;
        $data['url'] = base_url() . 'admin/dashboard';
        $result = send_mail($data);

//exit();
        redirect('/user/invoice/' . $last_id);
        }else{
              if($action == 'super_city'){
                    redirect('/user/cityproducts/');
              }
            if($action == 'user'){
                    redirect('/user/products/');
              }
                     
        }
    }

    public function invoice_pdf() {
        if ($this->session->userdata('USER_ID') == '') {
            redirect('/login');
        }
        $data = array();
        $id = $this->uri->segment(3);
        if ($id == '') {
            redirect('/user/products');
        }
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('orders', array('id' => $id));

        $this->db->select('*');
        $this->db->from('order_items');
        $this->db->join('products', 'order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $data['ord_items'] = $query;
        $this->load->view('product/invoice', $data);
    }



    public function getProductPriceDetailsByPostcode() {

        $action = $this->input->post('admin_action') != '' ? $this->input->post('admin_action') : '';

        $this->db->select('product_price_by_city.*');
        $this->db->from('product_price_by_city');
        $this->db->join('users', 'users.super_city_id=product_price_by_city.super_city_id');
        $this->db->where('users.post_code', $this->session->userdata('USER_POSTCODE'));
        $this->db->where('product_price_by_city.p_id', $_POST['p_id']);
        $this->db->where('product_price_by_city.min_qty <= ', $_POST['qty']);
        $this->db->order_by('product_price_by_city.id ', 'desc');
        $result = $this->db->get()->row_array();
        if (count($result) > 0) {

            if ($action == 'admin_change_qty') {
                $total = ($result['box_prc'] + $result['wash_prc']) * $_POST['qty'];
                $getData = array('total_price' => $total);
            } else {
//                $getData = array(
//                    'box_prc' => number_format($result['box_prc'], 2, ',', ''),
//                    'wash_prc' => number_format($result['wash_prc'], 2, ',', ''),
//                    'loss_prc' => number_format($result['loss_prc'], 2, ',', ''),
//                );
                $getData = array(
                    'box_prc' => number_format(floatval(str_replace(",", ".",$result['box_prc'])), 2, ',', ''),
                    'wash_prc' => number_format(floatval(str_replace(",", ".",$result['wash_prc'])), 2, ',', ''),
                    'loss_prc' => number_format(floatval(str_replace(",", ".",$result['loss_prc'])), 2, ',', ''),
                );
            }
        } else {
            $this->db->select('*');
            $this->db->from('product_price_by_city');
            $this->db->where('p_id', $_POST['p_id']);
            $this->db->where('super_city_id', 0);
            $this->db->where('min_qty <= ', $_POST['qty']);
            $this->db->order_by('min_qty', 'desc');

            $result2 = $this->db->get()->row_array();
            if ($action == 'admin_change_qty') {
                $total = $result2['box_prc'] + $result2['wash_prc'] * $_POST['qty'];
                $getData = array('total_price' => $total);
            } else {
//                $getData = array(
//                    'box_prc' => number_format($result2['box_prc'], 2, ',', ''),
//                    'wash_prc' => number_format($result2['wash_prc'], 2, ',', ''),
//                    'loss_prc' => number_format($result2['loss_prc'], 2, ',', ''),
//                );
                 $getData = array(
                    'box_prc' => number_format(floatval(str_replace(",", ".",$result2['box_prc'])), 2, ',', ''),
                    'wash_prc' => number_format(floatval(str_replace(",", ".",$result2['wash_prc'])), 2, ',', ''),
                    'loss_prc' => number_format(floatval(str_replace(",", ".",$result2['loss_prc'])), 2, ',', ''),
                );
            }
        }
        echo json_encode($getData);
    }



    public function citywashinvoice_download() {

        $data = array();
        $id = $this->uri->segment(2);
        $ord_stng = $this->common_model->RetriveRecordByWhereRow('wash_order', array('id' => $id));

        $this->db->select('*');
        $this->db->from('wash_order_items');
        $this->db->join('products', 'wash_order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $ord_items = $query;

//print_r($ord_stng);exit();
        $getUserDetails = getUserDetailsById($id);

        $html = '<style>'
                . 'h3
{
  border:1px solid black;
}
        a.bttn-green {
    margin-top: 40px;
}
a.bttn-green {
    width: 178px;
    height: 63px;
    border-radius: 5px;
    background: #67b930;
    color: #fff;
    text-align: center;
    text-transform: uppercase;
}
.bttn-green {
    width: 308px;
    height: 63px;
    color: #fff;
    font-family: \'Poppins\', sans-serif;
    line-height: 63px;
    border-radius: 5px;
    background: #67b930;
    font-size: 20px;
    display: inline-block;
    border: 2px solid #67b930;
    font-weight: 600;
    box-shadow: -1px 3px 2px rgba(0, 0, 0, 0.10);
    margin: 15px 0 40px;
    text-transform: uppercase;
}
        .box-cards{
            background: #fff; padding: 15px;
        }
        .box-cards .right-table h1{
            font-size: 32px;
            color: #2f788a;
            font-weight: 400;
            margin-bottom: 20px;
        }
        .box-cards .right-table h2{
            font-size: 22px;
        }
        .box-cards .right-table .table.normal-table tbody td{
            text-align: left; font-size: 15px; color: #10242b;
            font-weight: 300; padding: 8px 10px; border-top: 0;
        }
        .box-cards .right-table .table.normal-table tbody td:first-child{
            font-weight: 500;
        }
        .box-cards .right-table .table.normal-table tbody td:last-child{
            text-align: right;
        }
        .raaddress{
            padding: 15px;
            background: #f7f7f7;
            width: 100%;
            box-sizing: border-box;
            margin: 30px;
        }
        .raaddress p{ margin-bottom: 6px;}
        .raaddress h4{ font-size: 20px; margin-top: 1.5em;}
        </style>';
        $html .= '<div class="cart-sec" id="content">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div style="background: #fff; padding: 15px;> 
                                                            <div class="row">
                                                                <table class="table table-striped table-inbox print-page mb-0" width="100%" ><tr><td width="30%">						
                                                                                    <div class="">
                                                                                <div class="left-table">
                                                                                    <img src="' . base_url() . 'assets/invoice_logo.jpg" alt="">
                                                                                    <div style="">
                                                                                    <table class="normal-table table" style="width:100%;">
                                                    <tr>
                                                        <td style="line-height: 28px;">Cli??nt</td>
                                                        <td style="text-align: left;line-height: 28px;">
                                                        ' . $getUserDetails['city_name'] . '
                                                            </td>
                                                    </tr>
                                                    <tr>
                                                        <td style="line-height: 28px;"></td>
                                                        <td style="text-align: left;line-height: 28px;"> ' . $getUserDetails['post_code'] . '</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="line-height: 28px;"></td>
                                                        <td style="text-align: left;line-height: 28px;">' . $getUserDetails['street'] . '</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="line-height: 28px;"></td>
                                                        <td style="text-align: left;line-height: 28px;">' . $getUserDetails['email'] . '</td>
                                                    </tr><br>
                                                    <tr>
                                                        <td style="line-height: 28px;">Bestelnummer</td>
                                                        <td style="text-align: left;line-height: 28px;">' . sprintf("%02d", $ord_stng['id']) . '</td>
                                                    </tr>
                                                    
                                                </table>
                                                

                                                                                      
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            </td>
																			<td width="40%">
																			<table class="normal-table table" style="width:100%;">
                                                    <tr>
													&nbsp;
													</tr>
													</table>
													
																			</td>
																			
																			<td width="30%">
                                                                            <div class="">
                                            <div class="right-table">
											
                                                <h1 style="text-align: right;font-size: 18px;
    color: #2f788a;
    font-weight: 400;
    margin-bottom: 20px;">INVOICE / FACTUUR</h1>
                                                <h2 style="text-align: right;font-size: 16px;">Durafest BV</h2>
                                                <table class="normal-table table" style="width:100%;">
                                                    <tr>
                                                        <td style="line-height: 28px;">ADDRESS</td>
                                                        <td style="text-align: right;line-height: 28px;">Kwintijnpoort 106 9200 <br>Dendermonde Belgie</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="line-height: 28px;">CONTACT DETAILS</td>
                                                        <td style="text-align: right;line-height: 28px;">koen@durafest.be<br>+32475.83.30.87</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="line-height: 28px;">BTW NUMBER</td>
                                                        <td style="text-align: right;line-height: 28px;">BE 074.832.118</td>
                                                    </tr>
                                                    <tr>
                                                        <td style="line-height: 28px;">BANK IBAN BIC</td>
                                                        <td style="text-align: right;line-height: 28px;">Belfius <br>BE70 0689 0486 4325 GKCCBEBB </td>
                                                    </tr>
                                                    
                                                </table>
                                            </div>
                                        </div>
                                        </td></tr></table>
                                        <div class="table-responsive"  style="margin-top: 20px;">
										
										 <table class="table table-striped table-inbox print-page mb-0" style="width:100%; border: 2px solid #3db8da;">
                                            <thead>
                                                <tr>
                                                    <th style="    border-bottom: 2px solid #3db8da;
    padding: 10px 12px;
    color: #fff;
    background: #3db8da;
    font-weight: 500;">Invoice Number</th>
                                                    <th style="    border-bottom: 2px solid #3db8da;
    padding: 10px 12px;
    color: #fff;
    background: #3db8da;
    font-weight: 500;">Invoice Date</th>
                                                    <th style="    border-bottom: 2px solid #3db8da;
    padding: 10px 12px;
    color: #fff;
    background: #3db8da;
    font-weight: 500;">VAT Number Client </th>
                                                    <th style="    border-bottom: 2px solid #3db8da;
    padding: 10px 12px;
    color: #fff;
    background: #3db8da;
    font-weight: 500;">Payment Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                        
                                                    <td ></td>
                                                    <td >' . date(('d/m/Y'), strtotime($ord_stng['created_at'])) . '</td>
                                                    <td ></td>
                                                    <td >' . date(('d/m/Y'), strtotime($ord_stng['created_at'] . ' +30 days')) . '</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>';



        $html .= '<div class="table-responsive">
                                        <table class="table table-striped table-inbox print-page mb-0" style="width:100%; border: 2px solid #3db8da;">
                                            <thead>
                                                <tr>
                                                    <th style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;">Artikel</th>
                                                                             <th style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;">Omschrijving</th>
                                                                            <th style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;">Aantal</th>
                                                                             <th style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;">wasprijs</th>
                                                                             <th style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;">Bedrag</th>
                                                                            
                                                </tr>
                                            </thead>
                                            <tbody>';
        $s_tot = floatval(0);
        foreach ($ord_items->result() as $row) {
            $html .= ' <tr>
                                                       
			
			
			<td style="    line-height: 30px;text-align: right;">' . $row->name . '</td>
            <td style="    line-height: 30px;text-align: right;">' . $row->sort_desc . '</td>
            <td style="    line-height: 30px;text-align: right;">' . $row->order_qty . '</td>
            <td style="    line-height: 30px;text-align: right;"> &#8364; ' . number_format((float) $row->wash_prc, 2, ',', '') . '</td>
            <td style="    line-height: 30px;text-align: right;">&#8364; ' . number_format(floatval($row->wash_prc * $row->order_qty), 2, ',', '');
            $s_tot += floatval($row->wash_prc * $row->order_qty) . '</td>
			
			
			
			
                                                      
                                                    </tr>';
        }
        $html .= '</tbody>
                                        </table>
                                    </div>';

        $html .= '<div class="right-table row">
                                        <div class="col-md-12 ">
                                           
                                            <table class="normal-table table mb-2" style="    width: 100%;">';
        if ($ord_stng['collection_by_profiwash_at_the_event'] != '') {
            $html .= ' <tr>
                                                        <td style="line-height: 30px;"><strong>Levering op evenement</strong></td>
                                                         <td style="text-align: right;line-height: 30px;">&#8364; ' . number_format((float) $ord_stng['collection_by_profiwash_at_the_event'], 2, ',', '') . '</td> </tr>';
            $s_tot += floatval($ord_stng['collection_by_profiwash_at_the_event']);
        }

        if ($ord_stng['return_to_address'] != '') {
            $html .= '<tr>
                                                        <td style="line-height: 30px;"><strong>Levering via afhaalpunt</strong></td>
                                                         <td style="text-align: right;line-height: 30px;">&#8364; ' . number_format((float) $ord_stng['return_to_address'], 2, ',', '') . '</td></tr>';
            $s_tot += floatval($ord_stng['return_to_address']);
        }

        if ($ord_stng['collection_by_profiwash_at_collection_point'] != '') {
            $html .= '<tr>
                   <td style="line-height: 30px;"><strong>Afhalen bij Durafest</strong></td>
                     <td style="text-align: right;line-height: 30px;">&#8364; ' . number_format((float) $ord_stng['collection_by_profiwash_at_collection_point'], 2, ',', '') . '</td></tr>';
            $s_tot += floatval($ord_stng['collection_by_profiwash_at_collection_point']);
        }


        if ($ord_stng['return_via_collection_point'] != '') {
            $html .= '<tr>
                    <td style="line-height: 30px;"><strong>Ophalen op evenement</strong></td>
                   <td style="text-align: right;line-height: 30px;">&#8364; ' . number_format((float) $ord_stng['return_via_collection_point'], 2, ',', '') . '</td></tr>';
            $s_tot += floatval($ord_stng['return_via_collection_point']);
        }


        if ($ord_stng['delivery_to_profiwash'] != '') {
            $html .= '<tr>
                    <td style="line-height: 30px;"><strong>Terugbrengen naar afhaalpunt</strong></td>
                     <td style="text-align: right;line-height: 30px;">&#8364; ' . number_format((float) $ord_stng['delivery_to_profiwash'], 2, ',', '') . '</td></tr>';
            $s_tot += floatval($ord_stng['delivery_to_profiwash']);
        }



        if ($ord_stng['pick_up_at_profiwash'] != '') {
            $html .= '<tr>
                    <td style="line-height: 30px;"><strong>Terugbrengen naar Durafest</strong></td>
                     <td style="text-align: right;line-height: 30px;">&#8364; ' . number_format((float) $ord_stng['pick_up_at_profiwash'], 2, ',', '') . '</td></tr>';
            $s_tot += floatval($ord_stng['pick_up_at_profiwash']);
        }



        $html .= '<tr>
                                                     <td style="line-height: 30px;">Subtotaal</td>
                                                    <td style="text-align: right;line-height: 30px;">&#8364; ' . number_format((float) $s_tot, 2, ',', '') . '</td>
                                                </tr>
                                                <tr>
                                                     <td style="line-height: 30px;">BTW 21%</td>
                                                     <td style="text-align: right;line-height: 30px;">&#8364;  ' . number_format(floatval((21 / 100) * $s_tot), 2, ',', '') . '</td>
                                                </tr>
                                                <tr>
                                                     <td style="line-height: 30px;">Totaal</td> 
                                                     <td style="text-align: right;line-height: 30px;">&#8364;  ' . number_format(floatval($s_tot + ((21 / 100) * $s_tot)), 2, ',', '') . '</td>
                                                </tr>';

        $html .= '</table>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>';



//        echo $html;
//        echo $html;
//        die;
//echo $html;
//exit();


        $this->load->library('pdf');
        $this->dompdf->load_html($html);
        $this->dompdf->set_paper('A3', 'portrait');
        $this->dompdf->render();
        $opt = $this->dompdf->output();
        $filename = "Durafest_City_Wash_Invoice.pdf";


// Output the generated PDF to Browser
        $this->dompdf->stream($filename);

        //$pdfroot = 'uploads/invoice/'.$filename;
        // file_put_contents($pdfroot, $opt);
    }

    
    
    public function invoice() {
        if ($this->session->userdata('USER_ID') == '') {
            redirect('/login');
        }
        $data = array();
        $id = $this->uri->segment(3);

        if ($id == '') {
            redirect('/user/products');
        }
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRowCity('orders', array('id' => $id));

        $this->db->select('*');
        $this->db->from('order_items');
        $this->db->join('products', 'order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $data['ord_items'] = $query;
        $this->load->view('product/invoice', $data);
    }
    

    public function invoice_download() {
        $data = array();
        $id = $this->uri->segment(2);
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('orders', array('id' => $id));

        $this->db->select('*');
        $this->db->from('order_items');
        $this->db->join('products', 'order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $data['ord_items'] = $query;
        $data['getUserDetails'] = getUserDetailsById($data['ord_stng']['user_id']);
        
        $html1 = $this->load->view('product/pdf_invoice', $data, TRUE);
//        echo $html1;exit();
        $this->load->library('pdf');
        $this->dompdf->load_html($html1);
        $this->dompdf->set_paper('A3', 'portrait');
        $this->dompdf->render();
        $opt = $this->dompdf->output();
        $filename = "Durafest_orderbevestiging_".$id.".pdf";
        $this->dompdf->stream($filename);

       
    }
    
    public function newinvoice() {
        if ($this->session->userdata('USER_ID') == '') {
            redirect('/login');
        }
        $data = array();
        $id = $this->uri->segment(3);
        if ($id == '') {
            redirect('/user/products');
        }
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('orders', array('id' => $id));

        $this->db->select('*');
        $this->db->from('order_items');
        $this->db->join('products', 'order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $data['ord_items'] = $query;
        $this->load->view('product/newinvoice', $data);
    }
    
     public function newinvoice_download() {
        $data = array();
        $id = $this->uri->segment(2);
        $data['ord_stng'] = $this->common_model->RetriveRecordByWhereRow('orders', array('id' => $id));

        $this->db->select('*');
        $this->db->from('order_items');
        $this->db->join('products', 'order_items.order_p_id = products.p_id');
        $this->db->where(array('order_id' => $id));
        $query = $this->db->get();
        $data['ord_items'] = $query;
        $data['getUserDetails'] = getUserDetailsById($data['ord_stng']['user_id']);
        
        $html1 = $this->load->view('product/pdf_newinvoice', $data, TRUE);
//        echo $html1;exit();
        $this->load->library('pdf');
        $this->dompdf->load_html($html1);
        $this->dompdf->set_paper('A3', 'portrait');
        $this->dompdf->render();
        $opt = $this->dompdf->output();
        $filename = "Durafest_Factuur_".$id.".pdf";
        $this->dompdf->stream($filename);

       
    }
    
    

    
    
}
