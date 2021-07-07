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
                                    <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Add Product</span> </div>
                                </div>
                                <div class="portlet-body">
                                    <form action="<?php echo base_url(); ?>admin/product_management/save_product" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                        <div class="form-body">

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label">Product Name</label>
                                                        <input type="text" required="" name="name" id="p_name" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group"> <label class="control-label">Material</label> 
                                                        <input type="text" required="" name="material" id="material" class="form-control" placeholder=""> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label">Price / box ( € )</label>
                                                        <input type="text" required="" name="box_prc" id="box_prc" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group"> <label class="control-label">Loss / piece ( € )</label> 
                                                        <input type="text" required="" name="loss_prc" id="loss_prc" class="form-control" placeholder=""> 
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group"> <label class="control-label">Wash / Box ( € )</label> 
                                                        <input type="text" required="" name="wash_prc" id="wash_prc" class="form-control" placeholder=""> 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="control-label">Quantity ( Total available box )</label>
                                                        <input type="text" required="" name="qty" id="qty" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-group"> <label class="control-label">Product image</label> 
                                                        <input type="file" required="" name="image" id="image" class="form-control" > 
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="control-label">Sort Description</label>
                                                        <textarea required="" name="sort_desc" id="sort_desc" class="form-control"></textarea>
                                                    </div>
                                                </div>
                                               
                                            </div>

                                        </div>
                                        <div class="form-actions right"><button id="frmSubmit" type="submit" class="btn blue"> <i class="fa fa-check"></i> Add Product </button> </div>
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