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
                                        <script type="text/javascript">
                                            swal({
                                                title: "Successfully Update",
                                                icon: "success",
                                                });
                                        </script>
                                    <?php } ?>
                                </div> 

                                <div class="portlet light portlet-fit portlet-form bordered">
                                    <div class="portlet-body">
                                        
                                        <form action="<?php echo base_url();?>admin/cms_management/edit_recommendation" 
                                            method="POST" class="horizontal-form" enctype="multipart/form-data">
                                             <div class="form-body">
                                                <div class="portlet-title">
                                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Page </span> </div>
                                                     <br>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label">Page Title</label>
                                                                <input type="text" name="page_title" id="page_title"  class="form-control" value="<?php echo $recommendation_data[0]->page_title ?>" placeholder="Page Title">

                                                            </div>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="form-body">
                                                

                                                <!-- <hr> -->
                                                <?php
                                                $ttl_section = count($recommendation_data) ;
                                                foreach($recommendation_data as $key=>$val){ 

                                                    ?>
                                                    <div class="portlet-title">
                                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Content Section </span> </div>
                                                </div>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label"><?php echo str_replace("_", " ", 'section_image'); ?></label>
                                                                <input type="file" name="change_section_image<?php echo $key+1 ?>"  class="form-control" placeholder="">
                                                               

                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label class="control-label">  </label>
                                                                <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $val->section_img ?>" width="100px" />
                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label class="control-label"><?php echo str_replace("_", " ", 'section_title'); ?></label>
                                                                <input type="text" value="<?php echo $val->section_title?>" name="old_section_title<?php echo $key+1 ?>" id=""  class="form-control" placeholder="">

                                                            </div>
                                                        </div>
                                                        <div class="col-md-12">
                                                            <div class="form-group">
                                                                <label class="control-label"><?php echo str_replace("_", " ", 'section_content'); ?></label>
                                                                <textarea name="old_section_content<?php echo $key+1 ?>" id=""  class="form-control" ><?php echo $val->section_content?></textarea>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <hr>

                                        <input type="hidden" name="old_section_image<?php echo $key+1 ?>" value="<?php echo $val->section_img ?>">
                                         <input type="hidden" name="recommendation_id<?php echo $key+1 ?>" value="<?php echo $val->id ?>">

                                                <?php } ?>
                                                <span id="add_more_sec"></span>
                                                <div>

                                                    <button type="button" class="btn green" onclick="addContent()"><i class="fa fa-plus"></i>Add More</button>


                                                </div>


                                            </div>
                                            <input type="hidden" name="action" value="submit_data">
                                            <input type="hidden" name="total_section" value="<?php echo  $ttl_section; ?>">
                                            <input type="hidden" name="varity_count" id="varity_count" value="0">
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
                var varity_count=$("#varity_count").val();
                // addContent();
                function addContent(){
                    var html = '';
                     
                    var i=parseInt($("#varity_count").val()) + parseInt(1);
                    $("#varity_count").val(i);

                     html+='<div class="portlet-title">';
                     html+='<div class="caption">';
                     html+= '<i class="icon-settings font-red"></i>';
                     html+= '<span class="caption-subject font-red sbold uppercase"> Section '+i+' </span>';
                     html+= '</div>';
                     html+= '</div>';
                     html+=  '<br>';
                     html+= '<div class="row">';
                     html+= '<div class="col-md-6">';
                     html+= '<div class="form-group">';
                     html+= '<label class="control-label">Content Image</label>';
                     html+= '<input type="file" name="section_image'+i+'"  class="form-control" placeholder="">';
                     html+= '</div>';
                     html+= '</div>';
                     html+= '<div class="col-md-6">';
                     html+= '<div class="form-group">';
                     html+= '<label class="control-label">  </label>';
                     html+= '<img src="<?php echo base_url(); ?>uploads/cms/; ?>" width="100px" />';
                     html+= '</div>';
                     html+= '</div>';
                     html+= '<div class="col-md-12">';
                     html+= '<div class="form-group">';
                     html+= '<label class="control-label">Content Heading</label><input type="text" value="" name="section_title'+i+'" id=""  class="form-control" placeholder=""></div></div><div class="col-md-12"><div class="form-group">';
                     html+= '<label class="control-label">Content Text</label><textarea name="section_content'+i+'" id=""  class="form-control" ></textarea>';
                     html+= '</div></div></div><hr>';
                    $("#add_more_sec").append(html);
                }


        </script>

    </body>

</html>