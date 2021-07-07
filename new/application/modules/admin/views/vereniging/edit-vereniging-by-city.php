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
                                        <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Edit vereniging</span> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <form action="<?php echo base_url(); ?>admin/vereniging_management/edit_vereniging_by_city" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <input type="hidden" name="v_id" id="id" value="<?php echo $query['v_id']; ?>" />
                                            <div class="form-body">
                                                
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group"> 
                                                            <label class="control-label">Land</label> 
                                                            <select required="" name="country_name" id="country_name" class="form-control" >
                                                                <option value="">Select Stad</option>
                                                                <?php if ($country->num_rows() > 0){ $i=1; foreach ($country->result() as $row){  if($row->country ==''){ continue; }?>
                                                                <option <?php if($query['country_name']==$row->country){ echo 'selected';} ?> value="<?=$row->country?>"><?=$row->country?></option>
                                                                <?php $i++; } } ?>
                                                            </select>                                                          
                                                        </div>
                                                    </div>
                                                    <?php 
                                                    $city_name = $this->common_model->RetriveRecordByWhereRow('users', array('u_id'=>$query['city_id']));

                                                    // check($city_name);
                                                    ?>

                                                    <div class="col-md-4">
                                                        <div class="form-group"> 
                                                            <label class="control-label">Postcode - state</label>    
                                                            <select name="post_code" id="post_code" class="form-control" >
                                                                <option value="<?php echo $query['post_code'].'|'.$city_name['u_id']; ?>"><?php echo $query['post_code'].'|'.$city_name['city_name']; ?></option>
                                                            </select> 
                                                        </div>
                                                    </div>


                                                    <div class="col-md-4">
                                                        <div class="form-group"> 
                                                            <label class="control-label">Vereniging</label> 
                                                            <input type="text"  value="<?php echo $query['association']; ?>" required="" name="association" id="association" class="form-control" placeholder="Vereniging"> 
                                                        </div>
                                                    </div>
                                                </div>
                                                
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
        <script>
            $("#addContact").on("click", function(){
            var html = '<div class="clearfix"></div>\n\
        <hr><div class="row">\n\
                                                    <div class="col-md-6">\n\
                                                            <div class="form-group"> <label class="control-label">Voornaam</label> <input required="" type="text"  name="Voornaam[]" class="form-control" placeholder="Voornaam"> </div>\n\
                                                        </div>\n\
                                                        <div class="col-md-6">\n\
                                                            <div class="form-group"> <label class="control-label">Naam</label> <input type="text" name="Naam[]"  class="form-control" placeholder="Naam">  </div>\n\
                                                        </div>\n\
                                                        <div class="col-md-6">\n\
                                                            <div class="form-group"> <label class="control-label">Dienst</label> <input required="" type="text"  name="Dienst[]" class="form-control" placeholder="Dienst"> </div>\n\
                                                        </div>\n\
                                                        <div class="col-md-6">\n\
                                                            <div class="form-group"> <label class="control-label">Functie</label> <input type="text" name="Functie[]"  class="form-control" placeholder="Functie">  </div>\n\
                                                        </div>\n\
                                                        <div class="col-md-4">\n\
                                                            <div class="form-group"> <label class="control-label">Telefoon</label> <input required="" type="text"  name="Telefoon[]" class="form-control" placeholder="Telefoon"> </div>\n\
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


<script>
            $("#msg_div").fadeOut(7000);
            
             $('#country_name').change(function () {
            var data = "";
            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>admin/vereniging_management/getCityPostCode",
                data: "country_name=" + $('#country_name').val(),
                async: false,
                success: function (response) {
                    $('#post_code').html(response);
                },
                error: function () {
                    alert('Error occured');
                }
            });

        });
        </script>