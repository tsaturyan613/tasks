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
                                        <form action="<?php echo base_url(); ?>admin/gemeenten_management/update_gemeenten" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <input type="hidden" name="u_id" id="id" value="<?php echo $query['u_id']; ?>" />
                                            <div class="form-body">
                                                <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase"> Algemeen</span></div><br>
                                                <div class="clearfix"></div>
                                                <div class="row">

                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Land</label> <input type="text" required="" name="country" id="country" value="<?php echo $query['country']; ?>" class="form-control" placeholder="Land"> <label for="country" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Stad</label> <input type="text" required="" name="city_name" id="city_name" value="<?php echo $query['city_name']; ?>" class="form-control" placeholder="Stad"> <label for="city_name" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Postcode</label> <input type="text" required="" name="post_code" id="post_code" value="<?php echo $query['post_code']; ?>" class="form-control" placeholder="Postcode"> <label for="post_code" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                </div>
<!--                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Straat</label> <input required="" type="text" name="street" id="street"  value="<?php echo $query['street']; ?>" class="form-control" placeholder="Straat"> <label for="street" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Nummer</label> <input type="text" id="number" name="number" value="<?php echo $query['number']; ?>" class="form-control" required="" placeholder="Nummer"> <label for="number" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                </div>-->
                                                <div class="clearfix"></div>
                                                  <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase"> Login Details</span></div><br>
                                                <div class="clearfix"></div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Login Email</label> <input type="email" required="" name="login_email" value="<?php echo $query['email']; ?>"  id="login_email" class="form-control" placeholder="Stad"> <label for="login_email" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Wachtwoord </label> <input type="password" name="login_password" id="txtPassword" class="form-control" placeholder="Wachtwoord"> <p>[ * If you don't want to change password,then leave it blank ]</p></div>
                                                    </div>
                                                     <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Bevestig Wachtwoord</label> <input type="password"  id="txtConfirmPassword" class="form-control" placeholder="Bevestig Wachtwoord"> <label for="txtConfirmPassword" class="error" style="color:red; display:none;"></label> </div>
                                                    </div>
                                                </div>
                                                <div class="clearfix"></div>
                                                <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase"> Contactpersoon</span></div><br>
                                                
                                                <div class="clearfix"></div>

                                                <?php  
                                                $cntData= json_decode($query['contact_details']);
                                                if(count($cntData->Voornaam)>0){ 
                                                    for($i=0;$i<count($cntData->Voornaam);$i++){
                                                    ?>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Voornaam</label> <input  type="text"  name="Voornaam[]" class="form-control" value="<?php echo $cntData->Voornaam[$i]; ?>" placeholder="Voornaam"> </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Naam</label> <input type="text" name="Naam[]"  class="form-control" value="<?php echo $cntData->Naam[$i]; ?>"  placeholder="Naam">  </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Dienst</label> <input  type="text"  name="Dienst[]" value="<?php echo $cntData->Dienst[$i]; ?>"  class="form-control" placeholder="Dienst"> </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Functie</label> <input type="text" name="Functie[]" value="<?php echo $cntData->Functie[$i]; ?>"  class="form-control" placeholder="Functie">  </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Telefoon</label> <input  type="text"  name="Telefoon[]" value="<?php echo $cntData->Telefoon[$i]; ?>"  class="form-control" placeholder="Telefoon"> </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">GSM</label> <input type="text" name="GSM[]"  class="form-control" value="<?php echo $cntData->GSM[$i]; ?>"  placeholder="GSM">  </div>
                                                    </div>                                                
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Emailadres</label> <input type="text" name="Emailadres[]" value="<?php echo $cntData->Emailadres[$i]; ?>"   class="form-control" placeholder="Emailadres">  </div>
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <hr>
                                                </div>
                                                    <?php } }else{ ?>
                                                <div class="row">

                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Voornaam</label> <input  type="text"  name="Voornaam[]" class="form-control" placeholder="Voornaam"> </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Naam</label> <input type="text" name="Naam[]"  class="form-control" placeholder="Naam">  </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Dienst</label> <input  type="text"  name="Dienst[]" class="form-control" placeholder="Dienst"> </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Functie</label> <input type="text" name="Functie[]"  class="form-control" placeholder="Functie">  </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Telefoon</label> <input  type="text"  name="Telefoon[]" class="form-control" placeholder="Telefoon"> </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">GSM</label> <input type="text" name="GSM[]"  class="form-control" placeholder="GSM">  </div>
                                                    </div>                                                
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Emailadres</label> <input type="text" name="Emailadres[]"  class="form-control" placeholder="Emailadres">  </div>
                                                    </div>
                                                    <div class="clearfix"></div>

                                                </div>
                                                <?php } ?>
                                                
                                                <span id="add_more_sec"></span>

                                                <div ><button id="addContact" type="button" class="btn green"> <i class="fa fa-plus"></i>Nog een contactpersoon toevoegen</button> </div>

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
            $("#addContact").on("click", function(){
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