<?php

function send_mail($data) {
    if (empty($data['to']) || empty($data['subject']) || empty($data['email_template'])) {
        return false;
    }
//echo "<pre>";
//print_r($data);
    $CI = & get_instance();
    $config = Array(
        'protocol' => 'sendmail',
        'smtp_host' => 'smtp.office365.com',
        'smtp_port' => 25,
        'smtp_user' => 'service@durafest.be',
        'smtp_pass' => 'Daz29054',
        'mailtype' => 'html',
        'charset' => 'iso-8859-1'  
    );

    $CI->load->library('email', $config);
    $CI->email->set_newline("\r\n");


    $from = 'service@durafest.be';
    $to = $data['to'];
//    $to = 'jenny.sparxit@gmail.com';
//    $to = 'moinak2003@gmail.com';
    $CI->email->from($from, 'Service | Durafest');
    $CI->email->reply_to($from, 'Service | Durafest');
    $CI->email->to($to);
    $CI->email->subject($data['subject']);
    $subject = $data['subject'];
    $message = $CI->load->view('email_templates/' . $data['email_template'], $data, true);
    $CI->email->message($message);
    $CI->email->set_mailtype("html");

    if ($CI->email->send()) {
//        echo 'Your Email has successfully been sent.';
        return true;
    } else {
//        show_error($CI->email->print_debugger());
        return false;
    }
}

function send_mail_old($data) {
    if (empty($data['to']) || empty($data['subject']) || empty($data['email_template'])) {
        return false;
    }

    $CI = & get_instance();
    $to = $data['to'];
    $subject = $data['subject'];
    $message = $CI->load->view('email_templates/' . $data['email_template'], $data, true);


    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
    $headers .= 'From: <service@durafest.be>' . "\r\n";

    if (mail($to, $subject, $message, $headers)) {
        return true;
    } else {
        return false;
    }
}

function get_menu($menu_id) {
    $CI = & get_instance();
    $CI->db->distinct('page_by_menu.page_id')->select('page_by_menu.*,pages.page_name,pages.page_url')->from('page_by_menu')->join('pages', 'page_by_menu.page_id=pages.id')->where(array('menu_id' => $menu_id))->order_by('page_by_menu.sort', 'ASC');
    $data = $CI->db->get();
    return $data->result();
}

function getFinalTotalOrderAmount($order_id) {
    $CI = & get_instance();
    $CI->db->select('*')->from('orders')->where(array('id' => $order_id));
    $ord_stng = $CI->db->get()->row_array();

    $CI->db->select('*')->from('order_items')->join('products', 'order_items.order_p_id=products.p_id')->where(array('order_items.order_id' => $order_id));
    $ord_items = $CI->db->get();

    $s_tot = floatval(0);
    foreach ($ord_items->result() as $row) {
        $s_tot += floatval(($row->box_prc * $row->order_qty) + ($row->used_cups * $row->wash_prc ) + ($row->lost_cup * $row->loss_prc ));
    }

    $s_tot += floatval($ord_stng['collection_by_profiwash_at_the_event']);
    $s_tot += floatval($ord_stng['return_to_address']);
    $s_tot += floatval($ord_stng['collection_by_profiwash_at_collection_point']);
    $s_tot += floatval($ord_stng['return_via_collection_point']);
    $s_tot += floatval($ord_stng['delivery_to_profiwash']);
    $s_tot += floatval($ord_stng['pick_up_at_profiwash']);


    return floatval($s_tot + ((21 / 100) * $s_tot));
}

function getFinalTotalOrderAmountByProduct($order_id) {
    $CI = & get_instance();
    $value_per_mnth = [];


    $ord_items = $CI->db->select('*')->from('order_items')->join('products', 'order_items.order_p_id=products.p_id')->where(array('order_items.order_id' => $order_id))->get()->result();
//    print_r($ord_items);
    foreach ($ord_items as $row) {

        $getData[$row->name] = floatval(($row->box_prc * $row->order_qty) + ($row->used_cups * $row->wash_prc ) + ($row->lost_cup * $row->loss_prc ));
    }

    return $getData;
}

function getTotalCupLostAmount($order_id) {
    $CI = & get_instance();
    $CI->db->select('*')->from('order_items')->join('products', 'order_items.order_p_id=products.p_id')->where(array('order_items.order_id' => $order_id));
    $ord_items = $CI->db->get();
    $lost_tot = floatval(0);
    foreach ($ord_items->result() as $row) {
        $lost_tot += floatval($row->lost_cup * $row->loss_prc);
    }
    return floatval($lost_tot);
}

function getFinalTotalOrderCount($user_id) {
    $CI = & get_instance();
    $CI->db->select('count(orders.id) as tot_order_count')->from('orders')->where(array('user_id' => $user_id));
    $ord_stng = $CI->db->get()->row_array();


    return $ord_stng['tot_order_count'];
}

