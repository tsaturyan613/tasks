<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header'); ?>  
    </head>
    <body>
        
        <?php $this->load->view('common/header_nav_v6'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="voor">
            <div class="container">
<!--                <pre>
                        <?php print_r($query); ?>
                    </pre>-->
                <form name="registration" action="" method="post"  enctype="multipart/form-data" class="col-sm-12">
                    <h1>Durafest voor verenigingen</h1>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="stad">
                                <h2>Algemeen</h2>
                                <div class="form-group">
                                    <input type="text" class="form-control" value="<?php echo $query['city_name']; ?>" readonly="" required="" name="city_name" placeholder="Stad">
<!--                                    <select required="" name="city_id" id="city_id" class="form-control" >
                                        <option value="">Select Stad</option>
                                        <?php
                                        if ($cities->num_rows() > 0) {
                                            $i = 1;
                                            foreach ($cities->result() as $row) {
                                                ?>
                                                <option <?php if($query['city_id']==$row->u_id){ echo 'selected'; } ?> value="<?= $row->u_id ?>"><?= $row->city_name ?></option>
                                                <?php
                                                $i++;
                                            }
                                        }
                                        ?>
                                    </select>-->
                                </div>
                                <div class="form-group">
                                    <input value="<?php echo $query['post_code']; ?>" readonly="" type="text" class="form-control" required="" id="postcode" name="postcode"  placeholder="Postcode">
<!--                                    <select required="" name="postcode" id="postcode" class="form-control" >
                                        <option value="<?php echo $query['post_code']; ?>"><?php echo $query['post_code']; ?></option>

                                    </select> -->
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" value="<?php echo $query['street']; ?>" required="" name="street" placeholder="Straat">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" required="" value="<?php echo $query['number']; ?>"  name="number" placeholder="Nummer">
                                </div>
                                <div class="form-group">
                                    <input type="file" class="form-control"  name="u_image" placeholder="profile image">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="stad mx-auto">
                                <h2>Vereniging</h2>
                                <div class="dropdown stdr">
                                    <input type="text" class="form-control" value="<?php echo $query['association_name']; ?>" readonly="" name="" placeholder="Vereniging">
<!--                                    <select class="form-control" required="" id="association" name="association">
                                        <option id="association_sec" value="<?php echo $query['association']; ?> "><?php echo $query['association']; ?> </option>
                                    </select>-->
                                    <!--<input type="text" style="display: none;" class="form-control" id="association_add" name="association_add" placeholder="Vereniging">-->
                                </div>
                            </div>
                            <br>
                            <div class="stad mx-auto">
                                <h2>Login Credential</h2>
                                <div class="form-group">
                                    <input type="text" required="" readonly="" value="<?php echo $query['email']; ?>"  class="form-control"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" id="" name="login_email" placeholder="Login Email">
                                    
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="txtPassword" name="login_password" placeholder="Login Password">
                                </div>
                                <div class="form-group">
                                    <input type="password"  class="form-control" id="txtConfirmPassword" name="" placeholder="Confirm Login Password">
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4"><div class="stad ml-auto">
                                <h2>Algemeen</h2>
                                <div class="form-group">
                                    <input type="text" class="form-control" required="" value="<?php echo $query['f_name']; ?>"  name="f_name" placeholder="Vornaam">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" required="" name="name" value="<?php echo $query['name']; ?>"  placeholder="Naam">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" required="" name="phone" value="<?php echo $query['phone']; ?>"  placeholder="Telefoon">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" required="" name="gsm" value="<?php echo $query['gsm']; ?>"  placeholder="GSM">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" required="" name="email" value="<?php echo $query['email']; ?>"  placeholder="Emailadres">
                                </div>
                            </div></div> 
                    </div>
                    <button type="submit" id="submtBtn" class="btn btn-primary submt">Account Edit</button>
                </form>
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

//        $('#login_email').on("change blur", function () {
//            emailValid();
//        });
//
//        $('#submtBtn').on("click", function () {
//            emailValid();
//        });
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
                        $('#login_email').focus();
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
        $('#city_id').change(function () {
            var data = "";
            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>frontend/home/getPostCode",
                data: "city_name=" + $('#city_id').val(),
                async: false,
                success: function (response) {
                    $('#postcode').html(response);
                    get_vereniging();
                    $('#city_name').val($('#city_id :selected').text());

                },
                error: function () {
                    alert('Error occured');
                }
            });

        });
    </script>
</html>
