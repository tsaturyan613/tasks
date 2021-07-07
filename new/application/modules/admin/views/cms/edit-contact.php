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
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_heading'); ?></label>
                                                            <input type="text" value="<?php echo $query['banner_heading']; ?>" name="banner_heading" id="banner_heading"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_text'); ?></label>
                                                            <textarea name="banner_text" id="banner_text"  class="form-control" ><?php echo $query['banner_text']; ?></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>

                                               

                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_1_big_image'); ?></label>
                                                            <input type="file" name="section_1_big_image" id="section_1_big_image"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">  </label>
                                                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_1_big_image']; ?>" width="100px" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_1_heading'); ?></label>
                                                            <input type="text" value="<?php echo $query['section_1_heading']; ?>" name="section_1_heading" id="section_1_heading"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_1_content'); ?></label>
                                                            <textarea name="section_1_content" id="section_1_content"  class="form-control" ><?php echo $query['section_1_content']; ?></textarea>
                                                        </div>
                                                    </div>
                                                </div>
                                                
                                                <div class="row">
                                                <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_2_image'); ?></label>
                                                            <input type="file" name="section_2_image" id="section_2_image"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">  </label>
                                                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_2_image']; ?>" width="100px" />
                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_2_heading'); ?></label>
                                                            <input type="text" value="<?php echo $query['section_2_heading']; ?>" name="section_2_heading" id="section_2_heading"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_2_content'); ?></label>
                                                            <textarea name="section_2_content" id="section_2_content"  class="form-control" ><?php echo $query['section_2_content']; ?></textarea>
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