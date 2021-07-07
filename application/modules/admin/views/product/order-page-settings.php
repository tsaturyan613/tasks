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
                                    <div class="portlet-title">
                                        <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Order Page Settings</span> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <form action="<?php echo base_url(); ?>admin/product_management/order_page_product" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <div class="form-body">
                                                <input type="hidden" name="id" id="id" value="1" />
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"> Levering op evenement (€)</label>
                                                            <input type="number" step=".01" required="" name="collection_by_profiwash_at_the_event" id="collection_by_profiwash_at_the_event" value="<?php echo $query['collection_by_profiwash_at_the_event']; ?>" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label"> Levering via afhaalpunt (€)</label> 
                                                            <input type="number" step=".01" required="" name="return_to_address" id="return_to_address" value="<?php echo $query['return_to_address']; ?>" class="form-control" placeholder=""> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"> Afhalen bij Durafest  (€)</label>
                                                            <input type="number" step=".01" required="" name="collection_by_profiwash_at_collection_point" id="collection_by_profiwash_at_collection_point" value="<?php echo $query['collection_by_profiwash_at_collection_point']; ?>" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Ophalen op evenement (€)</label> 
                                                            <input type="number" step=".01" required="" name="return_via_collection_point" id="return_via_collection_point" value="<?php echo $query['return_via_collection_point']; ?>" class="form-control" placeholder=""> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label"> Terugbrengen naar afhaalpunt (€)</label>
                                                            <input type="number" step=".01" required="" name="delivery_to_profiwash" id="delivery_to_profiwash" value="<?php echo $query['delivery_to_profiwash']; ?>" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Terugbrengen naar Durafest (€)</label> 
                                                            <input type="number" step=".01" required="" name="pick_up_at_profiwash" id="pick_up_at_profiwash" value="<?php echo $query['pick_up_at_profiwash']; ?>" class="form-control" placeholder=""> 
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label"> T&C</label>
                                                        </div>
                                                        <?php
                                                        $tc=json_decode($query['terms_and_con']);
                                                        if(!empty($tc)){
                                                            for($i=0;$i<count($tc);$i++){
                                                        ?> 
                                                        <div class="form-group">
                                                            <input type="text" required="" name="terms_and_con[]"  value="<?php echo $tc[$i]; ?>" class="form-control" placeholder="">
                                                            <?php if($i>0){ ?>
                                                            <button class="removeThis" type="button" class="btn dengar"> <i class="fa fa-plus"></i>Remove this</button>
                                                            <?php } ?>
                                                        </div>
                                                            <?php } }else{ ?>
                                                        <div class="form-group">
                                                            <input type="text" required="" name="terms_and_con[]"  value="" class="form-control" placeholder="">
                                                        </div>
                                                        <?php } ?>
                                                        <span id="add_more_sec"></span>
                                                    <button id="addMore" type="button" class="btn green"> <i class="fa fa-plus"></i>Add more</button> 
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
        <script src="<?php echo base_url(); ?>assets/admin/global/scripts/jquery.datetimepicker.full.min.js"></script>
        
        <script>
            $("#addMore").on("click", function () {
                var html = '<div class="form-group"><input type="text" required="" name="terms_and_con[]"  value="" class="form-control" placeholder=""><button class="removeThis" type="button" class="btn dengar"> <i class="fa fa-plus"></i>Remove this</button> </div>';
                $("#add_more_sec").append(html);
            });
            $(document).on("click", ".removeThis", function() {
       $(this).parent().remove(); 
});
        </script>
        
        
        <script>


            $("#msg_div").fadeOut(17000);
        </script>
        <script>
            $.ajax({
                type: "post",
                url: "<?php echo base_url(); ?>get_vereniging",
                data: "postcode=<?php echo $query['postcode']; ?>",
                async: false,
                success: function (response) {
                    $('#association').html(response);
                },
                error: function () {
                    alert('Error occured');
                }
            });
            $('#postcode').change(function () {
                var data = "";
                $.ajax({
                    type: "post",
                    url: "<?php echo base_url(); ?>get_vereniging",
                    data: "postcode=" + $('#postcode').val(),
                    async: false,
                    success: function (response) {
                        $('#association').html(response);
                    },
                    error: function () {
                        alert('Error occured');
                    }
                });

            });
        </script>
    </body>

</html>