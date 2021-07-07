<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2');  ?>  
        <link rel="stylesheet" type="text/css" href="<?php // echo base_url(); ?>assets/front/css/dataTables.bootstrap4.min.css">
         <!--<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">-->
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
                            Inbox
                        </h2>
                        <h3 class="comman-title">
                            Aanvragen
                        </h3>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table id="inbox_table" class="table table-striped table-inbox user">
                                        <thead>
                                            <tr>
                                                <th>From</th>
                                                <th>Datum</th>
                                                <th>Message</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($query->result() as $row) { ?>
                                                <tr>
                                                    <td><?= $row->created_by ?></td>
                                                    <td> <?php echo date(('d M,Y'), strtotime($row->created_at)); ?></td>
                                                    <td><?= $row->message ?></td>
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
    
<!--    <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>
 <script type="text/javascript" src="https://cdn.datatables.net/1.10.21/js/dataTables.bootstrap4.min.js"></script>-->
    <!--<script src='<?php echo base_url(); ?>assets/front_v2/js/jquery.dataTables.min.js'></script>-->
    <!--<script src='<?php echo base_url(); ?>assets/front_v2/js/dataTables.bootstrap4.min.js'></script>-->
 <script>
//            $('#inbox_table').DataTable({searching: false, paging: false, info: false});
            </script>
    <script>
//        $(document).ready(function () {
//            $('#inbox_table').DataTable({
//                "bPaginate": true,
//                "bLengthChange": false,
//                "bFilter": true,
//                "bInfo": false,
//                "bAutoWidth": false
//            });
//        });
    </script>
</html>