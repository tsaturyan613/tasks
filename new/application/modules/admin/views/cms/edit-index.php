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
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_text_3'); ?></label>
                                                            <textarea name="banner_text_3" id="banner_text_3"  class="form-control" ><?php echo $query['banner_text_3']; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_btn_1_text'); ?></label>
                                                            <input type="text" name="banner_btn_1_text" value="<?php echo $query['banner_btn_1_text']; ?>" id="banner_btn_1_text"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_btn_1_url'); ?></label>
                                                            <input type="text" name="banner_btn_1_url" value="<?php echo $query['banner_btn_1_url']; ?>" id="banner_btn_1_url"  class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_btn_2_text'); ?></label>
                                                            <input type="text" name="banner_btn_2_text" value="<?php echo $query['banner_btn_2_text']; ?>" id="banner_btn_2_text"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-8">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'banner_btn_2_url'); ?></label>
                                                            <input type="text" name="banner_btn_2_url" value="<?php echo $query['banner_btn_2_url']; ?>" id="banner_btn_2_url"  class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                </div>
                                                <hr>

                                                <div class="portlet-title">
                                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Service Section </span> </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_headind_1'); ?></label>
                                                            <input type="text" name="service_headind_1" id="service_headind_1" value="<?php echo $query['service_headind_1']; ?>"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_content_1'); ?></label>
                                                            <textarea name="service_content_1" id="service_content_1"  class="form-control" ><?php echo $query['service_content_1']; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_icon_1'); ?></label>
                                                            <input type="file" name="service_icon_1" id="service_icon_1"  class="form-control" placeholder="">
                                                        </div>
                                                        <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['service_icon_1']; ?>" width="100px" />
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_headind_2'); ?></label>
                                                            <input type="text" name="service_headind_2"  value="<?php echo $query['service_headind_2']; ?>"  id="service_headind_2"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_content_2'); ?></label>
                                                            <textarea name="service_content_2" id="service_content_2"  class="form-control" ><?php echo $query['service_content_2']; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_icon_2'); ?></label>
                                                            <input type="file" name="service_icon_2" id="service_icon_2"  class="form-control" placeholder="">
                                                        </div>
                                                        <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['service_icon_2']; ?>" width="100px" />
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_headind_3'); ?></label>
                                                            <input type="text"  value="<?php echo $query['service_headind_3']; ?>"  name="service_headind_3" id="service_headind_3"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_content_3'); ?></label>
                                                            <textarea name="service_content_3" id="service_content_3"  class="form-control" ><?php echo $query['service_content_3']; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_icon_3'); ?></label>
                                                            <input type="file" name="service_icon_3" id="service_icon_3"  class="form-control" placeholder="">
                                                        </div>
                                                        <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['service_icon_3']; ?>" width="100px" />
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_headind_4'); ?></label>
                                                            <input type="text"  value="<?php echo $query['service_headind_4']; ?>"  name="service_headind_4" id="service_headind_4"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_content_4'); ?></label>
                                                            <textarea name="service_content_4" id="service_content_4"  class="form-control" ><?php echo $query['service_content_4']; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'service_icon_4'); ?></label>
                                                            <input type="file" name="service_icon_4" id="service_icon_4"  class="form-control" placeholder="">
                                                        </div>
                                                        <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['service_icon_4']; ?>" width="100px" />
                                                    </div>
                                                </div>

                                                <hr>
                                                <div class="portlet-title">
                                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Testimonial Section </span> </div>
                                                    <br>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'testimonial_heading'); ?></label>
                                                            <input type="text" name="testimonial_heading" value="<?php echo $query['testimonial_heading']; ?>" id="testimonial_heading"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'testimonial_content'); ?></label>
                                                            <textarea name="testimonial_content" id="testimonial_content"  class="form-control" ><?php echo $query['testimonial_content']; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'testimonial_author'); ?></label>
                                                            <input type="text" name="testimonial_author" value="<?php echo $query['testimonial_author']; ?>" id="testimonial_author"  class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'testimonial_image'); ?></label>
                                                            <input type="file" name="testimonial_image" id="testimonial_image"  class="form-control" placeholder="">
                                                        </div>
                                                        <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['testimonial_image']; ?>" width="100px" />
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'testimonial_btn_text'); ?></label>
                                                            <input type="text" name="testimonial_btn_text" value="<?php echo $query['testimonial_btn_text']; ?>" id="testimonial_btn_text"  class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'testimonial_btn_url'); ?></label>
                                                            <input type="text" name="testimonial_btn_url" value="<?php echo $query['testimonial_btn_url']; ?>" id="testimonial_btn_url"  class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                </div>

                                                <hr>

                                                <div class="portlet-title">
                                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Section 1 </span> </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_1_heading'); ?></label>
                                                            <input type="text" name="section_1_heading" value="<?php echo $query['section_1_heading']; ?>" id="section_1_heading"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_1_content'); ?></label>
                                                            <textarea name="section_1_content" id="section_1_content"  class="form-control" ><?php echo $query['section_1_content']; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_1_sub_content'); ?></label>
                                                            <textarea name="section_1_sub_content" id="section_1_sub_content"  class="form-control" ><?php echo $query['section_1_sub_content']; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_1_big_image'); ?></label>
                                                            <input type="file" name="section_1_big_image" id="section_1_big_image"  class="form-control" placeholder="">
                                                        </div>
                                                        <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_1_big_image']; ?>" width="100px" />
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_1_btn_text'); ?></label>
                                                            <input type="text" name="section_1_btn_text" value="<?php echo $query['section_1_btn_text']; ?>" id="section_1_btn_text"  class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-5">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_1_btn_url'); ?></label>
                                                            <input type="text" name="section_1_btn_url" value="<?php echo $query['section_1_btn_url']; ?>" id="section_1_btn_url"  class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                </div>




                                                <hr>


                                                <div class="portlet-title">
                                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Contact Section </span> </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'call_now_number'); ?></label>
                                                            <input type="text" name="call_now_number" value="<?php echo $query['call_now_number']; ?>" id="call_now_number"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'mail_us_email'); ?></label>
                                                            <input type="text" name="mail_us_email" value="<?php echo $query['mail_us_email']; ?>" id="mail_us_email"  class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                </div>



                                                <hr>


                                                <div class="portlet-title">
                                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase">  Section 2 </span> </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_2_heading'); ?></label>
                                                            <input type="text" name="section_2_heading" value="<?php echo $query['section_2_heading']; ?>" id="section_2_heading"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_2_content'); ?></label>
                                                            <textarea name="section_2_content" id="section_2_content"  class="form-control" ><?php echo $query['section_2_content']; ?></textarea>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'section_2_big_image'); ?></label>
                                                            <input type="file" name="section_2_big_image" id="section_2_big_image"  class="form-control" placeholder="">
                                                        </div>
                                                        <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_2_big_image']; ?>" width="100px" />
                                                    </div>
                                                </div>


                                                <hr>



                                                <div class="portlet-title">
                                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase">  Information Section </span> </div>
                                                </div>
                                                <br>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'happy_clients'); ?></label>
                                                            <input type="text" name="happy_clients" value="<?php echo $query['happy_clients']; ?>" id="happy_clients"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'awards'); ?></label>
                                                            <input type="text" name="awards" value="<?php echo $query['awards']; ?>" id="awards"  class="form-control" placeholder="">

                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label"><?php echo str_replace("_", " ", 'employees'); ?></label>
                                                            <input type="text" name="employees" value="<?php echo $query['employees']; ?>" id="employees"  class="form-control" placeholder="">

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