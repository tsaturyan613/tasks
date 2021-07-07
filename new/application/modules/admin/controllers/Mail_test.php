<?php

class Mail_test extends CI_Controller {

    function __construct() {
        parent::__construct();
        $this->load->helper(array('url', 'form', 'html', 'text', 'file', 'gen_helper'));
        $this->load->library(array('session', 'form_validation', 'email', 'upload', 'image_lib', 'google', 'facebook'));
       
    }

    function index() {
        echo 21212;
        
     
$data['to'] = 'gsr.dev.15@gmail.com';
                        $data['subject'] = 'Forgot password';
                        $data['email_template'] = 'forgot-password';
                        $data['otp'] = $otp;
                        $result = send_mail($data);
                        if ($result) {
                            echo 'sent';
                        } else {
                            echo 'not_sent';
                        }
                        
                        exit();

        $from = 'service@durafest.be';
        $to = 'gsr.dev.15@gmail.com';
        $subject = 'test mail';
        $message = 'message';

        $this->email->set_newline("\r\n");
        $this->email->from($from);
        $this->email->to($to);
        $this->email->subject($subject);
        $this->email->message($message);

        if ($this->email->send()) {
            echo 'Your Email has successfully been sent.';
        } else {
            show_error($this->email->print_debugger());
        }
    }

}

// end of class
?>