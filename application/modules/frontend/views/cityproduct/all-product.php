<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/front/css/pignose.calendar.css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/front/clockpicker/bootstrap-clockpicker.css">
        <style>
            .error{
                border: 1px solid red; 
            } 
        </style>
        <style>
            img.img-fluid {
                height: 200px;
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v2'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->



        <!--+++++++++++++ Banner +++++++++++++++++++-->
        <section style="background:url(<?php echo base_url(); ?>uploads/cms/<?php echo $cms['banner_image']; ?>) no-repeat center top; background-size: cover ;padding: 112px 0 25px;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="text_inner">
                            <h1><?php echo $cms['banner_text_1']; ?></h1>
                            <p><?php echo $cms['banner_text_2']; ?></p>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <!--+++++++++++++ Banner End +++++++++++++++++++-->
        <div class="cart-sec">

            <div class="container">

                <div class="row">

                    <div class="col-md-12">

                        <h2 class="comman-title text-center">
                            Plaats Bestelling
                        </h2>
                        <form action="" onsubmit="return false;" id="chkOutFrm" method="post">
                            <div class="card box-sec">
                                <div class="card-header text-center">
                                    Verwachte omvang evenement
                                </div>


                                <div class="card-body">
                                    <div class="row rowX">
                                        <div class="col">
                                            <input type="text" class="form-control" id="event_name" name="event_name" placeholder="Naam evenement">
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" name="number_of_visitor" id="number_of_visitor" placeholder="Aantal personen">
                                        </div>
                                    </div>

                                    <div class="row rowX">
                                        <div class="col">
                                            <input type="text" class="form-control" name="cups_per_visitor" id="cups_per_visitor" placeholder="# Bekers / bezoeker">
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" name="number_of_bar" id="number_of_bar" placeholder="Aantal bars">
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="card box-sec">
                                <div class="card-header text-center">
                                    Locatie evenement
                                </div>



                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <?php // echo $this->session->userdata('USER_TYPE'); ?>
                                            <?php
//                                            echo $this->session->userdata('USER_ID');
                                            $getAllCity = getAlCityPostcodeBySuperCity($this->session->userdata('USER_ID'));
//                                            print_R($getAllCity->post_code);
                                            if ($this->session->userdata('USER_TYPE') != 'Super_City') {
                                                ?>
                                                <input type="text" readonly="" class="form-control" value="<?php echo $this->session->userdata('USER_POSTCODE'); ?>" name="postcode" id="postcode" placeholder="Postcode">
                                            <?php } else { ?>
                                                <select name="postcode" id="postcode" required="" class="form-control">
                                                    <?php
                                                    if (count($getAllCity) > 0) {
                                                        foreach ($getAllCity as $row) {
                                                            ?>
                                                            <option value="<?php echo $row->post_code; ?>" ><?php echo $row->post_code; ?></option>
                                                        <?php
                                                        }
                                                    } else {
                                                        ?> 
                                                        <option value="" >No data Found</option>
                                                <?php } ?>
                                                </select>
<?php } ?>
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control" name="street" id="street" placeholder="Straat">
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col">
                                            <input type="text" class="form-control" name="number" id="number" placeholder="Nummer">
                                        </div>
                                        <div class="col"></div>
                                        <input type="hidden" class="form-control" name="event_date" id="event_date" >
                                    </div>
                                </div>
                            </div>

                            <?php /* ?>
                              <div class="card box-sec">
                              <div class="card-header text-center">
                              Datum
                              </div>
                              <div class="card-body">
                              <!-- <div id="calendari_lateral1"></div> -->
                              <div class="calendar"></div>
                              <div class="box" style="display: block;    margin-top: 20px;"></div>
                              </div></div>
                              <?php */ ?>


                            <div class="card box-sec">
                                <div class="card-header text-center">
                                    Datum 
                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <input type="text" class="form-control calendarDatePopup" name="event_start_date" id="event_start_date" placeholder="Startdatum" required="" />
                                            <!--<input type="text" class="form-control clockpicker" name="event_start_time" id="event_start_time" placeholder="Event start time" required="" />-->
                                            <select  name="event_start_time_hr" class="form-control "  id="event_start_time_hr">
                                                <option value="" >Startuur</option>
                                                <?php for ($i = 00; $i <= 24; $i++) { ?>
                                                    <option value="<?= sprintf("%02d", $i) ?>" ><?= sprintf("%02d", $i) ?></option>
<?php } ?>

                                            </select>
                                            <input type="hidden" value="00"  name="event_start_time_min"  />
<!--                                             <select style="width:50%; float: left;" name="event_start_time_min" class="form-control "  id="event_start_time_min">
                                                <option value="" >Start Minute</option>
                                            <?php for ($i = 00; $i <= 60; $i++) { ?>
                                                                <option value="<?= sprintf("%02d", $i) ?>" ><?= sprintf("%02d", $i) ?></option>
<?php } ?>
  
                                            </select>-->
                                        </div>
                                        <div class="col">
                                            <input type="text" class="form-control calendarDatePopup" name="event_end_date" id="event_end_date" placeholder="Einddatum" required="" />
                                            <!--<input type="text" class="form-control clockpicker" name="event_end_time" id="event_end_time" placeholder="Event end time" required="" />-->
                                            <select  name="event_end_time_hr" class="form-control "  id="event_end_time_hr">
                                                <option value="" >Einduur</option>
                                                <?php for ($i = 00; $i <= 24; $i++) { ?>
                                                    <option value="<?= sprintf("%02d", $i) ?>" ><?= sprintf("%02d", $i) ?></option>
<?php } ?>

                                            </select>
                                            <input type="hidden" value="00"  name="event_end_time_min"  />
<!--                                             <select style="width:50%; float: left;" name="event_end_time_min" class="form-control "  id="event_end_time_min">
                                                <option value="" >End Minute</option>
                                            <?php for ($i = 00; $i <= 60; $i++) { ?>
                                                                <option value="<?= sprintf("%02d", $i) ?>" ><?= sprintf("%02d", $i) ?></option>
<?php } ?>
  
                                            </select>-->
                                        </div>
                                    </div>

                                </div>
                            </div>




                    </div>
                </div>
                <div class="row">

                    <?php
                    if ($query->num_rows() > 0) {
                        $i = 1;
                        foreach ($query->result() as $row) {
                            ?>
                            <div class="col-md-4">
                                <div class="box-container text-center">
                                    <div class="box-header">
        <?php echo $row->name; ?>
                                    </div>
                                    <div class="box-body">
                                        <div class="title">
                                            Materiaal: <?php echo $row->material; ?>
                                            <strong> (<?php if ($row->sort_desc != '0') echo $row->sort_desc; ?>)</strong>
                                        </div>
                                        <div class="prod-pic">
                                            <img src="<?php echo base_url(); ?>uploads/product/<?php echo $row->image; ?>" alt="" class="img-fluid">
                                        </div>
                                        <div class="select-cover">
                                            <input type="hidden" name="p_id[]" value="<?php echo $row->p_id; ?>"/>
                                            <input type="hidden" name="fashion_model[<?php echo $row->p_id; ?>]" value="<?php echo $row->name; ?>"/>
                                            <input type="hidden" name="material[<?php echo $row->p_id; ?>]" value="<?php echo $row->material; ?>"/>
                                            <input type="hidden" id="box_prc_<?php echo $row->p_id; ?>" name="box_prc[<?php echo $row->p_id; ?>]" value="<?php echo $row->box_prc; ?>"/>
                                            <input type="hidden" id="wash_prc_<?php echo $row->p_id; ?>" name="wash_prc[<?php echo $row->p_id; ?>]" value="<?php echo $row->wash_prc; ?>"/>
                                            <input type="hidden" id="loss_prc_<?php echo $row->p_id; ?>" name="loss_prc[<?php echo $row->p_id; ?>]" value="<?php echo $row->loss_prc; ?>"/>
                                            <input type="number" class="form-control products_qty" min="1" max="<?php echo $row->qty; ?>" p_id="<?php echo $row->p_id; ?>" name="products[<?php echo $row->p_id; ?>]" placeholder="Aantal boxen">
                                        </div>
                                        <ul>
                                            <?php
                                            $getPriceDetails = getProductPriceDetailsByPostcode($row->p_id, $this->session->userdata('USER_POSTCODE'));
//                                           
                                            ?>
                                            <li><i class="fa fa-caret-right" aria-hidden="true"></i> Aantal cups/box: <?php echo (isset($row->qty)) ? $row->qty : 0; ?></li>
                                            <li><i class="fa fa-caret-right" aria-hidden="true"></i> Huurprijs/box: &#128; 
                                                <span class="box_prc_<?php echo $row->p_id; ?>"><?php echo (isset($getPriceDetails['box_prc'])) ? number_format((float) $getPriceDetails['box_prc'], 2, ',', '') : number_format((float) 0, 2, ',', ''); ?></span></li>
                                            <li><i class="fa fa-caret-right" aria-hidden="true"></i> Wasprijs/box: &#128;  
                                                <span class="wash_prc_<?php echo $row->p_id; ?>"><?php echo (isset($getPriceDetails['wash_prc'])) ? number_format((float) $getPriceDetails['wash_prc'], 2, ',', '') : number_format((float) 0, 2, ',', ''); ?></span></li>
                                            <li> <i class="fa fa-caret-right" aria-hidden="true"></i> Verlies/cup:  &#128; 
                                                <span class="loss_prc_<?php echo $row->p_id; ?>"> <?php echo (isset($getPriceDetails['loss_prc'])) ? number_format((float) $getPriceDetails['loss_prc'], 2, ',', '') : number_format((float) 0, 2, ',', ''); ?></span>
                                            </li>
                                        </ul>
                                        <!--                                        <ul>
                                                                                    <li><i class="fa fa-caret-right" aria-hidden="true"></i> Aantal cups/box: <?php echo (isset($row->qty)) ? $row->qty : 0; ?></li>
                                                                                    <li><i class="fa fa-caret-right" aria-hidden="true"></i> Huurprijs/box: &#128; 
                                        <?php echo (isset($row->box_prc)) ? number_format((float) $row->box_prc, 2, ',', '') : number_format((float) 0, 2, ',', ''); ?></li>
                                                                                    <li><i class="fa fa-caret-right" aria-hidden="true"></i> Wasprijs/box: &#128;  
                                        <?php echo (isset($row->wash_prc)) ? number_format((float) $row->wash_prc, 2, ',', '') : number_format((float) 0, 2, ',', ''); ?></li>
                                                                                    <li> <i class="fa fa-caret-right" aria-hidden="true"></i> Verlies/cup:  &#128; 
        <?php echo (isset($row->loss_prc)) ? number_format((float) $row->loss_prc, 2, ',', '') : number_format((float) 0, 2, ',', ''); ?>
                                                                                    </li>
                                                                                </ul>-->
                                    </div>
                                </div>
                            </div>

                            <?php
                            $i++;
                        }
                    } else {
                        ?>
                        <div class="col-md-4">
                            <div class="prdt">
                                <h2>No Product Found</h2>
                            </div>
                        </div>
<?php } ?>

                </div>
                <div class="card box-sec">
                    <div class="card-body option-box">
                        <div class="row">
                            <div class="col-md-5">

                                <label class="checkcontainer"> Levering op evenement ( &#128; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_the_event'], 2, ',', ''); ?>)
                                    <input type="checkbox" name="collection_by_profiwash_at_the_event" value="<?php echo $ord_stng['collection_by_profiwash_at_the_event'] == '0' ? 'Gratis' : $ord_stng['collection_by_profiwash_at_the_event']; ?>" class="chk_col_1" id="checkbox" />
                                    <span class="checkmark"></span>
                                </label>


                                <label class="checkcontainer"> Levering via afhaalpunt (&#128; <?php echo number_format((float) $ord_stng['return_to_address'], 2, ',', ''); ?>)
                                    <input type="checkbox"  class="chk_col_1" name="return_to_address" value="<?php echo $ord_stng['return_to_address'] == '0' ? 'Gratis' : $ord_stng['return_to_address']; ?>" id="checkbox2" />
                                    <span class="checkmark"></span>
                                </label>

                                <label class="checkcontainer"> Afhalen bij durafest (&#128; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_collection_point'], 2, ',', ''); ?>)
                                    <input type="checkbox"  class="chk_col_1" name="collection_by_profiwash_at_collection_point" value="<?php echo $ord_stng['collection_by_profiwash_at_collection_point'] == '0' ? 'Gratis' : $ord_stng['collection_by_profiwash_at_collection_point']; ?>" id="checkbox3" />
                                    <span class="checkmark"></span>
                                </label>


                                <div class="round d-none">
                                    <input type="checkbox"  class="chk_col_1" name="collection_by_profiwash_at_the_event" value="<?php echo $ord_stng['collection_by_profiwash_at_the_event'] == '0' ? 'Gratis' : $ord_stng['collection_by_profiwash_at_the_event']; ?>" id="checkbox" />
                                    <label for="checkbox"></label>
                                    Levering op evenement (&#128; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_the_event'], 2, ',', ''); ?>)
                                </div>


                                <div class="round d-none">
                                    <input type="checkbox"  class="chk_col_1" name="return_to_address" value="<?php echo $ord_stng['return_to_address'] == '0' ? 'Gratis' : $ord_stng['return_to_address']; ?>" id="checkbox2" />
                                    <label for="checkbox2"></label>
                                    Levering via afhaalpunt (&#128; <?php echo number_format((float) $ord_stng['return_to_address'], 2, ',', ''); ?>)
                                </div>


                                <div class="round d-none">
                                    <input type="checkbox"  class="chk_col_1" name="collection_by_profiwash_at_collection_point" value="<?php echo $ord_stng['collection_by_profiwash_at_collection_point'] == '0' ? 'Gratis' : $ord_stng['collection_by_profiwash_at_collection_point']; ?>" id="checkbox3" />
                                    <label for="checkbox3"></label>
                                    Afhalen bij durafest (&#128; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_collection_point'], 2, ',', ''); ?>)
                                </div>
                            </div>
                            <div class="col-md-5">

                                <label class="checkcontainer"> Ophalen op evenement  (&#128; <?php echo number_format((float) $ord_stng['return_via_collection_point'], 2, ',', ''); ?>)
                                    <input type="checkbox"  class="chk_col_2" name="return_via_collection_point" value="<?php echo $ord_stng['return_via_collection_point'] == '0' ? 'Gratis' : $ord_stng['return_via_collection_point']; ?>" id="checkbox4" />
                                    <span class="checkmark"></span>
                                </label>

                                <label class="checkcontainer"> Terugbrengen naar afhaalpunt (&#128; <?php echo number_format((float) $ord_stng['delivery_to_profiwash'], 2, ',', ''); ?>)
                                    <input type="checkbox"  class="chk_col_2" name="delivery_to_profiwash" value="<?php echo $ord_stng['delivery_to_profiwash'] == '0' ? 'Gratis' : $ord_stng['delivery_to_profiwash']; ?>" id="checkbox5" />
                                    <span class="checkmark"></span>
                                </label>

                                <label class="checkcontainer"> Terugbrengen naar durafest (&#128; <?php echo number_format((float) $ord_stng['pick_up_at_profiwash'], 2, ',', ''); ?>)
                                    <input type="checkbox"  class="chk_col_2" name="pick_up_at_profiwash" value="<?php echo $ord_stng['pick_up_at_profiwash'] == '0' ? 'Gratis' : $ord_stng['pick_up_at_profiwash']; ?>" id="checkbox6" />
                                    <span class="checkmark"></span>
                                </label>

                                <div class="round d-none">
                                    <input type="checkbox"  class="chk_col_2" name="return_via_collection_point" value="<?php echo $ord_stng['return_via_collection_point'] == '0' ? 'Gratis' : $ord_stng['return_via_collection_point']; ?>" id="checkbox4" />
                                    <label for="checkbox4"></label>
                                    Ophalen op evenement  (&#128; <?php echo number_format((float) $ord_stng['return_via_collection_point'], 2, ',', ''); ?>)
                                </div>

                                <div class="round d-none">
                                    <input type="checkbox"  class="chk_col_2" name="delivery_to_profiwash" value="<?php echo $ord_stng['delivery_to_profiwash'] == '0' ? 'Gratis' : $ord_stng['delivery_to_profiwash']; ?>" id="checkbox5" />
                                    <label for="checkbox5"></label>
                                    Terugbrengen naar afhaalpunt (&#128; <?php echo number_format((float) $ord_stng['delivery_to_profiwash'], 2, ',', ''); ?>)
                                </div>

                                <div class="round d-none">
                                    <input type="checkbox"  class="chk_col_2" name="pick_up_at_profiwash" value="<?php echo $ord_stng['pick_up_at_profiwash'] == '0' ? 'Gratis' : $ord_stng['pick_up_at_profiwash']; ?>" id="checkbox6" />
                                    <label for="checkbox6"></label>
                                    Terugbrengen naar durafest (&#128; <?php echo number_format((float) $ord_stng['pick_up_at_profiwash'], 2, ',', ''); ?>)
                                </div>

                            </div>
                        </div>
                    </div>  
                </div>



                </form>


                <div class="short-note">
                    <div class="row">
                        <div class="col-md-12">
                            <ul>
                                <?php
                                $tc = json_decode($ord_stng['terms_and_con']);
                                if (!empty($tc)) {
                                    for ($i = 0; $i < count($tc); $i++) {
                                        ?> 
                                        <li>- <?php echo $tc[$i]; ?></li>
                                    <?php
                                    }
                                }
                                ?>
                                <!--                                <li>- De dozen zijn bij levering verzegeld. Elke geopende box is volledig opgeladen: zowel de huur als de schoonmaak.</li>
                                                                <li>- De dozen zijn bij levering verzegeld. Elke geopende box is volledig opgeladen: zowel de huur als de schoonmaak.</li>-->
                            </ul>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <button type="button" id="populate_cart" class="bttn-green">Bereken prijs</button>

                        </div>
                    </div>
                </div>

                <div id="cartSection" class="table-responsive">       
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>Hoeveelheid</th>
                                <th>Model</th>
                                <th class="numeric">Huurprijs/kist</th>
                                <th class="numeric">Reinigen & drogen bekers/kist</th>
                                <th class="numeric">Maximale Kost<span>(Excl:verloren en onbruikbare bekers)</span></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td colspan="5">Populate Cart</td>
                            </tr>
                        </tbody>
                    </table>

                </div>


            </div> 

        </div>



        <div id="myModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Select Postcode</h5>
                        <!--<button type="button" class="close" data-dismiss="modal">&times;</button>-->
                    </div>
                    <div class="modal-body">
                        <p>Please select your postcode.</p>
                        <form name="set_postcode" action="" method="post" class="col-sm-12">
                            <div class="form-group">
                                <select required="" name="user_postcode" id="user_postcode" class="form-control" >
                                    <option value="">Selecteer Postcode</option>
                                    <?php
                                    if ($cities->num_rows() > 0) {
                                        $i = 1;
                                        foreach ($cities->result() as $row) {
                                            ?>
                                            <option value="<?= $row->post_code ?>"><?= $row->post_code ?></option>
                                            <?php
                                            $i++;
                                        }
                                    }
                                    ?>
                                </select>
                            </div>

                            <button type="submit" name="set_type" value="postcode" class="btn btn-primary">Enter</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>


        <!--+++++++++++++ footer Start +++++++++++++++++++-->

    <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/front/js/pignose.calendar.full.min.js"></script>	
    <script type="text/javascript" src="<?php echo base_url(); ?>assets/front/clockpicker/bootstrap-clockpicker.js"></script>    
<?php if (!$this->session->userdata('user_postcode') || $this->session->userdata('user_postcode') == '') { ?>
            <!--    <script>
                                            $(document).ready(function () {
                                                $("#myModal").modal('show');
                                            });
                                            $('#myModal').modal({backdrop: 'static', keyboard: false})
                </script>-->
<?php } ?>
    <script>


                            $('.products_qty').on('change', function () {
//        console.log($(this).attr('p_id'));
                                var p_id = $(this).attr('p_id');
                                var qty = $(this).val();
                                var postcode = $('#postcode').val();

                                $.ajax({
                                    type: "post",
                                    url: "<?php echo base_url(); ?>frontend/cityproduct/getProductPriceDetailsByPostcode",
                                    data: {p_id: p_id, qty: qty, postcode: postcode},
                                    async: false,
                                    success: function (response) {
                                        var obj = JSON.parse(response);
//                console.log(obj.box_prc);
//                console.log(obj.wash_prc);
//                console.log(obj.loss_prc);
                                        $('#box_prc_' + p_id).val(obj.box_prc);
                                        $('#wash_prc_' + p_id).val(obj.wash_prc);
                                        $('#loss_prc_' + p_id).val(obj.loss_prc);
                                        $('.box_prc_' + p_id).html(obj.box_prc);
                                        $('.wash_prc_' + p_id).html(obj.wash_prc);
                                        $('.loss_prc_' + p_id).html(obj.loss_prc);
                                    },
                                    error: function () {
                                        alert('Error occured');
                                    }
                                });

                            });

                            $(function () {


                                $('.clockpicker').clockpicker({
                                    placement: 'top',
                                    align: 'left',
                                    donetext: 'Done'
                                });


                                $('input.calendarDatePopup').pignoseCalendar({
                                    format: 'YYYY-MM-DD'
                                });


                            });


                            $(function () {
//                                $('input[type="checkbox"]').on('change', function () {
//                                    $('input[type="checkbox"]').not(this).prop('checked', false);
//                                });


                                $('.chk_col_1').on('change', function () {
                                    $('.chk_col_1').not(this).prop('checked', false);
                                });
                                $('.chk_col_2').on('change', function () {
                                    $('.chk_col_2').not(this).prop('checked', false);
                                });


                            });



                            /* 
                             
                             $(function () {
                             var d = new Date();
                             
                             var month = d.getMonth() + 1;
                             var day = d.getDate();
                             
                             var output = d.getFullYear() + '-' +
                             (month < 10 ? '0' : '') + month + '-' +
                             (day < 10 ? '0' : '') + day;
                             $('#event_date').val(output);
                             });
                             function onSelectHandler(date, context) {
                             
                             var $element = context.element;
                             var $calendar = context.calendar;
                             var $box = $element.siblings('.box').show();
                             //            var text = 'You selected date ';
                             var text = '';
                             
                             if (date[0] !== null) {
                             text += date[0].format('YYYY-MM-DD');
                             }
                             
                             if (date[0] !== null && date[1] !== null) {
                             text += ' ~ ';
                             } else if (date[0] === null && date[1] == null) {
                             text += 'nothing';
                             }
                             
                             if (date[1] !== null) {
                             text += date[1].format('YYYY-MM-DD');
                             }
                             
                             //            $box.text(text);
                             
                             $('#event_date').val(text);
                             }
                             
                             $(function () {
                             $('.calendar').pignoseCalendar({
                             select: onSelectHandler
                             });
                             });
                             
                             */

                            $('#populate_cart').click(function () {
                                $(".error").removeClass('error');
                                var event_name = $('#event_name').val();
                                var number_of_visitor = $('#number_of_visitor').val();
                                var cups_per_visitor = $('#cups_per_visitor').val();
                                var number_of_bar = $('#number_of_bar').val();
                                var postcode = $('#postcode').val();
                                var street = $('#street').val();
                                var number = $('#number').val();
                                // var event_date = $('#event_date').val();
                                var event_start_date = $('#event_start_date').val();
                                var event_start_time = $('#event_start_time').val();
                                var event_end_date = $('#event_end_date').val();
                                var event_end_time = $('#event_end_time').val();


                                var pro = [];
                                var i = 0;
                                var j = 0;
                                var err = 0;

                                $('input[name^="product_qty[]"]').each(function () {
                                    if ($(this).val() != '') {
                                        j++;
//                    pro[i]=$(this).attr('p_id')+'='+$(this).val();
                                    }
                                    i++;
                                });
                                if (event_name == '') {
                                    $("#event_name").addClass('error');
                                    err = 1;
                                }
                                if (number_of_visitor == '') {
                                    $("#number_of_visitor").addClass('error');
                                    err = 1;
                                }
                                if (cups_per_visitor == '') {
                                    $("#cups_per_visitor").addClass('error');
                                    err = 1;
                                }
                                if (number_of_bar == '') {
                                    $("#number_of_bar").addClass('error');
                                    err = 1;
                                }
                                if (postcode == '') {
                                    $("#postcode").addClass('error');
                                    err = 1;
                                }
                                if (street == '') {
                                    $("#street").addClass('error');
                                    err = 1;
                                }
                                if (number == '') {
                                    $("#number").addClass('error');
                                    err = 1;
                                }
                                /*
                                 if (event_date == '') {
                                 $(".calendar").addClass('error');
                                 err = 1;
                                 }
                                 */

                                if (event_start_date == '') {
                                    $("#event_start_date").addClass('error');
                                    err = 1;
                                }

                                if (event_start_time == '') {
                                    $("#event_start_time").addClass('error');
                                    err = 1;
                                }

                                if (event_end_date == '') {
                                    $("#event_end_date").addClass('error');
                                    err = 1;
                                }

                                if (event_end_time == '') {
                                    $("#event_end_time").addClass('error');
                                    err = 1;
                                }


                                if (err == '1') {

                                    $("html, body").animate({
                                        scrollTop: 0
                                    }, 1000);
                                    return false;
                                }
//            alert(pro);
//            return false;
                                var data = "";
                                $.ajax({
                                    type: "post",
                                    url: "<?php echo base_url(); ?>frontend/cityproduct/populateCart",
                                    data: $('#chkOutFrm').serialize(),
                                    async: false,
                                    success: function (response) {
                                        $('#cartSection').html(response);
                                    },
                                    error: function () {
                                        alert('Error occured');
                                    }
                                });

                            });


//        $('#submitCart').click(function () {
//        $('#submitCart').submit();
//        });

    </script>
</html>
