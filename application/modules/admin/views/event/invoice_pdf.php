<style>
    h3
    {
        border:1px solid black;
    }
    a.bttn-green {
        margin-top: 40px;
    }
    a.bttn-green {
        width: 178px;
        height: 63px;
        border-radius: 5px;  
        background: #67b930;
        color: #fff;
        text-align: center;
        text-transform: uppercase;
    }
    .bttn-green {
        width: 308px;
        height: 63px;
        color: #fff;
        font-family: \'Poppins\', sans-serif;
        line-height: 63px;
        border-radius: 5px;
        background: #67b930;
        font-size: 20px;
        display: inline-block;
        border: 2px solid #67b930;
        font-weight: 600;
        box-shadow: -1px 3px 2px rgba(0, 0, 0, 0.10);
        margin: 15px 0 40px;
        text-transform: uppercase;
    }
    .box-cards{
        background: #fff; padding: 15px;
    }
    .box-cards .right-table h1{
        font-size: 32px;
        color: #2f788a;
        font-weight: 400;
        margin-bottom: 20px;
    }
    .box-cards .right-table h2{
        font-size: 22px;
    }
    .box-cards .right-table .table.normal-table tbody td{
        text-align: left; font-size: 15px; color: #10242b;
        font-weight: 300; padding: 8px 10px; border-top: 0;
    }
    .box-cards .right-table .table.normal-table tbody td:first-child{
        font-weight: 500;
    }
    .box-cards .right-table .table.normal-table tbody td:last-child{
        text-align: right;
    }
    .raaddress{
        padding: 15px;
        background: #f7f7f7;
        width: 100%;
        box-sizing: border-box;
        margin: 30px;
    }
    .raaddress p{ margin-bottom: 6px;}
    .raaddress h4{ font-size: 20px; margin-top: 1.5em;}
