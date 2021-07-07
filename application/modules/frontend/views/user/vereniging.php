<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
         <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.21/css/dataTables.bootstrap4.min.css">
        
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
                        <?php if ($this->session->flashdata('success') != '') { ?>
                            <div class="alert alert-success"> 
                                <?php echo $this->session->flashdata('success'); ?>
                            </div> 
                        <?php } ?> 
                        <?php if ($this->session->flashdata('error') != '') { ?>
                            <div class="alert alert-danger"> 
                                <?php echo $this->session->flashdata('error'); ?>
                            </div>  
                        <?php } ?>
                        <h2 class="comman-title text-center">
                            Vereniging
                        </h2>
                        <h3 class="comman-title">
                            <a href="javascript:void(0)" data-toggle="modal" data-target="#csvImport">Voeg vereniging toe</a>
                        </h3>
                        <div class="row">
                            <div class="col-md-12">
                          
                            <div class="table-responsive">
                                <table id="table" class="table table-striped table-inbox veren ">
                                    <thead>
                                      <tr>
                                        <th>#</th>
                                        <th>Vereniging</th>
                                        <th>Stad</th>
                                        <th>Postcode</th>
                                        <th>Straat</th>
                                        <th>Nummer</th>
                                        <th>Telefoon</th>
                                        <th>Emailadres</th>
                                      </tr>
                                    </thead>
                                     <tbody>
                                            <?php
                                            $i = 1;
                                            foreach ($query->result() as $row) {
                                                ?>
                                            <tr>
                                                <td><?php echo $i; ?></td>
                                                <td><?php echo $row->association_name; ?></td>
                                                <td><?php echo $this->session->userdata('USER_CITY_NAME'); ?></td>
                                                <td><?php echo $row->post_code; ?></td>
                                                <td><?php echo $row->street; ?></td>
                                                <td><?php echo $row->number; ?></td>
                                                <td><?php echo $row->phone; ?></td>
                                                <td><a href="mailto:<?php echo $row->email; ?>"><?php echo $row->email; ?></a></td>
                                            </tr>
                                            <?php
                                            $i++;
                                        }
                                        ?>
                                        </tbody> 
                                </table>
                             </div>
            </div>
        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <form name="add_vereniging" action="<?php echo base_url(); ?>user/add_vereniging" method="post" >
                                <input type="hidden"  name="city_id" value="<?= $this->session->userdata('USER_ID') ?>" >
                                <input type="hidden"  name="created_by" value="City Admin" >
                                <div class="form-group">
                                    <label >Postcode</label>
                                    <input type="text" pattern="[0-9]+" value="<?= $this->session->userdata('USER_POST_CODE') ?>" readonly="" name="post_code" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <label for="pwd">Vereniging:</label>
                                    <input type="association" name="association" class="form-control" >
                                </div>
                                <button type="submit" class="btn btn-default">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="modal fade" id="csvImport" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        <div class="modal-body">
                            <form name="add_vereniging" action="<?php echo base_url(); ?>frontend/user/add_vereniging_csv" method="post"  enctype="multipart/form-data" >
                                <input type="hidden"  name="city_id" value="<?= $this->session->userdata('USER_ID') ?>" >
                                <input type="hidden"  name="created_by" value="City Admin" >
                                <div class="form-group">
                                    <label >Upload CSV</label>
                                    <input type="file" name="file" class="form-control" >
                                </div>
                                <button type="submit" class="btn btn-default">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--+++++++++++++ footer Start +++++++++++++++++++-->
        <?php $this->load->view('common/footer_v2'); ?>  
    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
<script type="text/javascript" src="<?php echo base_url(); ?>assets/front_v2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/front_v2/js/jquery.dataTables.min.js"></script>

        <script>
            $('#table').DataTable({searching: false, paging: false, info: false});
            </script>

</html>