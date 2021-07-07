<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
        <style>
            .div_left{float: left; margin-bottom: 40px;}
        </style>
    </head> 
    <body>
        <?php $this->load->view('common/header_nav_v2'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="cart-sec">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="comman-title text-center">
                            Mijn Account
                        </h2>
                    </div>
                </div>

                <div class="row">
<!--                    <pre>
                    <?php print_r($query); ?>
                    </pre>-->
                    <form name="registration" action="" method="post"  enctype="multipart/form-data" class="col-sm-12">

                        <div class="card box-sec">
                            <div class="card-header text-center">
                                Algemeen
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <input type="text" required="" value="<?php echo $query['city_name']; ?>"  class="form-control" name="city_name" placeholder="Stad">
                                    </div>
                                    <div class="col">
                                        <input type="text" required="" class="form-control" value="<?php echo $query['post_code']; ?>" name="post_code" placeholder="Postcode">
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col">
                                        <input type="text" class="form-control" value="<?php echo $query['street']; ?>" name="street" placeholder="Straat">
                                    </div>
                                    <div class="col">
                                        <input type="text"   class="form-control" value="<?php echo $query['number']; ?>" name="number" placeholder="Nummer">
                                    </div>
                                </div>


                                <div class="row rowX">
                                    <!--                                    <div class="col col-xs-12">
                                                                            <input type="text" required="" class="form-control mb-0" value="<?php echo $query['street']; ?>" name="street" placeholder="Straat">
                                                                        </div>-->
                                    <!--                                    <div class="col col-xs-12">
                                                                            <input type="file" class="form-control pro-file mb-0"  name="u_image" placeholder="profile image">
                                                                        </div>-->
                                </div>


                            </div>
                        </div>



                        <div class="card box-sec">
                            <div class="card-header text-center">
                                Login Details
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <input type="text" required="" class="form-control" readonly="" value="<?php echo $query['email']; ?>"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="login_email" placeholder="Login Email">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col">
                                        <input type="password" class="form-control" id="txtPassword" name="login_password" placeholder="Login Password">
                                    </div>
                                    <div class="col">
                                        <input type="password" class="form-control" id="txtConfirmPassword" name="con_login_password" placeholder="Confirm Login Password">
                                    </div>
                                </div>

                            </div>
                        </div>


<? /* ?>
                        
                        <div class="col-sm-4 div_left d-none">
                            <h2 class="two_one pb-4">Algemeen</h2>
                            <div class="stad">
                                <div class="form-group">
                                    <input type="text" required="" value="<?php echo $query['city_name']; ?>"  class="form-control" name="city_name" placeholder="Stad">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" value="<?php echo $query['post_code']; ?>" name="post_code" placeholder="Postcode">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" value="<?php echo $query['street']; ?>" name="street" placeholder="Straat">
                                </div>
                                <div class="form-group">
                                    <input type="text" required="" class="form-control" value="<?php echo $query['number']; ?>" name="number" placeholder="Nummer">
                                </div>
                                <!--                                <div class="form-group">
                                                                    <input type="file" class="form-control"  name="u_image" placeholder="profile image">
                                                                </div>-->
                            </div>
                            <h2 class="two_one pb-4">Login Details </h2>
                            <div class="stad">

                                <div class="form-group">
                                    <input type="text" required="" class="form-control" readonly="" value="<?php echo $query['email']; ?>"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name="login_email" placeholder="Login Email">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="txtPassword" name="login_password" placeholder="Login Password">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="txtConfirmPassword" name="" placeholder="Confirm Login Password">
                                </div>
                            </div>
                        </div>
                        
                        
                        <? */ ?>
                        <br>

                        <?php
                        $contact_details = json_decode($query['contact_details']);
//                        print_r($contact_details->Voornaam);
                        for ($i = 0; $i < count($contact_details->Voornaam); $i++) {
                            ?>

                            <div class="card box-sec">
                                <div class="card-header text-center">
                                    Contactpersoon
                                </div>
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col">
                                            <input type="text" required="" class="form-control" value="<?php echo $contact_details->Voornaam[$i]; ?>" name="Voornaam[]" placeholder="Voornaam">
                                        </div>
                                        <div class="col">
                                            <input type="text" required="" class="form-control"  value="<?php echo $contact_details->Naam[$i]; ?>" name="Naam[]" placeholder="Naam">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col">
                                            <input type="text" required="" class="form-control"  value="<?php echo $contact_details->Dienst[$i]; ?>" name="Dienst[]" placeholder="Dienst">
                                        </div>
                                        <div class="col">
                                            <input type="text" required="" class="form-control"  value="<?php echo $contact_details->Functie[$i]; ?>" name="Functie[]" placeholder="Functie">
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="col">
                                            <input type="text" required="" class="form-control" value="<?php echo $contact_details->Telefoon[$i]; ?>"  name="Telefoon[]" placeholder="Telefoon">
                                        </div>
                                        <div class="col">
                                            <input type="text"required="" class="form-control"  value="<?php echo $contact_details->GSM[$i]; ?>" name="GSM[]" placeholder="GSM">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col">
                                            <input type="text" required="" class="form-control mb-0"  value="<?php echo $contact_details->Emailadres[$i]; ?>" name="Emailadres[]"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Emailadres">
                                        </div>
                                        <div class="col">

                                        </div>
                                    </div>


                                </div>

                            </div>

<? /* ?>
                            <div class="col-sm-4 div_left d-none" >
                                <h2 class="two_one pb-4">Contactpersoon</h2>
                                <div class="stad">
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control" value="<?php echo $contact_details->Voornaam[$i]; ?>" name="Voornaam[]" placeholder="Voornaam">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control"  value="<?php echo $contact_details->Naam[$i]; ?>" name="Naam[]" placeholder="Naam">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control"  value="<?php echo $contact_details->Dienst[$i]; ?>" name="Dienst[]" placeholder="Dienst">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control"  value="<?php echo $contact_details->Functie[$i]; ?>" name="Functie[]" placeholder="Functie">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control" value="<?php echo $contact_details->Telefoon[$i]; ?>"  name="Telefoon[]" placeholder="Telefoon">
                                    </div>
                                    <div class="form-group">
                                        <input type="text"required="" class="form-control"  value="<?php echo $contact_details->GSM[$i]; ?>" name="GSM[]" placeholder="GSM">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" required="" class="form-control"  value="<?php echo $contact_details->Emailadres[$i]; ?>" name="Emailadres[]"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Emailadres">
                                    </div>
                                </div>
                            </div>
                        
                        <? */ ?>
                        
                        <?php } ?>

                        <span id="add_more_sec"></span>
                        <div class="col-sm-4 div_left">
                            <h2 class="two_one pb-4 text-center">Nog een contactpersoon toevoegen</h2>
                            <div class="stad">
                                <img id="add_contact_div" src="<?php echo base_url(); ?>assets/front/images/pl.jpg" style="margin:90px auto 0 auto; display:block; cursor: pointer;">

                            </div>
                        </div>
                        <div class="clearfix"></div>
                        <div class="text-center">
                            <button type="submit" id="submtBtn" class="bttn-green">Opslaan</button>
                        </div>
                    </form>
                </div>

            </div>



        </section>


        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
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

//         $('#login_email').on("change blur", function () {
//           emailValid();
//        });
//         $('#submtBtn').on("click", function () {
//           emailValid();
//        });

//        function emailValid(){
//            $('#login_email_error').hide();      
//            $.ajax({
//                type: "post",
//                url: "<?php echo base_url(); ?>frontend/user/check_email_exist",
//                data: "email=" + $('#login_email').val(),
//                async: false,
//                success: function (response) {
//                    if(response=='1'){
//                        $('#login_email_error').html('Email already exist');
//                        $('#login_email_error').show();
//                        $('#login_email').focus();
//                    }
//                },
//                error: function () {
//                    alert('Error occured');
//                }
//            });
//        }

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
