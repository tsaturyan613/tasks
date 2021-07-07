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
                            <li> <span>Steden end Gemeenten </span> </li>
                        </ul>
                    </div><br>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="pull-right "> <a href="<?php echo base_url(); ?>admin/gemeenten_management/add_gemeenten" class="btn btn-success">Voeg stad be </a> <br></div>
                        </div>
                        <div class="col-md-12">
                            <div id="msg_div">
                                <?php if ($this->session->flashdata('success') !=''){?>
                                <?php echo $this->session->flashdata('success'); ?>
                                <?php }?>
                            </div>
                            <div class="portlet box green">
                                <div class="portlet-title">
                                    <div class="caption"> <i class="fa fa-globe"></i>Steden en gemeenten (
                                        <?php echo $query->num_rows(); ?>)</div>
                                    <div class="tools"> </div>
                                </div>
                                <div class="portlet-body">
                                    <table class="table table-striped table-bordered table-hover" id="sample_2">
                                        <thead>
                                            <tr>
                                                <th>SI No.</th>
                                                <th> Postcode</th>
                                                <th> Stad </th>
                                                <th> Login Email</th>
<!--                                                <th> Straat </th>
                                                <th> Nummer </th>-->
                                                <th>Status</th>
                                                <th>Created</th>
                                                <th> Action </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php if ($query->num_rows() > 0){$i=1; foreach ($query->result() as $row){?>
                                            <tr>
                                                <td>
                                                    <?php echo $i; ?>
                                                </td>
                                                <td>
                                                    <?php echo $row->post_code; ?>
                                                </td>
                                                <td>
                                                    <?php echo $row->city_name; ?>
                                                </td>
                                                <td>
                                                    <?php echo $row->email; ?>
                                                </td>
<!--                                                <td>
                                                    <?php echo $row->street; ?>
                                                </td>
						<td>
                                                    <?php echo $row->number; ?>
                                                </td>-->
                                                <td>
                                                    <?php if ($row->u_status=='Y'){?>
                                                    <div id="statusDiv<?php echo $row->u_id; ?>"> <button type="button" href='javascript: void(0);' class="btn btn-success btn-xs" title="Active" onclick="Status(<?php echo $row->u_id; ?>, 'N')"> <i class="fa fa-check"></i></button></div>
                                                    <?php }else{ ?>
                                                    <div id="statusDiv<?php echo $row->u_id; ?>"> <button type="button" href='javascript: void(0);' class="btn btn-danger btn-xs" title="Inactive" onclick="Status(<?php echo $row->u_id; ?>, 'Y')"> <i class="fa fa-remove"></i></button></div>
                                                    <?php } ?>
                                                </td>
                                                <td>
                                                    <?php echo date(('d M,Y'), strtotime($row->user_created_at)); ?>
                                                </td>
                                                <td> 
						    <a title="Edit" href="<?php echo base_url(); ?>admin/gemeenten_management/edit_gemeenten/<?php echo $row->u_id; ?>" class="btn-sm btn-success rounded-corner btn-share">Edit</a> 
                                                    <a title="Delete" onClick="return confirm('Would you like to delete this ?');" href="<?php echo base_url(); ?>admin/gemeenten_management/delete_gemeenten/<?php echo $row->u_id; ?>" class="btn-sm btn-danger rounded-corner btn-share">Delete</a> 
						</td>
                                            </tr>
                                            <?php $i++;}}else{?>
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
    <?php // $this->load->view('common/quick_nav'); ?>
    <?php $this->load->view('common/js_include'); ?>
    <script>
        function Status(id, val) {
            $.post('<?php echo base_url(); ?>admin/gemeenten_management/change_gemeenten_status', 'id=' + id + '&val=' + val, function(data) {
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