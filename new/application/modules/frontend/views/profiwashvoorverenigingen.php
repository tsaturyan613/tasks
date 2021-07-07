<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>   
    </head>
    <body> 
        <?php $this->load->view('common/header_nav_v5'); ?>  
        <section id="innerbanner">
            <div class="container"> 
                <div class="row">
                    <div class="col-sm-6">
                        <div class="text_inner">
                            <h1>Maak een account aan</h1>
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <div class="cart-sec">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="comman-title text-center">
                           Registratieformulier
                        </h2>
                        <form name="registration" action="<?php echo base_url(); ?>user/register_verenigingen" method="post" class="col-sm-12">
                           
                            <div class="card box-sec">
                                <div class="card-header text-center">
                                   Naam bedrijf / Vereniging
                                </div>
                                <div class="card-body">
                                    <div class="row rowX">
                                        <div class="col">
                                            <!--                      <div class="select-cover1">
                                                                     <select class="form-control" required="" id="association" name="association">
                                                                                    <option id="association_sec" value="">Vereniging</option>
                                                                                </select>
                                                                                <input type="text" style="display: none;" class="form-control" id="association_add" name="association_add" placeholder="Vereniging" />
                                                                  </div>-->

                                            <input type="hidden"  name="association" value="0">
                                            <input type="text"  class="form-control" id="association_add" name="association_add" placeholder="Naam">
                                        </div>
                                        <div class="col">
                                        </div>
                                    </div>
                                </div>
                            </div>
                             <div class="card box-sec">
                                <div class="card-header text-center">
                                    Adres bedrijf / Vereniging
                                </div>
                                <div class="card-body">
                                    <div class="row rowX">
                                        <div class="col">
                                            <div class="select-cover1">
                                                <select required="" name="country_name" id="country_name" class="form-control" >
                                                    <option value="">Selecteer Land</option>
                                                    <?php
                                                    if ($country->num_rows() > 0) {
                                                        $i = 1;
                                                        foreach ($country->result() as $row) {
                                                            if($row->country ==''){
                                                                continue;
                                                            }
                                                            ?>
                                                            <option value="<?= $row->country ?>"><?= $row->country?></option>
                                                            <?php
                                                            $i++;
                                                        }
                                                    }
                                                    ?>
                                                </select>
                                                <!-- <input type="hidden" id="country_name" name="country_name" > -->
                                            </div>
                                        </div>
                                        <div class="col">
                                            <div class="select-cover1">
                                                <select required="" name="postcode" id="postcode" class="form-control" >
                                                    <option value="">Selecteer postcode</option>
                                                </select> 
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row rowX">
                                        <div class="col">
                                            <input type="text" class="form-control mb-0" required="" name="street" placeholder="Straat*">
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control mb-0" required="" name="number" placeholder="Nummer*">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card box-sec">
                                <div class="card-header text-center">
                                    Creëer  Login en Wachtwoord
                                </div>
                                <div class="card-body">
                                    <div class="row rowX">
                                        <div class="col">
                                            <input type="text" required="" class="form-control"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" id="login_email" name="login_email" placeholder="Login E-mail">
                                            <label id="login_email_error" class="error" style="color:red; display:none;"></label>
                                        </div>
                                        <div class="col">
                                            <input type="password" required="" class="form-control" id="txtPassword" name="login_password" placeholder="Login Wachtwoord">
                                        </div>
                                    </div>
                                    <div class="row rowX">
                                        <div class="col">

                                        </div>
                                        <div class="col">
                                            <input type="password" required="" class="form-control  mb-0" id="txtConfirmPassword" name="" placeholder="Bevestig Wachtwoord">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card box-sec">
                                <div class="card-header text-center">
                                    Gegevens Contactpersoon
                                </div>
                                <div class="card-body">
                                    <div class="row rowX">
                                        <div class="col">
                                            <input type="text" class="form-control" required="" name="f_name" placeholder="Voornaam*">
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" required="" name="name" placeholder="Naam*">
                                        </div>
                                    </div>
                                    <div class="row rowX">
                                        <div class="col">
                                            <input type="tel" class="form-control" required="" name="phone" placeholder="Telefoon*">
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" required="" name="gsm" placeholder="GSM">
                                        </div>
                                    </div>
                                    <div class="row rowX">
                                        <div class="col">
                                            <input type="email" class="form-control mb-0" required="" name="email" placeholder="E-mail*">
                                        </div>
                                        <div class="col"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 text-center">
                                    <button type="submit" id="submtBtn"  class="bttn-green">Account aanmaken</button>
                                </div>
                            </div>
                        </form>
                    </div> 
                </div>
            </div>
        </div>
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
        $('#login_email').on("change blur", function () {
            emailValid();
        });
        $('#submtBtn').on("click", function () {
            emailValid();
        });
        function emailValid() {
            $('#login_email_error').hide();
            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>frontend/user/check_email_exist",
                data: "email=" + $('#login_email').val(),
                async: false,
                success: function (response) {
                    if (response == '1') {
                        $('#login_email_error').html('Email already exist');
                        $('#login_email_error').show();
//                        $('#login_email').focus();
                    }
                },
                error: function () {
                    alert('Error occured');
                }
            });
        }
        $('#postcode').change(function () {
            var data = "";
            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>get_vereniging",
                data: "postcode=" + $('#postcode').val(),
                async: false,
                success: function (response) {
                    $('#association').html(response);
                },
                error: function () {
                    alert('Error occured');
                }
            });
        });
        function get_vereniging() {
            var data = "";
            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>get_vereniging",
                data: "postcode=" + $('#postcode').val(),
                async: false,
                success: function (response) {
                    $('#association').html(response);
                    if ($('#association').val() == 0) {
                        $('#association_add').show();
                        $('#association_add').attr("required", "required");
                    } else {
                        $('#association_add').hide();
                        $('#association_add').attr("required", false);
                    }
                },
                error: function () {
                    alert('Error occured');
                }
            });
        }
        $('#association').change(function () {
            var data = "";
            if ($('#association').val() == 0) {
                $('#association_add').show();
                $('#association_add').attr("required", "required");
            } else {
                $('#association_add').hide();
                $('#association_add').attr("required", false);
            }
        });
        $('#country_name').change(function () {
            var data = "";
            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>frontend/home/getCityPostCode",
                data: "country_name=" + $('#country_name').val(),
                async: false,
                success: function (response) {
                    $('#postcode').html(response);
//                    get_vereniging();
                    // $('#country_name').val($('#country_id :selected').text());
                },
                error: function () {
                    alert('Error occured');
                }
            });
        });
    </script>
</html>