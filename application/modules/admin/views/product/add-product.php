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
                                                            <label class="control-label">Naam product</label>
                                                            <input type="text" required="" name="name" id="p_name" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Materiaal</label> 
                                                            <input type="text" required="" name="material" id="material" class="form-control" placeholder=""> 
                                                        </div>
                                                    </div>
                                                </div>
<!--                                                <div class="row">
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label class="control-label">Huurprijs / Box ( ??? )</label>
                                                        <input type="number" step=".01" required="" name="box_prc" value="" id="box_prc" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group"> <label class="control-label">Prijs per verloren cup ( ??? )</label> 
                                                        <input type="number" step=".01" required="" name="loss_prc" value="" id="loss_prc" class="form-control" placeholder=""> 
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group"> <label class="control-label">Wasprijs / Box ( ??? )</label> 
                                                        <input type="number" step=".01" required="" name="wash_prc" value="" id="wash_prc" class="form-control" placeholder=""> 
                                                    </div>
                                                </div>
                                            </div>-->
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="control-label">Aantal cups per box</label>
                                                            <input type="text" required="" name="qty" id="qty" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group"> <label class="control-label">Afbeelding</label> 
                                                            <input type="file" required="" name="image" id="image" class="form-control" > 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <div class="form-group">
                                                            <label class="control-label">Beschrijving</label>
                                                            <textarea required="" name="sort_desc" id="sort_desc" class="form-control"></textarea>
                                                        </div>
                                                    </div>

                                                </div>

                                                    <div class="row">
                                                        <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase"> Standaard prijs  </span></div>
                                                        <br/>
                                                        <div class="frmSec">
                                                            <input type="hidden" name="super_city_id[]" value="0" />
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label">Minimum Box</label>
                                                                    <input type="text" required=""  name="min_qty[]" id="min_qty" class="form-control" placeholder="">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label">Huurprijs / Box ( ??? )</label>
                                                                    <input type="text" required="" name="box_prc[]" id="box_prc" class="form-control" placeholder="">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group"> <label class="control-label">Prizjs per verloren cup ( ??? )</label> 
                                                                    <input type="text" required="" name="loss_prc[]" id="loss_prc" class="form-control" placeholder=""> 
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group"> <label class="control-label">Wasprijs / Box ( ??? )</label> 
                                                                    <input type="text" required="" name="wash_prc[]" id="wash_prc" class="form-control" placeholder=""> 
                                                                </div>
                                                            </div>
                                                           
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <span id="add_more_sec_0"></span>

                                                        <div ><button  u_id="0" type="button" class="btn green addMore"> <i class="fa fa-plus"></i>Add More</button> </div>
                                                    </div>

                                                <?php foreach ($all_super_cities->result() as $row) { ?>

                                                    <div class="row">
                                                        <div class="caption"><i class="icon-settings font-red"></i> <span class="caption-subject  sbold uppercase"> Prijs : <?php echo $row->city_name ?>  </span></div>
                                                        <br/>
                                                        <div class="frmSec">
                                                            <input type="hidden" name="super_city_id[]" value="<?php echo $row->u_id ?>" />
                                                            <!--<input type="hidden" name="post_code[]" value="<?php echo $row->post_code ?>" />-->
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label">Minimum Box</label>
                                                                    <input type="text" required=""  name="min_qty[]" id="min_qty" class="form-control" placeholder="">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label class="control-label">Huurprijs / Box ( ??? )</label>
                                                                    <input type="text" required="" name="box_prc[]" id="box_prc" class="form-control" placeholder="">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group"> <label class="control-label">Prizjs per verloren cup ( ??? )</label> 
                                                                    <input type="text" required="" name="loss_prc[]" id="loss_prc" class="form-control" placeholder=""> 
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group"> <label class="control-label">Wasprijs / Box ( ??? )</label> 
                                                                    <input type="text" required="" name="wash_prc[]" id="wash_prc" class="form-control" placeholder=""> 
                                                                </div>
                                                            </div>
                                                           
                                                        </div>
                                                        <div class="clearfix"></div>
                                                        <span id="add_more_sec_<?php echo $row->u_id ?>"></span>

                                                        <div ><button  u_id="<?php echo $row->u_id ?>" type="button" class="btn green addMore"> <i class="fa fa-plus"></i>Add More</button> </div>
                                                    </div>

                                                <?php } ?>
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
        <script>
            $(document).on('click',".remove",function () {
                $(this).parent().parent().remove();
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
    </body>

</html>