</style>
<div class="cart-sec" id="content">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <div class="col-md-12">
                        <div style="background: #fff; padding: 15px;"> 
                            <div class="row">
                                <table class="table table-striped table-inbox print-page mb-0" width="100%" ><tr>
                                        <td width="50%">						
                                            <div class="">
                                                <div class="left-table">
                                                    <img src="<?php echo base_url() ?>assets/invoice_logo.jpg" alt="">
                                                    <div class="raaddress">
                                                    <?php
                                                    if ($getUserDetails['usertype'] == 'Association') {
                                                        ?>
                                                        <p>Naam organisatie : <?= $getUserDetails['v_association'] ?></p>
                                                        <?php
                                                    } else {
                                                        ?>
                                                        <p>City Naam : <?= $getUserDetails['city_name'] ?></p>
                                                        <?php
                                                    }
                                                    ?>
                                                    <p>Postcode : <?= $getUserDetails['post_code'] ?></p>
                                                    <p>Straat + nr : <?= $getUserDetails['street'].', '.$getUserDetails['number'] ?></p>
                                                    <p>Naam Contactpersoon :<?= $getUserDetails['f_name'] ?></p>
                                                    <p>GSM : <?= $getUserDetails['gsm'] ?></p>
                                                    <p>Telefoon : <?= $getUserDetails['phone'] ?></p>
                                                    <p>Email : <?= $getUserDetails['email'] ?></p>
                                                    <h4> Event: </h4><p><?php echo date(('d-m-Y'), strtotime($ord_stng['event_start_date'])) . ' ' . $ord_stng['event_start_time'] . ' tot ' . date(('d-m-Y'), strtotime($ord_stng['event_end_date'])) . ' ' . $ord_stng['event_end_time']; ?></p>
                                                    <p>Leveradres : <?= $ord_stng['postcode'].', '.$ord_stng['street'].', '.$ord_stng['number'] ?></p>
                                                    <p>Naam event  : <?= $ord_stng['event_name'] ?></p>
                                                </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td width="20%">
                                            <table class="normal-table table" style="width:100%;">
                                                <tr>
                                                    &nbsp;
                                                </tr>
                                            </table>

                                        </td>

                                        <td width="30%">
                                            <div class="">
                                                <div class="right-table">

                                                    <h1 style="text-align: right;font-size: 18px;
                                                        color: #2f788a;
                                                        font-weight: 400;
                                                        margin-bottom: 20px;"> FACTUUR</h1>
                                                    <h2 style="text-align: right;font-size: 16px;">Durafest BV</h2>
                                                    <table class="normal-table table" style="width:100%;">
                                                        <tr>
                                                            <td style="line-height: 28px;">ADRES</td>
                                                            <td style="text-align: right;line-height: 28px;">Kwintijnpoort 106 9200 <br>Dendermonde Belgie</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="line-height: 28px;">CONTACT DETAILS</td>
                                                            <td style="text-align: right;line-height: 28px;">koen@durafest.be<br>+32475.83.30.87</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="line-height: 28px;">BTW NUMMER</td>
                                                            <td style="text-align: right;line-height: 28px;">BE 074.832.118</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="line-height: 28px;">BANK IBAN BIC</td>
                                                            <td style="text-align: right;line-height: 28px;">Belfius <br>BE70 0689 0486 4325 GKCCBEBB </td>
                                                        </tr>

                                                    </table>
                                                </div>
                                            </div>
                                        </td></tr></table>
                                <div class="table-responsive"  style="margin-top: 20px;">

                                    <table class="table table-striped table-inbox print-page mb-0" style="width:100%; border: 2px solid #3db8da;">
                                        <thead>
                                             <tr>
                                                 <th style="    border-bottom: 2px solid #3db8da;
                                                    padding: 10px 12px;
                                                    color: #fff;
                                                    background: #3db8da;
                                                    font-weight: 500;">Nummer bestelling</th>
                                                    <th style="    border-bottom: 2px solid #3db8da;
                                                    padding: 10px 12px;
                                                    color: #fff;
                                                    background: #3db8da;
                                                    font-weight: 500;">Besteldatum</th>
                                                    <th style="    border-bottom: 2px solid #3db8da;
                                                    padding: 10px 12px;
                                                    color: #fff;
                                                    background: #3db8da;
                                                    font-weight: 500;">Uw BTW nummer </th>
                                                    <th style="    border-bottom: 2px solid #3db8da;
                                                    padding: 10px 12px;
                                                    color: #fff;
                                                    background: #3db8da;
                                                    font-weight: 500;">Betaaldatum</th>
                                               
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>

                                                <td ><?php echo sprintf("%02d", $ord_stng['id']); ?></td>
                                                <td ><?php echo date(('d/m/Y'), strtotime($ord_stng['created_at'])); ?></td>
                                                <td ><?php echo $getUserDetails['btw_number']; ?></td>
                                                <td ><?php echo date(('d/m/Y'), strtotime($ord_stng['created_at'] . ' +30 days')); ?></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>



                                <div class="table-responsive">
                                    <table class="table table-striped table-inbox print-page mb-0" style="width:100%; border: 2px solid #3db8da;">
                                        <thead>
                                             <tr>
                                                    <th  style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;">Artikel</th>
                                                    <th  style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;" >Huurprijs/box</th>
                                                    <th  style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;" >Wasprijs/box</th>
                                                    <th  style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;" >Verloren prijs/box</th>
                                                    <th  style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;" >Aantal besteld</th>
                                                    <th  style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;" >Gebruikte boxen</th>
                                                    <th  style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;" >Verloren cups</th>
                                                    <th  style="border-bottom: 2px solid #3db8da; padding: 10px 12px; color: #fff; background: #3db8da; font-weight: 500;" >Totaal</th>
                                                </tr>
                                        </thead>
                                       
                                        <tbody>
                                                <?php $s_tot = floatval(0); ?>
                                                <?php
                                                foreach ($ord_items->result() as $row) {
                                                    
                                                    $order_time_max_rental_cost_per_product=(float) str_replace(",",".",$row->order_time_max_rental_cost_per_product);
                                                    $order_time_max_wash_cost_per_product=(float) str_replace(",",".",$row->order_time_max_wash_cost_per_product);
                                                    $order_time_max_lost_cost_per_product=(float) str_replace(",",".",$row->order_time_max_lost_cost_per_product);
                                                    ?>
                                                     <tr>
                                                        <td style="line-height: 30px;text-align: right;"><?php echo $row->name; ?></td>
                                                        <td style="line-height: 30px;text-align: right;"> &#8364; <?php echo number_format($order_time_max_rental_cost_per_product, 2, ',', ''); ?></td>
                                                        <td style="line-height: 30px;text-align: right;">&#8364; <?php echo number_format($order_time_max_wash_cost_per_product, 2, ',', ''); ?></td>
                                                        <td style="line-height: 30px;text-align: right;">&#8364; <?php echo number_format($order_time_max_lost_cost_per_product, 2, ',', ''); ?> </td>
                                                        <td style="line-height: 30px;text-align: right;"><?php echo $row->order_qty; ?> </td>
                                                        <td style="line-height: 30px;text-align: right;"><?php echo $row->used_cups; ?> </td>
                                                        <td style="line-height: 30px;text-align: right;"><?php echo $row->lost_cup; ?> </td> 
                                                        <td style="line-height: 30px;text-align: right;">&#8364; <?php
                                                            echo  number_format(floatval(($order_time_max_rental_cost_per_product * $row->order_qty) + ($row->used_cups * $order_time_max_wash_cost_per_product ) + ($row->lost_cup * $order_time_max_lost_cost_per_product )), 2, ',', '');
                                                            $s_tot += floatval(($order_time_max_rental_cost_per_product * $row->order_qty) + ($row->used_cups * $order_time_max_wash_cost_per_product ) + ($row->lost_cup * $order_time_max_lost_cost_per_product ));
                                                            ?> </td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                    </table>
                                </div>

                                <div class="right-table row">
                                    <div class="col-md-12 ">

                                        <table class="normal-table table mb-2" style="    width: 100%;">
                                            <?php
                                            if ($ord_stng['collection_by_profiwash_at_the_event'] != '') {
                                               
                                           ?>
                                            <tr>
                                                <td style="line-height: 30px;"><strong>Levering op evenement</strong></td>
                                                <td style="text-align: right;line-height: 30px;">&#8364; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_the_event'], 2, ',', '') ?></td> </tr>
                                            <?php
                                            $s_tot += floatval($ord_stng['collection_by_profiwash_at_the_event']);
                                            }

                                            if ($ord_stng['return_to_address'] != '') { ?>
                                            <tr>
                                                <td style="line-height: 30px;"><strong>Levering via afhaalpunt</strong></td>
                                                <td style="text-align: right;line-height: 30px;">&#8364; <?php echo number_format((float) $ord_stng['return_to_address'], 2, ',', '') ?></td></tr>
                                           <?php $s_tot += floatval($ord_stng['return_to_address']);
                                            }

                                            if ($ord_stng['collection_by_profiwash_at_collection_point'] != '') { ?>
                                            <tr>
                                                <td style="line-height: 30px;"><strong>Afhalen bij Durafest</strong></td>
                                                <td style="text-align: right;line-height: 30px;">&#8364; <?php echo number_format((float) $ord_stng['collection_by_profiwash_at_collection_point'], 2, ',', '') ?></td></tr>
                                          <?php  $s_tot += floatval($ord_stng['collection_by_profiwash_at_collection_point']);
                                            }


                                            if ($ord_stng['return_via_collection_point'] != '') { ?>
                                            <tr>
                                                <td style="line-height: 30px;"><strong>Ophalen op evenement</strong></td>
                                                <td style="text-align: right;line-height: 30px;">&#8364; <?php echo number_format((float) $ord_stng['return_via_collection_point'], 2, ',', '') ?></td></tr>
                                       <?php     $s_tot += floatval($ord_stng['return_via_collection_point']);
                                            }


                                            if ($ord_stng['delivery_to_profiwash'] != '') { ?>
                                            <tr>
                                                <td style="line-height: 30px;"><strong>Terugbrengen naar afhaalpunt</strong></td>
                                                <td style="text-align: right;line-height: 30px;">&#8364; <?php echo number_format((float) $ord_stng['delivery_to_profiwash'], 2, ',', '') ?></td></tr>
                                         <?php   $s_tot += floatval($ord_stng['delivery_to_profiwash']);
                                            }



                                            if ($ord_stng['pick_up_at_profiwash'] != '') { ?>
                                            <tr>
                                                <td style="line-height: 30px;"><strong>Terugbrengen naar Durafest</strong></td>
                                                <td style="text-align: right;line-height: 30px;">&#8364; <?php echo number_format((float) $ord_stng['pick_up_at_profiwash'], 2, ',', '') ?></td></tr>
                                         <?php   $s_tot += floatval($ord_stng['pick_up_at_profiwash']);
                                            }
?>


                                            <tr>
                                                <td style="line-height: 30px;">Subtotaal</td>
                                                <td style="text-align: right;line-height: 30px;">&#8364; <?php echo number_format((float) $s_tot, 2, ',', '') ?></td>
                                            </tr>
                                            <tr>
                                                <td style="line-height: 30px;">BTW 21%</td>
                                                <td style="text-align: right;line-height: 30px;">&#8364;  <?php echo number_format(floatval((21 / 100) * $s_tot), 2, ',', '') ?></td>
                                            </tr>
                                            <tr>
                                                <td style="line-height: 30px;">Totaal</td> 
                                                <td style="text-align: right;line-height: 30px;">&#8364;  <?php echo $tot=number_format(floatval($s_tot + ((21 / 100) * $s_tot)), 2, ',', '') ?></td>
                                            </tr>
                                            <tr>
                                                <td style="line-height: 30px;">Reeds betaald</td> 
                                                <td style="text-align: right;line-height: 30px;">&#8364;  <?php echo $Reeds=floatval((60/100)*($tot)); ?></td>
                                            </tr>
                                            <tr>
                                                <td style="line-height: 30px;">Nog te betalen</td> 
                                                <td style="text-align: right;line-height: 30px;">&#8364;  <?php echo floatval($tot-$Reeds); ?></td>
                                            </tr>

                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
