<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <?php $this->load->view('common/header_include'); ?>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/global/css/jquery.datetimepicker.min.css">
    <style>

        .raaddress{
            /*padding: 15px;*/
            background: #f7f7f7;
            width: 100%;
            box-sizing: border-box;
            /*margin: 30px;*/
        }
        .raaddress p{ margin-bottom: 6px;}
        .raaddress h4{ font-size: 20px; margin-top: 1.5em;}


    </style>

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
                                        <div class="caption"> <i class="icon-settings font-red"></i> <span class="caption-subject font-red sbold uppercase"> Edit Order</span> </div>
                                        <div class="btn blue pull-right"><a href="<?php echo base_url(); ?>admin/order_management/all_event" style="color:#fff">Ga terug</a></div>
                                    </div>
                                    <div class="portlet-body">
                                        <form action="<?php echo base_url(); ?>admin/order_management/update_event" id="myFrm" method="post" class="horizontal-form" enctype="multipart/form-data">
                                            <?php
                                            // print_R($ord_stng);
                                            ?>
                                            <?php
                                            //$id=$ord_stng['id'];
                                            $getUserDetails = getUserDetailsById($ord_stng['user_id']);
                                            //  echo $getUserDetails;
                                            
                                            $s_tot = 0;
    
                                            ?>
                                            <div class="form-body">
                                                <input type="hidden" name="order_id" id="id" value="<?php echo $ord_stng['id']; ?>" />
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <h4>Bestelling: <?php echo sprintf("%02d", $ord_stng['id']); ?></h4>
                                                        <h4>Datum Event: </h4><p><?php echo date(('d/m/Y'), strtotime($ord_stng['event_start_date'])) . ' ' . $ord_stng['event_start_time'] . ' Tot ' . date(('d/m/Y'), strtotime($ord_stng['event_end_date'])) . ' ' . $ord_stng['event_end_time']; ?></p>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label">Naam event</label>
                                                            <input type="text" required="" name="event_name" id="event_name" value="<?php echo $ord_stng['event_name']; ?>" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <!-- <div class="col-md-4">
                                                         <div class="form-group">
                                                                                                                <label class="control-label">Datum event</label>
                                                                                                                <input type="text" required="" name="event_date" id="event_date" value="<?php echo date(('Y-m-d'), strtotime($ord_stng['event_date'])); ?>" class="form-control" placeholder="">
                                                         </div>
                                                        </div>-->
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label">Startdatum event</label>
                                                            <input type="text" required="" name="event_start_date" id="event_start_date" value="<?php echo date(('Y-m-d'), strtotime($ord_stng['event_start_date'])); ?>" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label">Starttijd </label>
                                                            <input type="text" required="" name="event_start_time" id="event_start_time" value="<?php echo $ord_stng['event_start_time']; ?>" class="form-control" placeholder="">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label">Einddatum event</label>
                                                            <input type="text" required="" name="event_end_date" id="event_end_date" value="<?php echo date(('Y-m-d'), strtotime($ord_stng['event_end_date'])); ?>" class="form-control" placeholder="">
                                                        </div>
                                                    </div>

                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label">Eindtijd </label>
                                                            <input type="text" required="" name="event_end_time" id="event_end_time" value="<?php echo $ord_stng['event_end_time']; ?>" class="form-control" placeholder="">
                                                        </div>
                                                    </div>



                                                    <div class="col-md-4">
                                                        <div class="form-group"> <label class="control-label">Aantal bezoekers</label> 
                                                            <input type="text" required="" name="number_of_visitor" id="number_of_visitor" value="<?php echo $ord_stng['number_of_visitor']; ?>" class="form-control" placeholder=""> 
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label class="control-label">#Cups per bezoeker</label>
                                                            <input type="text" required="" name="cups_per_visitor" value="<?php echo $ord_stng['cups_per_visitor']; ?>" id="cups_per_visitor" class="form-control" placeholder="">
                                                        </div>
                                                    </div>
                                                    <!--  <div class="col-md-4">
                                                                                                            <div class="form-group"> <label class="control-label">Gebruikte boxen</label> 
                                                                                                                <input type="text" required="" name="used_cups" value="<?php echo $ord_stng['used_cups']; ?>" id="used_cups" class="form-control" placeholder=""> 
                                                                                                            </div>
                                                    </div>
                                                     <div class="col-md-4">
                                                                                                            <div class="form-group"> <label class="control-label">Verloren cups</label> 
                                                                                                                <input type="text" required="" name="lost_cup" value="<?php echo $ord_stng['lost_cup']; ?>" id="lost_cup" class="form-control" placeholder=""> 
                                                                                                            </div>
                                                     </div>-->
                                                </div>
                                                <!--<div class="row">
                                                                                                    <div class="col-md-6">
                                                                                                        <div class="form-group">
                                                                                                            <label class="control-label">Wash Price</label>
                                                                                                            <input type="text" required="" name="wash_prc" value="<?php echo $ord_stng['wash_prc']; ?>" id="wash_prc" class="form-control" placeholder="">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="col-md-6">
                                                                                                        <div class="form-group">
                                                                                                            <label class="control-label">Final Cost</label>
                                                                                                            <input type="text" required="" name="final_cost" value="<?php echo $ord_stng['final_cost']; ?>" id="final_cost" class="form-control" placeholder="">
                                                                                                        </div>
                                                                                                    </div>
                                                    </div>-->
                                                <div class="row">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th>Artikel</th>
                                                                <th>Meer info</th>
                                                                <th class="text-right">huurprijs/box</th>
                                                                <th class="text-right">Wasprijs/box</th>
                                                                <th class="text-right">Prijs/verloren cup</th>
                                                                <th class="text-right">Aantal</th>
                                                                <th class="text-right">Gebruikte boxen</th>
                                                                <th class="text-right">Verloren cups</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <?php
                                                            foreach ($ord_items->result() as $row) {
                                                                ?>
                                                                        <!--<pre><?php //print_r($row); ?></pre>-->
                                                                <tr>
                                                            <input type="hidden" name="item_id[]" value="<?php echo $row->id; ?>" >
                                                            <td><?php echo $row->name; ?></td>
                                                            <td><?php echo $row->sort_desc; ?></td>
                                                            <td class="text-right">&#8364 <?php echo number_format((float) str_replace(",",".",$row->order_time_max_rental_cost_per_product), 2, '.', ''); ?> </td>

                                                            <td class="text-right">&#8364 <?php echo number_format((float) str_replace(",",".",$row->order_time_max_wash_cost_per_product), 2, '.', ''); ?></td>
                                                            
                                                            <td class="text-right">&#8364 <?php echo number_format((float) str_replace(",",".",$row->order_time_max_lost_cost_per_product), 2, '.', ''); ?> </td>


                                                          
                                                            <td class="text-right change_qty">
                                                             <input type="number" min="0" class="products_qty_change" 
                                                             value="<?php echo $row->order_qty; ?>" 
                                                             product_id="<?php echo $row->order_p_id; ?>"
                                                             order_items_id="<?php echo $row->id; ?>"
                                                             style="width:50px;" <?php  if($ord_stng['invoice_created_by_admin'] ==1){ echo "readonly"; } ?> >

                                                            </td>
                                                            

                                                            <td class="text-right"><input type="number" required="" name="used_cups[]" value="<?php echo $row->order_items_used_cups; ?>"  class="form-control" min="0" placeholder=""> </td>
                                                            <td class="text-right"><input type="number" required="" name="lost_cup[]" value="<?php echo $row->order_items_lost_cup; ?>"  class="form-control" min="0" placeholder=""> </td>

                                                            </tr>
                                                        <?php } ?>
                                                        </tbody>
                                                    </table>
                                                </div>

                                                <div class="row">
                                                    <table class="table table-striped table-inbox print-page mb-0" width="100%" >
                                                        <tr>
                                                            <td width="50%">					
                                                                <div class="">
                                                                    <div class="left-table"> <div class="raaddress">
                                                                            <p>Naam Contactpersoon :<?= $getUserDetails['f_name'] ?></p>
                                                                            <p>GSM : <?= $getUserDetails['gsm'] ?></p>
                                                                            <p>Telefoon : <?= $getUserDetails['phone'] ?></p>
                                                                            <p>Email : <?= $getUserDetails['email'] ?></p>
                                                                            <p>Leveradres : <?= $ord_stng['postcode'].' - '.$ord_stng['city_name'].', '.$ord_stng['street'].', '.$ord_stng['number'] ?></p>
                                                                            <!--<p>Gemeente : <?= $getUserDetails['city_name'] ?></p>
                                                                            <p>Postcode : <?= $getUserDetails['post_code'] ?></p>
                                                                            <p>Straat + nr : <?= $getUserDetails['street'] ?></p>
                                                                            <p>Email : <?= $getUserDetails['email'] ?></p>-->

                                                                        </div>
                                                                    </div>
                                                                </div>	
                                                            </td>
                                                            <td width="50%">

                                                                <div class="">
                                                                    <div class="right-table">
                                                                        <table class="normal-table table mb-2">
                                                                            <?php if ($ord_stng['collection_by_profiwash_at_the_event'] != '') { ?>
                                                                                <tr>
                                                                                    <td><strong>Levering op evenement</strong></td>
                                                                                    <td>&#8364; <?php
                                                                                        echo number_format((float) $ord_stng['collection_by_profiwash_at_the_event'], 2, ',', '');
                                                                                        $s_tot += floatval($ord_stng['collection_by_profiwash_at_the_event']);
                                                                                        ?></td>
                                                                                </tr>
                                                                            <?php } ?>
                                                                            <?php if ($ord_stng['return_to_address'] != '') { ?>
                                                                                <tr>
                                                                                    <td><strong>Levering via afhaalpunt</strong></td>
                                                                                    <td>&#8364; <?php
                                                                                        echo number_format((float) $ord_stng['return_to_address'], 2, ',', '');
                                                                                        $s_tot += floatval($ord_stng['return_to_address']);
                                                                                        ?></td>
                                                                                </tr>
                                                                            <?php } ?>
                                                                            <?php if ($ord_stng['collection_by_profiwash_at_collection_point'] != '') { ?>
                                                                                <tr>
                                                                                    <td >
                                                                                        <strong> Afhalen bij Durafest</strong>
                                                                                    </td>
                                                                                    <td >&#8364; <?php
                                                                                        echo number_format((float) $ord_stng['collection_by_profiwash_at_collection_point'], 2, ',', '');
                                                                                        $s_tot += floatval($ord_stng['collection_by_profiwash_at_collection_point']);
                                                                                        ?></td>
                                                                                </tr>
                                                                            <?php } ?>
                                                                            <?php if ($ord_stng['return_via_collection_point'] != '') { ?>
                                                                                <tr>
                                                                                    <td >
                                                                                        <strong>Ophalen op evenement </strong>
                                                                                    </td>
                                                                                    <td >&#8364; <?php
                                                                                        echo number_format((float) $ord_stng['return_via_collection_point'], 2, ',', '');
                                                                                        $s_tot += floatval($ord_stng['return_via_collection_point']);
                                                                                        ?></td>
                                                                                </tr>
                                                                            <?php } ?>
                                                                            <?php if ($ord_stng['delivery_to_profiwash'] != '') { ?>
                                                                                <tr>
                                                                                    <td>
                                                                                        <strong> Terugbrengen naar afhaalpunt</strong>
                                                                                    </td>
                                                                                    <td >&#8364; <?php
                                                                                        echo number_format((float) $ord_stng['delivery_to_profiwash'], 2, ',', '');
                                                                                        $s_tot += floatval($ord_stng['delivery_to_profiwash']);
                                                                                        ?></td>
                                                                                </tr>
                                                                            <?php } ?>
                                                                            <?php if ($ord_stng['pick_up_at_profiwash'] != '') { ?>
                                                                                <tr>
                                                                                    <td >
                                                                                        <strong> Terugbrengen naar Durafest </strong>
                                                                                    </td>
                                                                                    <td >&#8364; <?php
                                                                                        echo number_format((float) $ord_stng['pick_up_at_profiwash'], 2, ',', '');
                                                                                        $s_tot += floatval($ord_stng['pick_up_at_profiwash']);
                                                                                        ?></td>
                                                                                </tr>
                                                                            <?php } ?>
                                                                        </table>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </div>

                                            </div>

                                <input type="hidden" id="delivery_price" value="<?php echo $s_tot; ?>">
                                <input type="hidden" id="product_tax" value="<?php echo floatval((21 / 100) * $s_tot); ?>">
                                <input type="hidden" id="total" value="<?php echo floatval((21 / 100) * $s_tot); ?>">
                                <input type="hidden" id="product_price" value="">
                                <input type="hidden" id="orders_id" value="<?php echo $this->uri->segment(4); ?>">
                                           
                                            <div class="form-actions right"><button id="frmSubmit" type="submit" class="btn blue"> <i class="fa fa-check"></i> Opslaan </button> </div>
                                        </form>
                                    </div>
                                </div>

                                <div class="clearfix"></div>

                            </div> 
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
    $("#msg_div").fadeOut(7000);
