<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
        <style>
            .form-control.error{
                border: 1px solid red;
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v5'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="login">
            <div class="container">
                <div class="login_box text-center">
                    <h5>Wachtwoord vergeten</h5>
                    <span id="msg_box">
                        <?php if ($this->session->flashdata('success') != '') { ?>
                            <?php echo $this->session->flashdata('success'); ?>
                        <?php } ?>
                    </span>
                    <form method="post">
                        <div id="email_sec">
                            <div class="form-group">
                                <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                            </div>
                            <button type="button" id="sendMail" class="btn btn-primary sumt">Submit</button>
                        </div>
                        <div id="change_sec" style=" display:none; ">
                            <div class="form-group">
                                <input type="text" class="form-control" id="otp" placeholder="Code" name="otp">
                            </div>  
                            <div class="form-group">
                                <input type="password" class="form-control" id="password" placeholder="Nieuw wachtwoord" name="password">
                            </div>                            
                            <div class="form-group">
                                <input type="password" class="form-control" id="con_password" placeholder="bevestig nieuw wachtwoord " >
                            </div>
                            <button type="button" id="changePass" class="btn btn-primary sumt">Reset</button>
                        </div>
                    </form>


                </div>
            </div>

        </section>



        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
    <script>
        $('#sendMail').click(function () {
            $(".error").removeClass('error');
            $("#msg_box").html('');
            if ($('#email').val() != '') {
                var email = $('#email').val();
            } else {
                $("#email").addClass('error');
                return false;
            }

            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>forgot_password_submit",
                data: { chk_type:'email',email: email },
                async: false,
                success: function (response) {
                    if(response=='sent'){
                        $("#msg_box").html('<div class="alert alert-success"> <strong>Gelukt!</strong> Controleer uw email voor de code. </div>');
                        $("#email_sec").hide();
                        $("#change_sec").show();
                    }else if(response=='not_sent'){
                        $("#msg_box").html('<div class="alert alert-danger">Please try again. <strong></div>');
                    }else if(response=='inactive'){
                        $("#msg_box").html('<div class="alert alert-danger">Your mail id is not active. <strong></div>');
                    }else if(response=='not'){
                        $("#msg_box").html('<div class="alert alert-danger">Your mail id is not registered. <strong></div>');
                    }
                },
                error: function () {
                    alert('Error occured');
                }
            });

        });
        $('#changePass').click(function () {
            $(".error").removeClass('error');
            $("#msg_box").html('');
            
                var email = $('#email').val();
            
            if ($('#otp').val() != '') {
                var otp = $('#otp').val();
            } else {
                $("#otp").addClass('error');
                return false;
            }
            if ($('#password').val() != '') {
                var password = $('#password').val();
            } else {
                $("#password").addClass('error');
                return false;
            }
            if ($('#con_password').val() != '') {
                var con_password = $('#con_password').val();
            } else {
                $("#con_password").addClass('error');
                return false;
            }
            if(password!='' && con_password!=''){
                if(password!=con_password){
                    $("#con_password").addClass('error');
                }
            }

            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>forgot_password_submit",
                data: { chk_type:'otp',otp: otp,password:password,email:email },
                async: false,
                success: function (response) {
                    if(response=='ok'){
                        $("#msg_box").html('<div class="alert alert-success"> <strong>Success!</strong> Password Update Successful. </div>');
                        $("#change_sec").hide();
                    }else if(response=='no'){
                        $("#msg_box").html('<div class="alert alert-danger">Please try again. <strong></div>');
                    }
                },
                error: function () {
                    alert('Error occured');
                }
            });

        });
    </script>
</html>
