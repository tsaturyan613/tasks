<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <?php $this->load->view('common/header_include'); ?>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/global/css/jquery.datetimepicker.min.css">

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-md">
        <div class="page-wrapper">
            <?php $this->load->view('common/header'); ?>
            <div class="clearfix"> </div>
            <div class="page-container">
                <?php $this->load->view('common/sidebar'); ?>
                <div class="page-content-wrapper">
                    <div class="page-content">

                        <div class="row">
                            <div class="col-md-12">
                                <div id="msg_div">
                                    <?php if ($this->session->flashdata('success') != '') { ?>
                                        <?php echo $this->session->flashdata('success'); ?>
                                    <?php } ?>
                                </div>
                                <div class="portlet light portlet-fit portlet-form bordered">
                                    <div class="portlet-title">
                                        <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Edit gemeenten</span> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <form action="<?php echo base_url(); ?>admin/vereniging_management/update_vereniging" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <input type="hidden" name="a_id" id="id" value="<?php echo $query['a_id']; ?>" />
                                            <div class="form-body">
                                                <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase"> Algemeen</span></div><br>
                                                <div class="clearfix"></div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Stad</label> <input type="text" required="" name="city_name" id="city_name" value="<?php echo $query['city_name']; ?>" class="form-control" placeholder="Stad"> <label for="city_name" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Postcode</label> <input type="text" required="" name="post_code" id="postcode" value="<?php echo $query['post_code']; ?>" class="form-control" placeholder="Postcode"> <label for="post_code" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Straat</label> <input required="" type="text" name="street" id="street"   class="form-control" value="<?php echo $query['street']; ?>" placeholder="Straat"> <label for="street" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Nummer</label> <input type="text" id="number" name="number" class="form-control" value="<?php echo $query['number']; ?>" required="" placeholder="Nummer"> <label for="number" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                </div>

                                                <div class="clearfix"></div>
                                                <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase"> Login Details</span></div><br>
                                                <div class="clearfix"></div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Login Email</label> <input type="email" required="" name="login_email" value="<?php echo $query['email']; ?>"  id="login_email" class="form-control" placeholder="Stad"> <label for="login_email" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Password </label> <input type="password" name="login_password" id="txtPassword" class="form-control" placeholder="Postcode"> <p>[ * If you don't want to change password,then leave it blank ]</p></div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Confirm Password</label> <input type="password"  id="txtConfirmPassword" class="form-control" placeholder="Postcode"> <label for="txtConfirmPassword" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                </div>


                                                <div class="clearfix"></div>
                                                <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase"> Vereniging</span></div><br>
                                                <div class="clearfix"></div>

                                                <div class="row">

                                                    <div class="col-md-12">
                                                        <div class="form-group">  
                                                            <select class="form-control" required="" id="association" name="association">
                                                                <option id="association_sec" value="">Vereniging</option>
                                                            </select> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase"> Algemeen</span></div><br>
                                                <div class="clearfix"></div>

                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group"> 
                                                            <label class="control-label">Vornaam</label> 
                                                            <input type="text" value="<?php echo $query['f_name']; ?>" id="f_name" name="f_name" class="form-control" required="" placeholder="Vornaam">  
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> 
                                                            <label class="control-label">Naam</label> 
                                                            <input type="text" id="name" name="name" value="<?php echo $query['name']; ?>" class="form-control" required="" placeholder="Naam">  
                                                        </div>
                                                    </div>
                                                    <div class="clearfix"></div>

                                                    <div class="col-md-4">
                                                        <div class="form-group"> 
                                                            <label class="control-label">Telefoon</label> 
                                                            <input type="text" id="phone" name="phone" value="<?php echo $query['phone']; ?>" class="form-control" required="" placeholder="Telefoon">  
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> 
                                                            <label class="control-label">GSM</label> 
                                                            <input type="text" id="gsm" name="gsm" value="<?php echo $query['gsm']; ?>" class="form-control" required="" placeholder="GSM">  
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> 
                                                            <label class="control-label">Emailadres</label> 
                                                            <input type="text" id="email" name="email" value="<?php echo $query['email']; ?>" class="form-control" required="" placeholder="Emailadres">  
                                                        </div>
                                                    </div>

                                                </div>

                                            </div>
                                            <div class="form-actions right"><button id="frmSubmit" type="submit" class="btn blue"> <i class="fa fa-check"></i> Account aanmaken</button> </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <?php $this->load->view('common/footer'); ?>
        </div>
        <?php // $this->load->view('common/quick_nav'); ?>
        <?php $this->load->view('common/js_include'); ?>
        <script src="<?php echo base_url(); ?>assets/admin/global/scripts/jquery.datetimepicker.full.min.js"></script>
        <script>


            $("#msg_div").fadeOut(7000);
        </script>
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
            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>get_vereniging",
                data: "postcode=<?php echo $query['post_code']; ?>",
                async: false,
                success: function (response) {
                    $('#association').html(response);
                },
                error: function () {
                    alert('Error occured');
                }
            });
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
        </script>
    </body>

</html>