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
                            <li> <span>Products List</span> </li>
                        </ul>
                    </div><br>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="pull-right "> <a href="<?php echo base_url(); ?>admin/product_management/add_product" class="btn btn-success">Voeg product toe</a> <br></div>
                        </div>
                        <div class="col-md-12">
                            <div id="msg_div">
                                <?php if ($this->session->flashdata('success') !=''){?>
                                    <?php echo $this->session->flashdata('success'); ?>
                                <?php }?>
                            </div>
                            <div class="portlet box green">
                                <div class="portlet-title">
                                    <div class="caption"> <i class="fa fa-globe"></i>Alle producten (
                                        <?php echo $query->num_rows(); ?>)</div>
                                        <div class="tools"> </div>
                                    </div>
                                    <div class="portlet-body">
                                        <table class="table table-striped table-bordered table-hover" id="sample_2">
                                            <thead>
                                                <tr>
                                                    <th>SI No.</th>
                                                    <th> Naam </th>
                                                    <th> Materiaal</th>
                                                    <th> Aantal/box </th>
<!--                                                <th> Huurprijs/box </th>
                                                <th> Prijs/verloren cup</th>
                                                <th> Wasprijs/box</th>-->
                                                <th> Meer info </th>
                                                <th> Foto </th>
                                                <th>Status</th>
                                                <th>Created</th>
                                                <th> Action </th>
                                            </tr>
                                        </thead>
                                        <tbody class="product-list">
                                            <?php if ($query->num_rows() > 0){$i=1; foreach ($query->result() as $row){?>
                                                <tr id="<?php echo $row->p_id; ?>">
                                                    <td>
                                                        <?php echo $i; ?>
                                                    </td>
                                                    <td>
                                                        <?php echo $row->name; ?>
                                                    </td>
                                                    <td>
                                                        <?php echo $row->material; ?>
                                                    </td>
                                                    <td>
                                                        <?php echo $row->qty; ?>
                                                    </td>
<!--						<td>
                                                    &euro; <?php echo number_format((float)$row->box_prc, 2, '.', ''); ?>
                                                </td>
                                                <td>
                                                    &euro; <?php echo number_format((float)$row->loss_prc, 2, '.', ''); ?>
                                                </td>
                                                <td>
                                                    &euro; <?php echo number_format((float)$row->wash_prc, 2, '.', ''); ?>
                                                </td>-->
                                                <td>
                                                    <?php echo $row->sort_desc; ?>
                                                </td>
                                                <td>
                                                    <img src="<?php echo base_url(); ?>uploads/product/<?php echo $row->image; ?>" width="100" />
                                                </td>
                                                <td>
                                                    <?php if ($row->p_status=='Y'){?>
                                                        <div id="statusDiv<?php echo $row->p_id; ?>"> <button type="button" href='javascript: void(0);' class="btn btn-success btn-xs" title="Active" onclick="Status(<?php echo $row->p_id; ?>, 'N')"> <i class="fa fa-check"></i></button></div>
                                                    <?php }else{ ?>
                                                        <div id="statusDiv<?php echo $row->p_id; ?>"> <button type="button" href='javascript: void(0);' class="btn btn-danger btn-xs" title="Inactive" onclick="Status(<?php echo $row->p_id; ?>, 'Y')"> <i class="fa fa-remove"></i></button></div>
                                                    <?php } ?>
                                                </td>
                                                <td>
                                                    <?php echo date(('d M,Y'), strtotime($row->p_created_at)); ?>
                                                </td>
                                                <td> 
                                                  <a title="Edit" href="<?php echo base_url(); ?>admin/product_management/edit_product/<?php echo $row->p_id; ?>" class="btn-sm btn-success rounded-corner btn-share">Edit</a> 
                                                  <a title="Delete" onClick="return confirm('Would you like to delete this ?');" href="<?php echo base_url(); ?>admin/product_management/delete_product/<?php echo $row->p_id; ?>" class="btn-sm btn-danger rounded-corner btn-share">Delete</a> 
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
        $.post('<?php echo base_url(); ?>admin/product_management/change_product_status', 'id=' + id + '&val=' + val, function(data) {
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



    $(".product-list" ).sortable({
        delay: 150,
        stop: function() {
            var selectedData = new Array();
            $('.product-list>tr').each(function() {
                selectedData.push($(this).attr("id"));
            });
            updateOrder(selectedData);
        }
    });


    function updateOrder(data) {
         // console.log(data);

        
        $.ajax({
            url:"<?php echo base_url(); ?>admin/product_management/all_product_row_sorting",
            type:'post',
            data:{position:data},
            success:function(data){
                // alert(data);
                // alert('your change successfully saved');
            }
        })
        
    }
</script>
</body>
</html>