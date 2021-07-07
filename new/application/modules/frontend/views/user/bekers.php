<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/front/css/pignose.calendar.css">
        <style>
            .error{
                border: 1px solid red; 
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v2'); ?>  
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
        <!--+++++++++++++ Header End +++++++++++++++++++-->




        <div class="cart-sec">
            <div class="container">

                <div class="row">

                    <div class="col-md-12">

                        <h2 class="comman-title text-center">
                            Bekers Reinigen
                        </h2>
                        <form action="" onsubmit="return false;" id="chkOutFrm" method="post">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="card box-sec h-100">
                                        <div class="card-header text-center">
                                            Locatie
                                        </div>
                                        <div class="card-body">



                                            <div class="row">
                                                <div class="col">
                                                    <input type="text" class="form-control" name="postcode" id="postcode" placeholder="Postcode">
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col">
                                                    <input type="text" class="form-control" name="street" id="street" placeholder="Straat">
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col">
                                                    <input type="text" class="form-control" name="number" id="number" placeholder="Nummer">
                                                </div>
                                            </div>

                                            <input type="hidden" class="form-control" name="event_date" id="event_date" >
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card box-sec">
                                        <div class="card-header text-center">
                                            Ophaal Datum
                                        </div>
                                        <div class="card-body inner-date">
                                            <!-- <div id="calendari_lateral1"></div> -->
                                            <div class="stad">
                                                <div class="calendar"></div>
                                                <div class="box" style="display: block;    margin-top: 20px;"></div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-inbox">
                                            <thead>
                                                <tr>
                                                    <th>Type</th>
                                                    <th># Boxen </th>
                                                    <th>Wastrijs / box</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                if ($query->num_rows() > 0) {
                                                    $i = 1;
                                                    foreach ($query->result() as $row) {
                                                        ?>
                                                        <tr>
                                                            <td data-title="Type"><?php echo $row->name; ?></td>
                                                            <td data-title="Hoeveelheid">
                                                                <div class="cover-select">
                                                                    <input type="number"  id="qnty_<?php echo $row->p_id; ?>" class="custom-input" min="1" max="<?php echo $row->qty; ?>"name="products[<?php echo $row->p_id; ?>]" placeholder="">
                                                                </div>
                                                            </td>
                                                            <td data-title="Prijs afwas/st" class="numeric">&#128;      
                                                                <span id="wash_prc_<?php echo $row->p_id; ?>"><?php echo number_format((float) $row->wash_prc, 2, ',', ''); ?></span>
                                                                <input type="hidden" name="wash_prc[<?php echo $row->p_id; ?>]" value="<?php echo $row->wash_prc; ?>" />
                                                            </td>
                                                            <!--<td data-title="Totaal" class="numeric">&#128;  <span id="prc_<?php echo $row->p_id; ?>">0</span></td>-->

                                                        </tr>
                                                        <?php
                                                        $i++;
                                                    }
                                                } else {
                                                    ?>
                                                    <tr>
                                                        <td colspan="4">No Product Found</td>       
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card box-sec h-100">
                                        <div class="card-body inner-part">



                                            <!--                                
                                            
                                                                            <label class="checkcontainer"> Levering op evenement (&#128; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_the_event'], 2, ',', ''); ?>)
                                                                          <input type="checkbox" name="collection_by_profiwash_at_the_event" value="<?php echo $ord_stng['collection_by_profiwash_at_the_event'] == '0' ? 'Gratis' : $ord_stng['collection_by_profiwash_at_the_event']; ?>" id="checkbox" />
                                                                                    
                                                                          <span class="checkmark"></span>
                                                                        </label>
                                            
                                                                        <label class="checkcontainer"> Levering via afhaalpunt (&#128; <?php echo number_format((float) $ord_stng['return_to_address'], 2, ',', ''); ?>)
                                            
                                                                         <input type="checkbox" name="return_to_address" value="<?php echo $ord_stng['return_to_address'] == '0' ? 'Gratis' : $ord_stng['return_to_address']; ?>" id="checkbox2" />
                                                                                    
                                                                          <span class="checkmark"></span>
                                                                        </label>
                                            
                                                                        <label class="checkcontainer"> Afleveren bij Durafest (&#128; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_collection_point'], 2, ',', ''); ?>)
                                            
                                                                        <input type="checkbox" name="collection_by_profiwash_at_collection_point" value="<?php echo $ord_stng['collection_by_profiwash_at_collection_point'] == '0' ? 'Gratis' : $ord_stng['collection_by_profiwash_at_collection_point']; ?>" id="checkbox3" />
                                                                                    
                                                                          <span class="checkmark"></span>
                                                                        </label>
                                            
                                            
                                                                        <label class="checkcontainer">  Ophaen op evenement  (&#128; <?php echo number_format((float) $ord_stng['return_via_collection_point'], 2, ',', ''); ?>)
                                            
                                                                        <input type="checkbox" name="return_via_collection_point" value="<?php echo $ord_stng['return_via_collection_point'] == '0' ? 'Gratis' : $ord_stng['return_via_collection_point']; ?>" id="checkbox4" />
                                                                                    
                                                                          <span class="checkmark"></span>
                                                                        </label>
                                            
                                            
                                                                        <label class="checkcontainer">  Terugbrengen naar afhaalpunt (&#128; <?php echo number_format((float) $ord_stng['delivery_to_profiwash'], 2, ',', ''); ?>)
                                            
                                                                        <input type="checkbox" name="delivery_to_profiwash" value="<?php echo $ord_stng['delivery_to_profiwash'] == '0' ? 'Gratis' : $ord_stng['delivery_to_profiwash']; ?>" id="checkbox5" />
                                                                                    
                                                                          <span class="checkmark"></span>
                                                                        </label>
                                            
                                            
                                                                        <label class="checkcontainer">  Terugbrengen naar Durafest (&#128; <?php echo number_format((float) $ord_stng['pick_up_at_profiwash'], 2, ',', ''); ?>)
                                                                            
                                                                        <input type="checkbox" name="pick_up_at_profiwash" value="<?php echo $ord_stng['pick_up_at_profiwash'] == '0' ? 'Gratis' : $ord_stng['pick_up_at_profiwash']; ?>" id="checkbox6" />
                                                                                    
                                                                          <span class="checkmark"></span>
                                                                        </label>
                                            
                                            
                                                                            <div class="round d-none">
                                                                                    <input type="checkbox" name="collection_by_profiwash_at_the_event" value="<?php echo $ord_stng['collection_by_profiwash_at_the_event'] == '0' ? 'Gratis' : $ord_stng['collection_by_profiwash_at_the_event']; ?>" id="checkbox" />
                                                                                    <label for="checkbox"></label>
                                                                                    Levering op evenement (&#128; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_the_event'], 2, ',', ''); ?>)
                                                                             </div>
                                            
                                                                             <div class="round d-none">
                                                                                <input type="checkbox" name="return_to_address" value="<?php echo $ord_stng['return_to_address'] == '0' ? 'Gratis' : $ord_stng['return_to_address']; ?>" id="checkbox2" />
                                                                                <label for="checkbox2"></label>
                                                                                Levering via afhaalpunt (&#128; <?php echo number_format((float) $ord_stng['return_to_address'], 2, ',', ''); ?>)
                                                                            </div>
                                            
                                            
                                                                    <div class="round d-none">
                                                                        <input type="checkbox" name="collection_by_profiwash_at_collection_point" value="<?php echo $ord_stng['collection_by_profiwash_at_collection_point'] == '0' ? 'Gratis' : $ord_stng['collection_by_profiwash_at_collection_point']; ?>" id="checkbox3" />
                                                                        <label for="checkbox3"></label>
                                                                        Afleveren bij Durafest (&#128; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_collection_point'], 2, ',', ''); ?>)
                                                                    </div>
                                            
                                            
                                                                    <div class="round d-none">
                                                                        <input type="checkbox" name="return_via_collection_point" value="<?php echo $ord_stng['return_via_collection_point'] == '0' ? 'Gratis' : $ord_stng['return_via_collection_point']; ?>" id="checkbox4" />
                                                                        <label for="checkbox4"></label>
                                                                        Ophaen op evenement  (&#128; <?php echo number_format((float) $ord_stng['return_via_collection_point'], 2, ',', ''); ?>)
                                                                    </div>
                                            
                                            
                                                                    <div class="round d-none">
                                                                        <input type="checkbox" name="delivery_to_profiwash" value="<?php echo $ord_stng['delivery_to_profiwash'] == '0' ? 'Gratis' : $ord_stng['delivery_to_profiwash']; ?>" id="checkbox5" />
                                                                        <label for="checkbox5"></label>
                                                                        Terugbrengen via afhaalpunt (&#128; <?php echo number_format((float) $ord_stng['delivery_to_profiwash'], 2, ',', ''); ?>)
                                                                    </div>
                                                                    <div class="round d-none">
                                                                        <input type="checkbox" name="pick_up_at_profiwash" value="<?php echo $ord_stng['pick_up_at_profiwash'] == '0' ? 'Gratis' : $ord_stng['pick_up_at_profiwash']; ?>" id="checkbox6" />
                                                                        <label for="checkbox6"></label>
                                                                        Terugbrengen bij Durafest (&#128; <?php echo number_format((float) $ord_stng['pick_up_at_profiwash'], 2, ',', ''); ?>)
                                                                    </div>
                                                                            
                                            -->






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


                                            </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <div class="mob-center"><button type="button" id="populate_cart" class="bttn-green">Bereken Prijs</button> </div>
                    </div>
                </div> 
            </div>
        </div>
  

    <div class="container">
        <div class="row pb-4" id="cartSection">
            <div class="col-md-8" id="">
                <table class="totaal table table-striped table-inbox">
                </table>
            </div>
        </div> 
    </div>

    <!--+++++++++++++ footer Start +++++++++++++++++++-->

    <?php $this->load->view('common/footer_v2'); ?>  


</body>
<?php $this->load->view('common/footer_js'); ?>  
<script type="text/javascript" src="<?php echo base_url(); ?>assets/front/js/pignose.calendar.full.min.js"></script>	
<script>
$(function () {

    $('.chk_col_1').on('change', function () {
        $('.chk_col_1').not(this).prop('checked', false);
    });
    $('.chk_col_2').on('change', function () {
        $('.chk_col_2').not(this).prop('checked', false);
    });


});

//        function chkPrc(id){
//            var qty=$('#qnty_'+id).val();
//            var prc=('#wash_prc_'+id).html();
//            var thisTot=parseFloat( qty*prc );
//            alert(thisTot);
//        }
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

$('#populate_cart').click(function () {
    $(".error").removeClass('error');

    var postcode = $('#postcode').val();
    var street = $('#street').val();
    var number = $('#number').val();
    var event_date = $('#event_date').val();

    var err = 0;



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
    if (event_date == '') {
        $(".calendar").addClass('error');
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
        url: "<?php echo base_url(); ?>frontend/cityproduct/populateWashCart",
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
</script>
</html>
