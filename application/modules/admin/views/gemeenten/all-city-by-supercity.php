<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <?php $this->load->view('common/header_include'); ?>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/global/css/jquery.datetimepicker.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/css/select2.min.css" rel="stylesheet" />

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
                                        <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Assign gemeenten under a Supercity</span> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <form action="<?php echo base_url(); ?>admin/gemeenten_management/assign_city_by_supercity" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <input type="hidden" name="u_id" id="id" value="<?php echo $this->uri->segment(4); ?>" />
                                            <div class="form-body">


                                                <div class="clearfix"></div>
                                                <!--<pre>-->
                                                    <?php // print_r($assign_city); ?>
                                                    <?php foreach ($assign_city as $row) {  $cities[]=$row->u_id; ?>
                                                <input type="hidden" name="old_city_id[]" value="<?php echo $row->u_id; ?>"/>
                                                   <?php  } ?>
                                                <!--</pre>-->
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group"> <label class="control-label">Select Cities</label> 
                                                            <select id="multiple" name="city_id[]" class="js-states form-control" multiple>
                                                                <?php foreach ($all_city->result() as $row) { ?>
                                                                    <option <?php if(in_array($row->u_id,$cities)){ echo 'selected'; } ?> value="<?php echo $row->u_id ?>"><?php echo $row->city_name ?> : <?php echo $row->post_code ?></option>
<?php } ?>
                                                            </select>

                                                            <label for="login_email" class="error" style="color:red; display:none;"></label> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>






                                            </div>
                                            <div class="form-actions right"><button id="frmSubmit" type="submit" class="btn blue"> <i class="fa fa-check"></i> Save</button> </div>
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
<?php // $this->load->view('common/quick_nav');   ?>
<?php $this->load->view('common/js_include'); ?>
        <script src="<?php echo base_url(); ?>assets/admin/global/scripts/jquery.datetimepicker.full.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.6-rc.0/js/select2.min.js"></script>
        <script>

            $("#multiple").select2({
                placeholder: "Select City",
                allowClear: true
            });
        </script>


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
        $("#addContact").on("click", function () {
            var html = '<div class="clearfix"></div>\n\
    <hr><div class="row">\n\
                                                <div class="col-md-6">\n\
                                                        <div class="form-group"> <label class="control-label">Voornaam</label> <input  type="text"  name="Voornaam[]" class="form-control" placeholder="Voornaam"> </div>\n\
                                                    </div>\n\
                                                    <div class="col-md-6">\n\
                                                        <div class="form-group"> <label class="control-label">Naam</label> <input type="text" name="Naam[]"  class="form-control" placeholder="Naam">  </div>\n\
                                                    </div>\n\
                                                    <div class="col-md-6">\n\
                                                        <div class="form-group"> <label class="control-label">Dienst</label> <input  type="text"  name="Dienst[]" class="form-control" placeholder="Dienst"> </div>\n\
                                                    </div>\n\
                                                    <div class="col-md-6">\n\
                                                        <div class="form-group"> <label class="control-label">Functie</label> <input type="text" name="Functie[]"  class="form-control" placeholder="Functie">  </div>\n\
                                                    </div>\n\
                                                    <div class="col-md-4">\n\
                                                        <div class="form-group"> <label class="control-label">Telefoon</label> <input  type="text"  name="Telefoon[]" class="form-control" placeholder="Telefoon"> </div>\n\
                                                    </div>\n\
                                                    <div class="col-md-4">\n\
                                                        <div class="form-group"> <label class="control-label">GSM</label> <input type="text" name="GSM[]"  class="form-control" placeholder="GSM">  </div>\n\
                                                    </div>    \n\
     <div class="col-md-4">\n\
                                                        <div class="form-group"> <label class="control-label">Emailadres</label> <input type="text" name="Emailadres[]"  class="form-control" placeholder="Emailadres">  </div>\n\
                                                    </div></div>';
            $("#add_more_sec").append(html);
        });
    </script>
</body>

</html>