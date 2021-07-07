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
                                        <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Add Steden end Gemeenten Using CSV </span> </div>
                                         <span class="caption-subject  sbold uppercase"> <a download="" href="<?php echo base_url(); ?>uploads/convertcsv1.csv">Download Sample</a></span>  
                                    </div>
                                    
                                    <div class="portlet-body">
                                        <form action="<?php echo base_url(); ?>admin/Gemeenten_management/save_gemeenten_by_city_using_csv"  method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <div class="form-body">
                                                <div class="row">
                                                   
                                                    <div class="col-md-12">
                                                        <div class="form-group"> 
                                                            <label class="control-label">CSV</label> 
                                                            <input type="file" required="" name="file" id="file" class="form-control" placeholder="Upload Csv"> 
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="form-actions right"><button id="frmCsvSubmit" type="submit" class="btn blue"> <i class="fa fa-check"></i> Submit</button> </div>
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
       <script>
            $("#msg_div").fadeOut(7000);
        </script>
    </body>

</html>