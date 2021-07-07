<!DOCTYPE html>
<html lang="en">
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <?php $this->load->view('common/header_include'); ?>
    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-md">
        <div class="page-wrapper">
            <?php $this->load->view('common/header'); ?>
            <div class="clearfix"> </div>
            <div class="page-container">
                <?php $this->load->view('common/sidebar'); ?> 
                <div class="page-content-wrapper">
                    <div class="page-content">
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li> <a href="">Dashboard</a> <i class="fa fa-circle"></i> </li>
                            </ul>
                        </div><br>
                        <div class="row">
                            <div class="col-md-12">
<!--                                <div class="pull-right "> <a href="<?php echo base_url(); ?>admin/product_management/add_product" class="btn btn-success">Add Product </a> <br></div>-->
                            </div>
                            <div class="col-md-12">
                                <div id="msg_div">
                                    <?php if ($this->session->flashdata('success') != '') { ?>
                                        <?php echo $this->session->flashdata('success'); ?>
                                    <?php } ?>
                                </div>
                                <div class="portlet box green">
                                    <div class="portlet-title">
                                        <div class="caption"> <i class="fa fa-globe"></i>Wash Order list (
                                            <?php echo $query->num_rows(); ?>)</div>
                                        <div class="tools"> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <table class="table table-striped table-bordered table-hover" id="sample_2">
                                            <thead>
                                                <tr>
                                                    <th>SI No.</th>
                                                    <th>Event Date</th>
                                                    <th>Postcode</th>
                                                    <th>Street</th>
                                                    <th>Number</th>
													<th>Factuur</th>
                                                    <th>Status</th>
                                                    <!--<th> Action </th>-->
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                if ($query->num_rows() > 0) {
                                                    $i = 1;
                                                    foreach ($query->result() as $row) {
                                                        ?>
                                                        <tr>
                                                            <td>
                                                                <?php echo $i; ?>
                                                            </td> 
                                                            <td>
                                                                <?php echo date(('d M,Y'), strtotime($row->event_date)); ?>
                                                            </td>
                                                            <td>
                                                                <?php echo $row->postcode; ?>
                                                            </td>
                                                            <td>
                                                                <?php echo $row->street; ?>
                                                            </td>
                                                            <td>
                                                                <?php echo $row->number; ?>
                                                            </td>
															<td>
															 <a title="Edit" href="<?php echo base_url(); ?>admin/order_management/washinvoice/<?php echo $row->id; ?>" class="btn-sm btn-success rounded-corner btn-share">Invoice</a> 
                                                           </td>
                                                            <td>
                                                                <?php if ($row->order_status == 'Y') { ?>
                                                                    <div id="statusDiv<?php echo $row->id; ?>"> <button type="button" href='javascript: void(0);' class="btn btn-success btn-xs" title="Active" onclick="Status(<?php echo $row->id; ?>, 'N',<?php echo $row->user_id; ?>)"> <i class="fa fa-check"></i></button></div>
                                                                <?php } else { ?>
                                                                    <div id="statusDiv<?php echo $row->id; ?>"> <button type="button" href='javascript: void(0);' class="btn btn-danger btn-xs" title="Inactive" onclick="Status(<?php echo $row->id; ?>, 'Y',<?php echo $row->user_id; ?>)"> <i class="fa fa-remove"></i></button></div>
                                                                <?php } ?>
                                                            </td>
                                                            
                                                             <!-- <td> 
<!--                                                                <a title="Edit" href="<?php echo base_url(); ?>admin/order_management/edit_event/<?php echo $row->id; ?>" class="btn-sm btn-success rounded-corner btn-share">Edit</a>
                                                                <a title="Delete" onClick="return confirm('Would you like to delete this ?');" href="<?php echo base_url(); ?>admin/order_management/delete_order/<?php echo $row->id; ?>" class="btn-sm btn-danger rounded-corner btn-share">Delete</a> 
                                                            </td> -->
                                                        </tr>
                                                        <?php
                                                        $i++;
                                                    }
                                                } else {
                                                    ?>
                                                    <tr>
                                                        <td colspan="9" class="dataTables_empty">No record found.</td>
                                                    </tr>
                                                <?php } ?>
                                            </tbody>
                                        </table>
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
        <?php // $this->load->view('common/quick_nav');   ?>
        <?php $this->load->view('common/js_include'); ?>
        <script>
            function Status(id, val,to_u_id ) {
                $.post('<?php echo base_url(); ?>admin/order_management/change_event_status', 'id=' + id + '&val=' + val+ '&to_u_id=' + to_u_id , function (data) {
                    $('#statusDiv' + id).html('<i class="fa fa-spinner"></i>');
                    if (val == 'Y') {
                        var val2 = "'N'";
                        var text = '<button type="button" href="javascript: void(0);" class="btn btn-success btn-xs" data-toggle="tooltip" data-placement="top" title="Active" onclick="Status(' + id + ',' + val2 + ');"><i class="fa fa-check"></i></button></div>';
                        $('#statusDiv' + id).html(text);
                        $("#msgDiv").show("");
                    } else {
                        var val2 = "'Y'";
                        var text = '<button type="button" href="javascript: void(0);" class="btn btn-danger btn-xs" data-toggle="tooltip" data-placement="top" title="Deactive" onclick="Status(' + id + ',' + val2 + ');"><i class="fa fa-remove"></i></button></div>';
                        $('#statusDiv' + id).html(text);
                    }
                });
            }
        </script>
    </body>
</html>