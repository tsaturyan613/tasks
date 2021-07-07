<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <?php $this->load->view('common/header_include'); ?>
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
                                        <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Settings</span> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <form action="<?php echo base_url(); ?>admin/admin/admin_setting" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <div class="form-body">

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Selecteer minimale bestelhoeveelheid (In boxen)</label>
                                                            <input type="number" required="" value="<?php echo $min_order_box['value'] ?>" min="1" name="num_of_box_order" id="p_name" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                   
                                                </div>
                                            <!--                                                
                                                <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label">Aantal cups per box</label>
                                                        <input type="text" required="" name="qty" id="qty" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group"> <label class="control-label">Afbeelding</label> 
                                                        <input type="file" required="" name="image" id="image" class="form-control" > 
                                                    </div>
                                                </div>
                                                </div>
                                            -->
                                                

                                            </div>
                                            <input type="hidden" name="action" value="update">
                                            <div class="form-actions right">
                                                <button id="frmSubmit" type="submit" class="btn blue"> <i class="fa fa-check"></i> Update </button> 
                                            </div>
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
       
    </body>

</html>