function getFinalTotalUsedCups($order_id) {
    $CI = & get_instance();
    $CI->db->select('*')->from('orders')->where(array('id' => $order_id));
    $ord_stng = $CI->db->get()->row_array();

    $CI->db->select('*')->from('order_items')->join('products', 'order_items.order_p_id=products.p_id')->where(array('order_items.order_id' => $order_id));
    $ord_items = $CI->db->get();

    $s_tot = floatval(0);
    foreach ($ord_items->result() as $row) {
        $s_tot += floatval($row->qty * $row->used_cups);
    }
    return floatval($s_tot + ((21 / 100) * $s_tot));
}

function getUserDetailsById($user_id) {
    $CI = & get_instance();
    $CI->db->select('users.*,verenigings.association as v_association')->from('users')->join('verenigings','verenigings.v_id=users.association','left')->where(array('u_id' => $user_id));
    $query = $CI->db->get()->row_array();
//print_r($query);

    return $query;
}

function getOrderDetailsByOrderId($order_id) {
    $CI = & get_instance();

    $CI->db->select('*')->from('order_items')->join('products', 'order_items.order_p_id=products.p_id')->where(array('order_items.order_id' => $order_id));
    $ord_items = $CI->db->get()->result();
//    echo "<pre>";
//print_R($ord_items);
    foreach ($ord_items as $row) {
        $tot_used_cup += floatval($row->used_cups * $row->qty);
        $tot_lost_cup += floatval($row->lost_cup);
    }
    $details['tot_used_cup'] = $tot_used_cup;
    $details['tot_lost_cup'] = $tot_lost_cup;
    return $details;
}

//function getProductPriceDetailsByCity($p_id, $c_id) {
//    $CI = & get_instance();
//    $result = $CI->common_model->RetriveRecordByWhereRow('product_price_by_city', array('p_id' => $p_id, 'city_id' => $c_id));
//    return $result;
//}


function getProductPriceDetailsByCity($p_id, $c_id) {
    $CI = & get_instance();
    $CI->db->from('product_price_by_city');
    $CI->db->where('product_price_by_city.city_id', $c_id);
    $CI->db->where('product_price_by_city.p_id', $p_id);
    $result = $CI->db->get();
//    echo $CI->db->last_query();
//    print_R($result->result());
    return $result->result();
}

function getProductPriceDetailsBySuperCity($p_id, $s_c_id) {
    $CI = & get_instance();
    $CI->db->from('product_price_by_city');
    $CI->db->where('product_price_by_city.super_city_id', $s_c_id);
    $CI->db->where('product_price_by_city.p_id', $p_id);
    $result = $CI->db->get();
    return $result->result();
}

function getProductPriceDetailsByPostcode($p_id, $postCode) {
    $CI = & get_instance();

    $CI->db->select('product_price_by_city.*');
    $CI->db->from('product_price_by_city');
    $CI->db->join('users', 'users.super_city_id=product_price_by_city.super_city_id');
//    $CI->db->where('product_price_by_city.post_code', $postCode);
    $CI->db->where('users.post_code', $postCode);
    $CI->db->where('users.usertype', 'City');
    $CI->db->where('product_price_by_city.p_id', $p_id);
    $result = $CI->db->get();
//    echo count($result->result());
//    print_R($result->result());
//    echo $CI->db->last_query();
    $box_prc = floatval(0);
    $wash_prc = floatval(0);
    $loss_prc = floatval(0);
    if (count($result->result()) > 0) {
        foreach ($result->result() as $row) {
           $box_prc += floatval(str_replace(',','.',$row->box_prc));
            $wash_prc += floatval(str_replace(',','.',$row->wash_prc));
            $loss_prc += floatval(str_replace(',','.',$row->loss_prc));
            $min_qty = $row->min_qty;
        }
        $getData = array(
            'box_prc' => floatval($box_prc / count($result->result())),
            'wash_prc' => floatval($wash_prc / count($result->result())),
            'loss_prc' => floatval($loss_prc / count($result->result())),
            'min_qty' => $min_qty,
        );
    } else {
        $CI->db->select('*');
            $CI->db->from('product_price_by_city');
            $CI->db->where('p_id', $p_id);
            $CI->db->where('super_city_id', 0);
            $CI->db->order_by('min_qty', 'desc');
            $result2 = $CI->db->get();

         foreach ($result2->result() as $row) {
//             echo $row->box_prc.'--';
            $box_prc += floatval(str_replace(',','.',$row->box_prc));
            $wash_prc += floatval(str_replace(',','.',$row->wash_prc));
            $loss_prc += floatval(str_replace(',','.',$row->loss_prc));
            $min_qty = $row->min_qty;
        }
//        echo $box_prc;
       // echo  count($result2->result());
        $getData = array(
            'box_prc' => floatval($box_prc / count($result2->result())),
            'wash_prc' => floatval($wash_prc / count($result2->result())),
            'loss_prc' => floatval($loss_prc / count($result2->result())),
            'min_qty' => $min_qty,
        );
    }


//    print_R($getData);

    return $getData;
}



function getAlCityPostcodeBySuperCity($user_id) {
    $CI = & get_instance();
    $CI->db->select('post_code')->from('users')->where(array('super_city_id' => $user_id,'usertype' => 'City'));
    $query = $CI->db->get()->result();
//print_r($query);

    return $query;
}


?>