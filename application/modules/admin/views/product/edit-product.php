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
                                        <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Edit product</span> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <form action="<?php echo base_url(); ?>admin/product_management/update_product" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <div class="form-body">
                                                <input type="hidden" name="p_id" id="id" value="<?php echo $query['p_id']; ?>" />
                                                <div class="row"> 
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Naam product</label>
                                                            <input type="text" required="" name="name" id="p_name" value="<?php echo $query['name']; ?>" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Materiaal</label> 
                                                            <input type="text" required="" name="material" id="material" value="<?php echo $query['material']; ?>" class="form-control" placeholder=""> 
                                                        </div>
                                                    </div>
                                                </div>
<!--                                                <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label">Huurprijs / Box ( € )</label>
                                                        <input type="number" step=".01" required="" name="box_prc" value="<?php echo $query['box_prc']; ?>" id="box_prc" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group"> <label class="control-label">Prijs per verloren cup ( € )</label> 
                                                        <input type="number" step=".01" required="" name="loss_prc" value="<?php echo $query['loss_prc']; ?>" id="loss_prc" class="form-control" placeholder=""> 
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group"> <label class="control-label">Wasprijs / Box ( € )</label> 
                                                        <input type="number" step=".01" required="" name="wash_prc" value="<?php echo $query['wash_prc']; ?>" id="wash_prc" class="form-control" placeholder=""> 
                                                    </div>
                                                </div>
                                            </div>-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Aantal cups per box</label>
                                                            <input type="text" required="" name="qty" value="<?php echo $query['qty']; ?>" id="qty" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Afbeelding</label> 
                                                            <input type="file" name="image" id="image" class="form-control" > 
                                                            <input type="hidden" name="old_image" value="<?php echo $query['image']; ?>"> 
                                                            <br>
                                                            <img src="<?php echo base_url(); ?>uploads/product/<?php echo $query['image']; ?>" width="100" />
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">Beschrijving</label>
                                                            <textarea required="" name="sort_desc" id="sort_desc" class="form-control"><?php echo $query['sort_desc']; ?></textarea>
                                                        </div>
                                                    </div>

                                                </div>
                                                
                                                
                                                    <?php
                                                    $getProductPriceDetailsBySuperCity = getProductPriceDetailsBySuperCity($query['p_id'], '0');

                                                    ?>
                                                    <div class="row">
                                                      <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase">Standaard prijs  </span></div>
                                                        <br/>

                                                        <?php
                                                        
                                                        foreach ($getProductPriceDetailsBySuperCity as $rr) {
//        print_r($rr);
                                                            ?>
                                                            <div class="frmSec">
                                                                <input type="hidden" name="super_city_id[]" value="0" />
                                                                <input type="hidden" name="field_id[]" value="<?php echo $rr->id; ?>" />
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="control-label">Minimum Box</label>
                                                                        <input type="text" required="" value="<?php echo $rr->min_qty; ?>" name="min_qty[]" id="min_qty" class="form-control" placeholder="">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="control-label">Huurprijs / Box ( € )</label>
                                                                        <input type="text" required="" value="<?php echo $rr->box_prc; ?>" name="box_prc[]" id="box_prc" class="form-control" placeholder="">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group"> <label class="control-label">Prijs per verloren cup ( € )</label> 
                                                                        <input type="text" required="" value="<?php echo $rr->loss_prc; ?>"  name="loss_prc[]" id="loss_prc" class="form-control" placeholder=""> 
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group"> <label class="control-label">Wasprijs / Box ( € )</label> 
                                                                        <input type="text" required="" value="<?php echo $rr->wash_prc; ?>"  name="wash_prc[]" id="wash_prc" class="form-control" placeholder=""> 
                                                                    </div>
                                                                </div>
                                                                <div >
                                                                    <button type="button" main-id="<?php echo $rr->id; ?>" onclick="return confirm('Would you like to delete this ?');"  class="btn red remove_prv"> <i class="fa fa-close"></i></button> </div>
                                                            </div>
                                                        <div class="clearfix"></div>

                                                        <?php } ?>  
                                                        <span id="add_more_sec_0"></span>

                                                        <div class="col-md-2" ><button u_id="0" type="button" class="btn green addMore"> <i class="fa fa-plus"></i>Add More</button> </div>
                                                    </div>
                                                
                                                
                                                

                                                <?php foreach ($all_super_cities->result() as $row) { ?>

                                                    <?php
                                                    $getProductPriceDetailsBySuperCity = getProductPriceDetailsBySuperCity($query['p_id'], $row->u_id);

                                                    ?>
                                                    <div class="row">
                                                      <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase">Prijs : <?php echo $row->city_name ?>  </span></div>
                                                        <br/>

                                                        <?php
                                                        
                                                        foreach ($getProductPriceDetailsBySuperCity as $rr) {
//        print_r($rr);
                                                            ?>
                                                            <div class="frmSec">
                                                                <input type="hidden" name="super_city_id[]" value="<?php echo $row->u_id ?>" />
                                                                <input type="hidden" name="field_id[]" value="<?php echo $rr->id; ?>" />
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="control-label">Minimum Box</label>
                                                                        <input type="text" required="" value="<?php echo $rr->min_qty; ?>" name="min_qty[]" id="min_qty" class="form-control" placeholder="">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-2">
                                                                    <div class="form-group">
                                                                        <label class="control-label">Huurprijs / Box ( € )</label>
                                                                        <input type="text" required="" value="<?php echo $rr->box_prc; ?>" name="box_prc[]" id="box_prc" class="form-control" placeholder="">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group"> <label class="control-label">Prijs per verloren cup ( € )</label> 
                                                                        <input type="text" required="" value="<?php echo $rr->loss_prc; ?>"  name="loss_prc[]" id="loss_prc" class="form-control" placeholder=""> 
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-3">
                                                                    <div class="form-group"> <label class="control-label">Wasprijs / Box ( € )</label> 
                                                                        <input type="text" required="" value="<?php echo $rr->wash_prc; ?>"  name="wash_prc[]" id="wash_prc" class="form-control" placeholder=""> 
                                                                    </div>
                                                                </div>
                                                                <div >
                                                                    <button type="button" main-id="<?php echo $rr->id; ?>" onclick="return confirm('Would you like to delete this ?');"  class="btn red remove_prv"> <i class="fa fa-close"></i></button> </div>
                                                            </div>
                                                        <div class="clearfix"></div>

                                                        <?php } ?>  
                                                        <span id="add_more_sec_<?php echo $row->u_id ?>"></span>

                                                        <div class="col-md-2" ><button   u_id="<?php echo $row->u_id ?>" type="button" class="btn green addMore"> <i class="fa fa-plus"></i>Add More</button> </div>
                                                    </div>
                                                <?php } ?>

                                            </div>
                                            <div class="form-actions right"><button id="frmSubmit" type="submit" class="btn blue"> <i class="fa fa-check"></i> Save Product </button> </div>
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
           $(document).on('click',".remove",function () {
                $(this).parent().parent().remove();
            });
            $(".remove_prv").on("click", function () {
                var main_id = $(this).attr('main-id');

                $.ajax({
                    type: "post",
                    url: "<?php echo base_url(); ?>admin/product_management/removePrcFrom",
                    data: {main_id: main_id},
                    async: false,
                    success: function () {
                        $(this).parent().parent().remove();
                    },
                    error: function () {
                        alert('Error occured');
                    }
                });

            });
            $(".addMore").on("click", function () {
//                var post_code = $(this).attr('post_code');
                var u_id = $(this).attr('u_id');

                $.ajax({
                    type: "post",
                    url: "<?php echo base_url(); ?>admin/product_management/getAddMorePrcFrom",
                    data: { u_id: u_id},
                    async: false,
                    success: function (response) {
//                        console.log(response);
                        $("#add_more_sec_" + u_id).append(response);
                    },
                    error: function () {
                        alert('Error occured');
                    }
                });

            });
        </script>
        <script>


            $("#msg_div").fadeOut(7000);
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