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
                                    <div class="portlet-body">
                                        <form action="" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
<!--                                            <pre> <?php
                                            print_R($query);
                                            ?></pre>-->
                                            <div class="form-body">
                                                <div class="portlet-title">
                                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Banner Section </span> </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_image'); ?></label>
                                                            <input type="file" name="banner_image" id="banner_image"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">  </label>
                                                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['banner_image']; ?>" width="100px" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_text_1'); ?></label>
                                                            <input type="text" value="<?php echo $query['banner_text_1']; ?>" name="banner_text_1" id="banner_text_1"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_text_2'); ?></label>
                                                            <input type="text" value="<?php echo $query['banner_text_2']; ?>" name="banner_text_2" id="banner_text_2"  class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                </div>


                                            </div>
                                            <div class="form-actions right"><button id="frmSubmit" type="submit" class="btn blue"> <i class="fa fa-check"></i> Save  </button> </div>
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