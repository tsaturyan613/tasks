<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header'); ?>  
        <style>
            .div_left{float: left; margin-bottom: 40px;}
        </style>
    </head>
    <body>
        <?php $this->load->view('common/header_nav'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="voor">
            <div class="container">
                <h1>Durafest voor steden & gemeenten</h1>
                <div class="row">
                    <form name="registration" action="<?php echo base_url(); ?>user/register_gemeenteen" method="post" class="col-sm-12">
                        <div class="col-sm-4 div_left">
                            <h2 class="two_one pb-4">Algemeen</h2>
                            <div class="stad">
                                <div class="form-group">
                                    <input type="text" required="" value="<?php echo set_value('city_name'); ?>"  class="form-control" name="city_name" placeholder="Stad">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" value="<?php echo set_value('post_code'); ?>" name="post_code" placeholder="Postcode">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" value="<?php echo set_value('street'); ?>" name="street" placeholder="Straat">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" value="<?php echo set_value('number'); ?>" name="number" placeholder="Nummer">
                                </div>                                 
                            </div>
                            <h2 class="two_one pb-4">Login Details</h2>
                            <div class="stad">

                                <div class="form-group">
                                    <input type="text" required="" class="form-control"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" id="login_email" name="login_email" placeholder="Login Email">
                                    <label id="login_email_error" class="error" style="color:red; display:none;"></label>
                                </div>
                                <div class="form-group">
                                    <input type="password" required="" class="form-control" id="txtPassword" name="login_password" placeholder="Login Password">
                                </div>
                                <div class="form-group">
                                    <input type="password" required="" class="form-control" id="txtConfirmPassword" name="" placeholder="Confirm Login Password">
                                </div>
                            </div>
                        </div><br>
                        <div class="col-sm-4 div_left" >
                            <h2 class="two_one pb-4">Contactpersoon</h2>
                            <div class="stad">
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" name="Voornaam[]" placeholder="Voornaam">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" name="Naam[]" placeholder="Naam">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" name="Dienst[]" placeholder="Dienst">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" name="Functie[]" placeholder="Functie">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" name="Telefoon[]" placeholder="Telefoon">
                                </div>
                                <div class="form-group">
                                    <input type="text"required="" class="form-control" name="GSM[]" placeholder="GSM">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" name="Emailadres[]"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Emailadres">
                                </div>
                            </div>
                        </div>
                        <span id="add_more_sec"></span>
                        <div class="col-sm-4 div_left">
                            <h2 class="two_one pb-4">Nog een contactpersoon toevoegen</h2>
                            <div class="stad">
                                <img id="add_contact_div" src="<?php echo base_url(); ?>assets/front/images/pl.jpg" style="margin:90px auto 0 auto; display:block; cursor: pointer;">

                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <button type="submit" id="submtBtn" class="btn btn-primary submt">Account aanmaken</button>
                    </form>
                </div>

            </div>



        </section>


        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer'); ?>  


    </body>
    <?php $this->load->view('common/footer_js'); ?>  
    <script type="text/javascript">
        window.onload = function () {
            var txtPassword = document.getElementById("txtPassword");
            var txtConfirmPassword = document.getElementById("txtConfirmPassword");
            txtPassword.onchange = ConfirmPassword;
            txtConfirmPassword.onkeyup = ConfirmPassword;
            function ConfirmPassword() {
                txtConfirmPassword.setCustomValidity("");
                if (txtPassword.value != txtConfirmPassword.value) {
                    txtConfirmPassword.setCustomValidity("Passwords do not match.");
                }
            }
        }
    </script>
    <script>
        
         $('#login_email').on("change blur", function () {
           emailValid();
        });
         $('#submtBtn').on("click", function () {
           emailValid();
        });
        
        function emailValid(){
            $('#login_email_error').hide();      
            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>frontend/user/check_email_exist",
                data: "email=" + $('#login_email').val(),
                async: false,
                success: function (response) {
                    if(response=='1'){
                        $('#login_email_error').html('Email already exist');
                        $('#login_email_error').show();
                        $('#login_email').focus();
                    }
                },
                error: function () {
                    alert('Error occured');
                }
            });
        }
        
        $("#add_contact_div").on("click", function () {
            var html = '<div class="col-sm-4 div_left" >\n\
                            <h2 class="two_one pb-4">Contactpersoon</h2>\n\
                            <div class="stad">\n\
                                <div class="form-group">\n\
                                    <input type="text" required="" class="form-control" name="Voornaam[]" placeholder="Voornaam">\n\
                                </div>\n\
                                <div class="form-group">\n\
                                    <input type="text" required="" class="form-control" name="Naam[]" placeholder="Naam">\n\
                                </div>\n\
                                <div class="form-group">\n\
                                    <input type="text" required="" class="form-control" name="Dienst[]" placeholder="Dienst">\n\
                                </div>\n\
                                <div class="form-group">\n\
                                    <input type="text" required="" class="form-control" name="Functie[]" placeholder="Functie">\n\
                                </div>\n\
                                <div class="form-group">\n\
                                    <input type="text" required="" class="form-control" name="Telefoon[]" placeholder="Telefoon">\n\
                                </div>\n\
                                <div class="form-group">\n\
                                    <input type="text"required="" class="form-control" name="GSM[]" placeholder="GSM">\n\
                                </div>\n\
                                <div class="form-group">\n\
                                    <input type="text" required="" class="form-control" name="Emailadres[]" placeholder="Emailadres">\n\
                                </div>\n\
                            </div>\n\
                        </div>';
            $("#add_more_sec").append(html);
        });
    </script>
</html>
