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
                                        <form action="" method="post" class="horizontal-form" enctype="multipart/form-data">
<!--                                            <pre> <?php
                                            print_R($pages);
                                            ?></pre>-->
                                            <div class="form-body">
                                                <input type="hidden" name="id" value="<?php echo $query['id']; ?>" />

                                                <div class="row">
                                                    <div class="col-md-4">
                                                                <div class="form-group">
                                                                    <label class="control-label">Page Name</label>
                                                                    <input type="text" value="<?=$query['page_name']?>" class="form-control" name="page_name" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-8">
                                                                <div class="form-group">
                                                                    <label class="control-label">Page URL</label>
                                                                    <div class="input-group prefix">                           
                                                                        <span class="input-group-addon"><?php echo base_url(); ?></span>
                                                                        <input type="text" value="<?=$query['page_url']?>" class="form-control " name="page_url" />
                                                                    </div>

                                                                </div>
                                                            </div>

                                                    
                                                </div>

                                            </div>

                                            <div class="form-actions right"><button  type="submit" class="btn blue"> <i class="fa fa-check"></i> Save  </button> </div>
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
        <?php // $this->load->view('common/quick_nav');  ?>
        <?php $this->load->view('common/js_include'); ?>
        <script>


            $("#msg_div").fadeOut(7000);
        </script>


        <script>
            $("#addContent").on("click", function () {
            var html = '<div class="row">\n\
                            <div class="col-md-6">\n\
                                <div class="form-group">\n\
                                    <label class="control-label"><?php echo str_replace("_", " ", 'content_image'); ?></label>\n\
                                    <input type="file" name="content_image[]"  class="form-control" placeholder="">\n\
                                </div>\n\
                            </div>\n\
                            <div class="col-md-6">\n\
                                <div class="form-group">\n\
                                    <label class="control-label">  </label>\n\
                                    <img src="<?php echo base_url(); ?>uploads/cms/; ?>" width="100px" />\n\
                                </div>\n\
                            </div>\n\
                            <div class="col-md-12">\n\
                                <div class="form-group">\n\
                                    <label class="control-label"><?php echo str_replace("_", " ", 'content_heading'); ?></label>\n\
                                    <input type="text" value="" name="content_heading[]" id=""  class="form-control" placeholder="">\n\
                                </div>\n\
                            </div>\n\
                            <div class="col-md-12">\n\
                                <div class="form-group">\n\
                                    <label class="control-label"><?php echo str_replace("_", " ", 'content_text'); ?></label>\n\
                                    <textarea name="content_text[]" id=""  class="form-control" ></textarea>\n\
                                </div>\n\
                            </div>\n\
                    </div>\n\
                        <hr>';
            $("#add_more_sec").append(html);
            });
        </script>

    </body>

</html>