</script>
<script>

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


    $('.products_qty_change').on('change',function () {
        var p_id = $(this).attr('product_id');
        var qty  = $(this).val();
        var order_items_id =  $(this).attr('order_items_id');
        
        swal({
            title: "Are you sure!",
            text: "Change Quantity",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
        .then((changeQty) =>{

            if(changeQty){
              
                $.ajax({
                    type: "post",
                    url: "<?php echo base_url(); ?>frontend/product/getProductPriceDetailsByPostcode",
                    data: {p_id:p_id,qty:qty,admin_action:"admin_change_qty"},
                    success: function (response) {
                       var obj = JSON.parse(response);
                       $('#product_price').val(obj.total_price);
                       update_product_price(p_id,qty,order_items_id);
                    },
                    error: function () {
                         swal("error", "please try later!", "error");
                    }
                });

        } else{

            swal("Cancel");
        }
        });


        

    });
    function update_product_price(p_id,qty,order_items_id){
        var product_price  =  $("#product_price").val();
        var delivery_price =  $("#delivery_price").val();
        var product_tax    =  $("#product_tax").val();
        var orders_id      =  $("#orders_id").val();
        
        // alert("p_id "+p_id+"qty "+qty+"product_price"+product_price+"delivery_price"+delivery_price+"product_tax"+product_tax+"orders_id"+orders_id+"order_items_id"+order_items_id);
        
        $.ajax({
            type: "post",
            url: "<?php echo base_url();?>admin/Order_management/update_event_order",
            data: {p_id:p_id,product_price:product_price,delivery_price:delivery_price,order_items_id:order_items_id,product_tax:product_tax,orders_id:orders_id,qty:qty,action:"admin_update_order"},
            success: function(response) {
                // console.log(response);
                if(response == 'sucess'){
                    swal("Thank You!", "Product Quantity Update Successfully", "success");
                }else{
                   swal("error", "please try later!", "error");
                }
            },
            error: function () {
                swal("error", "please try later!", "error");
            }
        });
       
        
    }
    

</script>

 
</body>

</html>