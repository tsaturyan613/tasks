<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <?php $this->load->view('common/header_include'); ?>
    <link rel="stylesheet" href="<?php echo base_url(); ?>assets/admin/global/css/jquery.datetimepicker.min.css">
   

    <style>
        @media print {
            .user_heaser,.header,.header img,.prnt,#header_holder, #footer_holder , #innerbanner { display: none !important; }
        }
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
    font-family: 'Poppins', sans-serif;
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
            width: 100%;
            box-sizing: border-box;
            margin: 30px;
        }
        .raaddress p{ margin-bottom: 6px;}
        .raaddress h4{ font-size: 20px; margin-top: 1.5em;}
        @media (min-width: 992px){
            .col-md-6 {
            width: 50%;
            margin-left: 50%;
        }
        }
        
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



                                <div class="cart-sec" id="content">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <h2 class="comman-title text-center">
                                                    Factuur
                                                </h2>
                        <?php
                        
                        $getUserDetails=getUserDetailsById($ord_stng['id']);
//                        echo $getUserDetails;
                        ?>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div style="background: #fff; padding: 15px;border: 2px solid #3db8da;"> 
                                    <div class="row">
									<table class="table table-striped table-inbox print-page mb-0" width="100%" ><tr><td width="50%">						
                                        <div class="col-md-8">
                                            <div class="left-table">
                                                <img src="<?php echo base_url(); ?>assets/invoice_logo.jpg" alt="">
                                                <div style="padding: 15px;
            background: #f7f7f7;
            width: 100%;
            box-sizing: border-box;
            margin: 30px;">
                                                    <p style="margin-bottom: 6px;">City Name : <?=$getUserDetails['city_name']?></p>
                                                    <p style="margin-bottom: 6px;">Post Code : <?=$getUserDetails['post_code']?></p>
                                                    <p style="margin-bottom: 6px;">Street : <?=$getUserDetails['street']?></p>
                                                    <p style="margin-bottom: 6px;">Email : <?=$getUserDetails['email']?></p>
                                                    <h4 style="font-size: 20px; margin-top: 1.5em;">Bestelling: <?php  echo  sprintf("%02d",$ord_stng['id']); ?></h4>
                                                </div>
                                            </div>
                                        </div>
										</td><td width="50%">
                                        <div class="col-md-8">
                                            <div class="right-table">
                                                <h1  class="text-right">INVOICE / FACTUUR</h1>
                                                <h2 class="text-right">Durafest BV</h2>
                                                <table class="normal-table table mb-2">
                                                    <tr>
                                                        <td>ADDRESS</td>
                                                        <td>Kwintijnpoort 106 9200 Dendermonde Belgie</td>
                                                    </tr>
                                                    <tr>
                                                        <td>CONTACT DETAILS</td>
                                                        <td>koen@durafest.be<br>+32475.83.30.87</td>
                                                    </tr>
                                                    <tr>
                                                        <td>BTW NUMBER</td>
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
									  </td></tr></table>
                                    <div class="table-responsive">
                                        <table class="table table-striped table-inbox print-page mb-0">
                                            <thead>
                                                <tr>
                                                    <th>Invoice Number</th>
                                                    <th>Invoice Date</th>
                                                    <th>VAT Number Client </th>
                                                    <th>Payment Date</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td><?=date('Y')?>/17<?php  echo  sprintf("%02d",$ord_stng['id']); ?></td>
                                                    <td><?php echo date(('d/m/Y'), strtotime($ord_stng['created_at'])); ?></td>
                                                    <td></td>
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
                                                    <th>Aantal</th>
                                                    <th>wasprijs</th>
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
                                                        <td >&#8364; <?php echo number_format((float) $row->wash_prc, 2, ',', ''); ?></td>
                                                        <td >&#8364; <?php echo number_format(floatval($row->wash_prc * $row->order_qty), 2, ',', ''); 
                                                        $s_tot += floatval($row->wash_prc * $row->order_qty);
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

 <div class="clearfix"></div>
                                                                   <div class="row">
                                                                            <div class="col-md-12 text-center">
                                                                            <a href="<?php echo base_url(); ?>admin/order_management/downloadwashinvoice_v2/<?=$ord_stng['id']?>" class="bttn-green prnt" >Download</a>
                                                                                <!--<a href="javascript:void(0)" class="bttn-green prnt" onclick="window.print()">Download</a>-->
                                                                            </div>
                                                                        </div>

                            </div>
                        </div>
                        <div class="clearfix"></div>
                         <div class="clearfix"></div>
                    </div>
                </div>
            </div>
            <?php $this->load->view('common/footer'); ?>
        </div>
        <?php // $this->load->view('common/quick_nav');     ?>
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
        </script>
       
    </body>

</html>