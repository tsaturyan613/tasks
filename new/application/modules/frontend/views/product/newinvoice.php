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
        <?php $this->load->view('common/header_nav_v6'); ?> 
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
                            Factuur
                        </h2>
                        <?php $getUserDetails=getUserDetailsById($ord_stng['user_id']); ?>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="box-cards"> 
                                    <div class="row">					
                                        <div class="col-md-8">
                                            <div class="left-table">
                                                <img src="<?php echo base_url(); ?>assets/invoice_logo.jpg" alt="">
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
                                                    <!--<p>Naam organisation :<?= $getUserDetails['v_association'] ?></p>-->
                                                    <p>GSM : <?= $getUserDetails['gsm'] ?></p>
                                                    <p>Telefoon : <?= $getUserDetails['phone'] ?></p>
                                                    <p>Email : <?= $getUserDetails['email'] ?></p>
                                                    <!--<h4>Bestelling: <?php echo sprintf("%02d", $ord_stng['id']); ?></h4>-->
                                                    <h4> Event: </h4><p><?php echo date(('d-m-Y'), strtotime($ord_stng['event_start_date'])) . ' ' . $ord_stng['event_start_time'] . ' tot ' . date(('d-m-Y'), strtotime($ord_stng['event_end_date'])) . ' ' . $ord_stng['event_end_time']; ?></p>
                                                    <!--<p>Straat + nr: <?php echo $ord_stng['street']; ?></p>-->
                                                    <p>Leveradres : <?= $ord_stng['postcode'].', '.$ord_stng['street'].', '.$ord_stng['number'] ?></p>
                                                    <p>Naam event  : <?= $ord_stng['event_name'] ?></p>
                                                </div>
                                                
                                                
                                               
                                            </div>
                                        </div>
                                        <div class="col-md-4">
                                            <div class="right-table">
                                                <h1 class="text-right">FACTUUR</h1>
                                                <h2 class="text-right">Durafest BV</h2>
                                                <table class="normal-table table mb-2">
                                                    <tr>
                                                        <td>ADRES</td>
                                                        <td>Kwintijnpoort 106<br>9200 Dendermonde België</td>
                                                    </tr>
                                                    <tr>
                                                        <td>CONTACT DETAILS</td>
                                                        <td>service@durafest.be<br>+32 472 985 637</td>
                                                    </tr>
                                                    <tr>
                                                        <td>BTW NUMMER</td>
                                                        <td>BTW BE0744.832.118</td>
                                                    </tr>
                                                    <tr>
                                                        <td>BANK </td>
                                                        <td>BE51 0689 3710 1162 </td>
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
                                                    <!--<td><?=date('Y')?>/17<?php  echo  sprintf("%02d",$ord_stng['id']); ?></td>-->
                                                    <td>Bestelling: <?php  echo  sprintf("%02d",$ord_stng['id']); ?></td>
                                                    <td><?php echo date(('d/m/Y'), strtotime($ord_stng['created_at'])); ?></td>
                                                    <!--<td>BE 0842.388.283</td>-->
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
                                                    <th >Huurprijs/box</th>
                                                    <th >Wasprijs/box</th>
                                                    <th >Verloren prijs/box</th>
                                                    <th >Aantal besteld</th>
                                                    <th >Gebruikte boxen</th>
                                                    <th >Verloren cups</th>
                                                    <th >Totaal</th>
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
                                                        <td><?php echo $row->name; ?></td>
                                                        <td> &#8364; <?php echo number_format($order_time_max_rental_cost_per_product, 2, ',', ''); ?></td>
                                                        <td>&#8364; <?php echo number_format($order_time_max_wash_cost_per_product, 2, ',', ''); ?></td>
                                                        <td>&#8364; <?php echo number_format($order_time_max_lost_cost_per_product, 2, ',', ''); ?> </td>
                                                        <td><?php echo $row->order_qty; ?> </td>
                                                        <td><?php echo $row->used_cups; ?> </td>
                                                        <td><?php echo $row->lost_cup; ?> </td> 
                                                        <td>&#8364; <?php
                                                            echo  number_format(floatval(($order_time_max_rental_cost_per_product * $row->order_qty) + ($row->used_cups * $order_time_max_wash_cost_per_product ) + ($row->lost_cup * $order_time_max_lost_cost_per_product )), 2, ',', '');
                                                            $s_tot += floatval(($order_time_max_rental_cost_per_product * $row->order_qty) + ($row->used_cups * $order_time_max_wash_cost_per_product ) + ($row->lost_cup * $order_time_max_lost_cost_per_product ));
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
                                                <tr>
                                                    <td>Subtotaal</td>
                                                    <td>&#8364; <?php echo number_format((float) $s_tot, 2, ',', ''); ?></td>
                                                </tr>
                                                <tr>
                                                    <td>BTW 21%</td>
                                                    <td>&#8364; <?php echo number_format(floatval((21 / 100) * $s_tot), 2, ',', ''); ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Totaal</td> 
                                                    <td>&#8364; <?php echo number_format(floatval($s_tot + ((21 / 100) * $s_tot)), 2, ',', ''); ?></td>
                                                </tr>
                                                <tr>
                                                    <td>Reeds betaald</td> 
                                                    <td>&#8364; <?php
                                                    $percentage = 60;
                                                    $tot=number_format(floatval($ord_stng['total']),2,',','');
                                                    $new_tot = ($percentage / 100) * $tot;
                                                    $new_tot1=number_format(floatval($new_tot),2,',','');
                                                    $new_paid=$tot-$new_tot1;
                                                    $new_paid1=number_format(floatval($new_paid),2,',','');
                                                    echo $new_paid1;
                                                    ?>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>Nog te betalen</td> 
                                                    <td>&#8364; <?php $to_bepaid=$tot-$new_paid1;
                                                    echo number_format(floatval($to_bepaid),2,',','');
                                                     ?>
                                                    </td>
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
                                <a href="<?php echo base_url(); ?>newinvoice_download/<?=$ord_stng['id']?>" class="bttn-green prnt" >Print</a> 
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