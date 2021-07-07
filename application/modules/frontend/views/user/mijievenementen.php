<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
         <!--<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/front_v2/css/dataTables.bootstrap4.min.css">-->
        <style>
            input[type="search"]{
                border: 1px solid #ccc;
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v6'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->






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


        <div class="cart-sec">

            <div class="container">

                <div class="row">

                    <div class="col-md-12">

                        <h2 class="comman-title text-center">
                            Mijn Tekst
                        </h2>

                        <div class="row">
                            <div class="col-md-12">

                                <div class="table-responsive">
                                    <table id="table_id" class="table table-striped table-inbox big-table mb-0">
                                        <thead>
                                            <tr>
                                                <th>Status</th>
                                                <th>Datum</th>
                                                <th>Naam evenement</th>
                                                <th># Verwachte <br/> bezoekers</th>
                                                <th># Bekers per <br/> bezoekers</th>
                                                <th>Factuur</th>
                                                <th>Orderbevestiging</th>
                                            </tr>
                                        </thead>
                                        <tbody>


                                            <?php
                                            if($ord_items->num_rows()>0){
                                            foreach ($ord_items->result() as $row) {
                                                $cost = floatval(0);
                                                ?>


                                                <tr>
                                                    <td><?php if ($row->order_status == 'N') { ?>Wachten op goedkeuring <?php } else { ?> <i class="fa fa-check"></i> <?php } ?></td>
                                                   <!--  <td><?php echo date(('d/m/Y'), strtotime($row->event_date)); ?></td> -->
                                                    <td><?php echo date(('d/m/Y'), strtotime($row->event_start_date))." ".$row->event_start_time;?> - <?php echo date(('d/m/Y'), strtotime($row->event_end_date))." ".$row->event_end_time;?></td>
                                                    <td><?php echo $row->event_name ?></td>
                                                    <td><?php echo $row->number_of_visitor ?></td>
                                                    <td>
                                                        <?php echo $row->cups_per_visitor ?>
                                                    </td>
                                                    <td><?php if ($row->invoice_created_by_admin == '1') { ?>
                                                            <a class="common-links"  href="<?php echo base_url(); ?>user/newinvoice/<?php echo $row->id ?>">Factuur</a>
                                                        <?php } ?></td>
                                                    <td><a class="common-links" href="<?php echo base_url(); ?>user/invoice/<?php echo $row->id ?>">Orderbevestiging </a></td>
                                                </tr>
                                            <?php } 
                                            } else{ ?>
                                                 <tr>
                                                     <td colspan="7">No Event Found</td>
                                                    
                                                </tr>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                </div>
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
    
    <!--<script type="text/javascript" src="<?php echo base_url(); ?>assets/front_v2/js/jquery.dataTables.min.js"></script>-->
 <!--<script type="text/javascript" src="<?php echo base_url(); ?>assets/front_v2/js/dataTables.bootstrap4.min.js"></script>-->
    <script>

        $(document).ready(function () {
//            $('#table_id').DataTable({searching: false, paging: false, info: false});
        });
        $('.dropdown-menu li').on('click', function () {
            var getValue = $(this).text();
            $('.dropdown-select').text(getValue);
        });
//
        $(document).ready(function () {
            var table = $('#example').DataTable({
                rowReorder: {
                    selector: 'tr'
                },
                responsive: true,
                "paging": false,
                "info": false,
                "searching": true
            });
        });



    </script>
</html>
