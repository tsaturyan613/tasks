<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>   
        
        <style>
            @media print {
                .user_heaser,.header,.header img,.prnt,#header_holder, #footer_holder , #innerbanner { display: none !important; }
                 .menu_print { display: none; }
            }
            .box-cards{
                background: #fff; padding: 15px;border: 2px solid #3db8da;
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
                width: 50%;
                box-sizing: border-box;
                margin: 30px;
            }
            .raaddress p{ margin-bottom: 6px;}
            .raaddress h4{ font-size: 20px; margin-top: 1.5em;}
        </style>
    </head>
    <body>
    <div class="menu_print">
        <?php $this->load->view('common/header_nav_v2'); ?>  
        </div>
        <!--+++++++++++++ Header End +++++++++++++++++++--> 
        <section id="innerbanner">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="text_inner">
                            <h1>Voor Verenigingen</h1>
                            <p>Durafest specializes in tailormade cup solutions for events,
                                sport venues, community festivals and concerts.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        
        
        <div class="cart-sec">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2 class="comman-title text-center">
                            ORDERBEVESTIGING
                        </h2>
                        <?php $getUserDetails=getUserDetailsById($_SESSION['USER_ID']);?>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="box-cards"> 
                                    <div class="row">					
                                        <div class="col-md-8"> 
                                            <div class="left-table">
                                                <img src="<?php echo base_url(); ?>assets/invoice_logo.jpg" alt="">
                                                <div class="raaddress">
                                                    <p>City Naam : <?=$getUserDetails['city_name']?></p>
                                                    <p>Post Code : <?=$getUserDetails['usertupe']=='City'?$getUserDetails['post_code']:$ord_stng['postcode']?></p>
                                                    <p>Street : <?=$getUserDetails['usertupe']=='City'?$getUserDetails['street']:$ord_stng['street'].','.$getUserDetails['number']?></p>
                                                    <p>Email : <?=$getUserDetails['email']?></p>
                                                    <!--<h4>Bestelling: <?php  echo  sprintf("%02d",$ord_stng['id']); ?></h4>-->
                                                    
                                                    <h4> Event: </h4><p><?php  echo  date(('d-m-Y'), strtotime($ord_stng['event_start_date'])).' '. $ord_stng['event_start_time'].' tot '.date(('d-m-Y'), strtotime($ord_stng['event_end_date'])).' '. $ord_stng['event_end_time']; ?></p>
                                                    <p>Leveradres : <?= $ord_stng['postcode'].', '.$ord_stng['street'].', '.$ord_stng['number'] ?></p>
                                                    <p>Naam event  : <?= $ord_stng['event_name'] ?></p>
                                                </div>
                                                
                                                 <!--<div class="raaddress">
                                                    
                                                    <p>Naam evenement: <?php echo $ord_stng['event_name']; ?></p>
                                                    <p>Aantal personen: <?php echo $ord_stng['number_of_visitor']; ?></p>
                                                    <p># Bekers / bezoeker: <?php echo $ord_stng['cups_per_visitor']; ?></p>
                                                    <p>Aantal bars: <?php echo $ord_stng['number_of_bar']; ?></p>
                                                    <p>Postcode: <?php echo $ord_stng['postcode']; ?></p>
                                                    <p>Straat + nr: <?php echo $ord_stng['street']; ?></p>
                                                    <p>Nummer: <?php echo $ord_stng['number']; ?></p>
                                                    <p>Startdatum (Startuur): <?php echo $ord_stng['event_start_date']; ?> (<?php echo $ord_stng['event_start_time']; ?>)</p>
                                                    <p>Einddatum (Einduur): <?php echo $ord_stng['event_end_date']; ?> (<?php echo $ord_stng['event_end_time']; ?>)</p>
                                                    
                                                </div>-->
                                                
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="right-table">
                                                <h1 class="text-right" style="font-size: 24px;">ORDERBEVESTIGING</h1>
                                                <h2 class="text-right">Durafest BV</h2>
                                                <table class="normal-table table mb-2">
                                                    <tr>
                                                        <td>ADRES</td>
                                                        <td>Kwintijnpoort 106 9200 Dendermonde Belgie</td>
                                                    </tr>
                                                    <tr>
                                                        <td>CONTACT DETAILS</td>
                                                        <td>koen@durafest.be<br>+32475.83.30.87</td>
                                                    </tr>
                                                    <tr>
                                                        <td>BTW NUMMER</td>
                                                        <td>BE 074.832.118</td>
                                                    </tr>
                                                    <tr>
                                                        <td>BANK IBAN BIC</td>
                                                        <td>Belfius <br>BE70 0689 0486 4325 GKCCBEBB </td>
                                                    </tr>
                                                    
                                                </table>
                                            </div>
                                        </div>
                                    </div>	
                                    <div class="table-responsive">
                                        <table class="table table-striped table-inbox print-page mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Nummer bestelling</th>
                                                    <th>Besteldatum</th>
                                                    <th>Uw BTW nummer </th>
                                                    <th>Betaaldatum</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <!--<td></td>-->
                                                    <td><?=date('Y')?>/17<?php  echo  sprintf("%02d",$ord_stng['id']); ?></td>
                                                   <!-- <td>Bestelling: <?php  echo  sprintf("%02d",$ord_stng['id']); ?></td>-->
                                                    <td><?php echo date(('d/m/Y'), strtotime($ord_stng['created_at'])); ?></td>
                                                    <td><?=$getUserDetails['btw_number']?></td>
                                                    <td><?php echo date(('d/m/Y'), strtotime($ord_stng['created_at']. ' +30 days')); ?></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                    <div class="table-responsive">
                                        <table class="table table-striped table-inbox print-page mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Artikel</th>
                                                    <th>Omschrijving</th>
                                                    <th >Aantal</th>
                                                    <th >Huurprijs/box</th>
                                                    <th >Wasprijs/box</th>
                                                    <th >Bedrag</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php $s_tot = floatval(0); ?>
                                                <?php
                                                foreach ($ord_items->result() as $row) {
                                                    ?>
                                                    <tr>
                                                        <td><?php echo $row->name; ?></td>
                                                        <td><?php echo $row->sort_desc; ?></td>
                                                        <td ><?php echo $row->order_qty; ?></td>
                                                        <td >&#8364; <?php echo number_format((float)$row->order_time_max_rental_cost_per_product, 2, ',', ''); ?> </td>
                                                        <td >&#8364; <?php echo number_format((float)$row->order_time_max_wash_cost_per_product, 2, ',', ''); ?> </td>
                                                        <td >&#8364; <?php
                                                            echo number_format(floatval(($row->order_time_max_rental_cost_per_product + $row->order_time_max_wash_cost_per_product) * $row->order_qty), 2, ',', '');
                                                            $s_tot += floatval(($row->order_time_max_rental_cost_per_product + $row->order_time_max_wash_cost_per_product) * $row->order_qty);
                                                            ?> </td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="right-table row">
                                        <div class="col-md-6 offset-md-6">
                                           
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
                                                <tr><td>&nbsp;</td></tr>
                                                <tr>
                                                    <td>Subtotaal</td>
                                                    <td>&#8364; <?php echo number_format((float) $s_tot, 2, ',', ''); ?></td>
                                                </tr>
                                                <tr>
                                                    <td>BTW 21%</td>
                                                    <td>&#8364; <?php echo number_format(floatval((21 / 100) * $s_tot), 2, ',', ''); ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Total</td> 
                                                    <td>&#8364; <?php echo number_format(floatval($s_tot + ((21 / 100) * $s_tot)), 2, ',', ''); ?></td>
                                                </tr>
                                                <tr><td colspan="2">60% van de factuur is te betalen voor levering;saldo na reiniging</td></tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-center">
                                <!--<a href="javascript:void(0)" class="bttn-green prnt" onclick="window.print()">Print</a>-->
                                <a href="<?php echo base_url(); ?>cityinvoice_download/<?=$ord_stng['id']?>" class="bttn-green prnt" >Print</a> 
                            </div>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
        
        
        <!--+++++++++++++ footer Start +++++++++++++++++++-->
        <?php $this->load->view('common/footer_v2'); ?>  
    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
    
</html>