<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
         <!--<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>assets/front_v2/css/dataTables.bootstrap4.min.css">-->
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v2'); ?>  
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
                                    <table id="inbox_table" class="table table-striped table-inbox">
                                        <thead>
                                            <tr>
                                                <th>Vereniging</th>
                                                <th>Datum</th>
                                                <th>Locatie</th>
                                                <th>Huidige status</th>
                                                <th>Goedkeuren</th>
                                                <th>Weigeren</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($query->result() as $row) { ?>
                                                                        <!--<pre><?php print_r($row); ?></pre>-->
                                                <tr>
                                                    <td data-title="Vereniging"><?php echo $row->association; ?></td>
                                                    <td data-title="Datum"><?php echo date(('d/m/Y'), strtotime($row->created_at)); ?></td>
                                                    <td data-title="Locatie" class="numeric"><?php echo $row->post_code; ?></td>
                                                    <td data-title="curr_status_<?php echo $row->v_id; ?>" id="curr_status_<?php echo $row->v_id; ?>" class="numeric"><?php echo $row->v_status == 'Y' ? 'Approved' : 'Waiting To Approve'; ?></td>
                                                    <td>
                                                        <a href="javascript:void(0)" onclick="Status(<?php echo $row->v_id; ?>, 'Y')" class="tick">
                                                            <i class="fa fa-check-circle-o" aria-hidden="true"></i>
                                                        </a>
                                                    </td>
                                                    <td><a href="javascript:void(0)" onclick="Status(<?php echo $row->v_id; ?>, 'N')" class="close">
                                                            <i class="fa fa-times-circle-o" aria-hidden="true"></i>
                                                        </a></td>
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
 <!--<script type="text/javascript" src="<?php echo base_url(); ?>assets/front_v2/dataTables.bootstrap4.min.js"></script>-->

        <script>
//            $('#inbox_table').DataTable({searching: false, paging: false, info: false});
            </script>
    <script>
                                                    function Status(id, val, to_u_id) {
                                                        $.post('<?php echo base_url(); ?>frontend/user/change_association_status', 'id=' + id + '&val=' + val, function (data) {
                                                            if (data == 'ok') {
                                                                if (val == 'Y') {
                                                                    $('#curr_status_' + id).html('Approved');
                                                                } else {
                                                                    $('#curr_status_' + id).html('Waiting to Approve');
                                                                }
                                                            }
                                                        });
                                                    }
//                                                    $(document).ready(function () {
//                                                        $('#inbox_table').DataTable({
//                                                            "bPaginate": true,
//                                                            "bLengthChange": false,
//                                                            "bFilter": true,
//                                                            "bInfo": false,
//                                                            "bAutoWidth": false
//                                                        });
//                                                    });
    </script>
</html>