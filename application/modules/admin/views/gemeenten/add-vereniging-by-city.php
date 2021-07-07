<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <?php $this->load->view('common/header_include'); ?>\

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
                                        <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Add Vereniging by Steden</span> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <form action="<?php echo base_url(); ?>admin/gemeenten_management/add_vereniging_by_city" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <div class="form-body">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group"> 
                                                            <label class="control-label">Stad</label> 
                                                            <select required="" name="city_name" id="city_name" class="form-control" >
                                                                <option value="">Select Stad</option>
                                                                <?php if ($cities->num_rows() > 0){ $i=1; foreach ($cities->result() as $row){ ?>
                                                                <option value="<?=$row->u_id?>"><?=$row->city_name?></option>
                                                                <?php $i++; } } ?>
                                                            </select>                                                          
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Postcode</label> 
                                                            <input type="text" required="" name="post_code" id="post_code" class="form-control" placeholder="Postcode">  
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group"> 
                                                            <label class="control-label">Vereniging</label> 
                                                            <input type="text" required="" name="association" id="association" class="form-control" placeholder="Vereniging"> 
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-actions right"><button id="frmSubmit" type="submit" class="btn blue"> <i class="fa fa-check"></i> Submit</button> </div>
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
       <script>
            $("#msg_div").fadeOut(7000);
        </script>
    </body>

</html>