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

<!--                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">Select Pages</label>
                                                            <?php 
                                                            $pages_id= json_decode($query['page_id']);
                                                            ?>
                                                            <select multiple  name="page_id[]" id="menu_ids" class="form-control" >
                                                                <option value="">Select Menus</option>
                                                                <?php if ($pages->num_rows() > 0){ $i=1; foreach ($pages->result() as $row){ ?>
                                                                <option <?php if(in_array($row->id,$pages_id)){ echo 'selected';} ?> value="<?=$row->id?>"><?=$row->page_name?></option>
                                                                <?php $i++; } } ?>
                                                            </select>  

                                                        </div>
                                                    </div>
                                                    
                                                </div>-->
                                                
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">menu Name</label>
                                                            
                                                            <input type="text" class="form-control" value="<?=$query['section_name']?>" readonly="" />

                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">Select Page</label>
                                                            
                                                            <select   name="page_id" id="page_id" class="form-control" >
                                                                <option value="">Select Page</option>
                                                                <?php if ($pages->num_rows() > 0){ $i=1; foreach ($pages->result() as $row){ ?>
                                                                <option  value="<?=$row->id?>"><?=$row->page_name?>     [ <?=$row->page_url?> ]</option>
                                                                <?php $i++; } } ?>
                                                            </select>  

                                                        </div>
                                                    </div>
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">Sort</label>
                                                            
                                                            <input type="number" class="form-control" name="sort" />
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
                        
                        <div class="row">
                        
                        <div class="col-md-12">
<!--                            <div id="msg_div">
                                <?php if ($this->session->flashdata('success') !=''){?>
                                <?php echo $this->session->flashdata('success'); ?>
                                <?php }?>
                            </div>-->
                            <div class="portlet box green">
                                <div class="portlet-title">
                                    <div class="caption"> <i class="fa fa-globe"></i>Page list (
                                        <?php echo $page_by_menu->num_rows(); ?>)</div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                                        <thead>
                                            <tr>
                                                <th>SI No.</th>
                                                <th> Page name </th>
                                                <!--<th> Page sort name </th>-->
                                                <!--<th> URL</th>-->
                                                <th> Sort</th>
                                                <th> Action </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php if ($page_by_menu->num_rows() > 0){$i=1; foreach ($page_by_menu->result() as $row){?>
                                            <tr>
                                                <td>
                                                    <?php echo $i; ?>
                                                </td>
                                                <td>
                                                    <?php echo $row->page_name; ?>    [ <?=$row->page_url?> ]
                                                </td>
                                                <td>
                                                    <?php echo $row->sort; ?>
                                                </td>
                                               
                                                <td> 
						    <!--<a title="Edit" href="<?php echo base_url(); ?>admin/cms_management/edit_page/<?php echo $row->id; ?>" class="btn-sm btn-success rounded-corner btn-share">Edit</a>--> 
                                                    <a title="Delete" onClick="return confirm('Would you like to delete this ?');" href="<?php echo base_url(); ?>admin/cms_management/delete_page_from_menu/<?php echo $row->id; ?>" class="btn-sm btn-danger rounded-corner btn-share">Delete</a> 
						</td>
                                            </tr>
                                            <?php $i++;}}else{?>
                                            <tr>
                                                <td colspan="9" class="dataTables_empty">No record found.</td>
                                            </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>
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