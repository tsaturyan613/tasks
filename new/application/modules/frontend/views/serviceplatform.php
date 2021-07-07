<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header'); ?>  
    </head>
    <body>
        <?php $this->load->view('common/header_nav'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="voor">
            <div class="container">
                <h1>Het serviceplatform voor herbruikbare bekers</h1>
                <div class="row">
                    <div class="col-sm-1"></div>
                    <div class="col-sm-5">
                        <div class="avne">
                            <div class="logo_one">
                                <img src="<?php echo base_url(); ?>assets/front/images/logo_body.jpg" alt="">
                            </div>
                            <p>Op dit platform kunnen steden,grmeenten en hun verenigingen herbruikbare
                                bekers huren.Het leveren en terugbezorgen kan op het event,aan een afhaalpunt of bij
                                ons in Rotselaar.<br>
                                De bekers worden na het event op professionele wijze gereinigd en gedroogd in speciale
                                wasstraten.<br>
                                Via je account kan je de rapportering van al je evenementen opvolgen.<br>

                                Veel plezier!
                            </p>
                        </div>
                    </div>	
                    <div class="col-sm-5">
                        <div class="im">
                            <img src="<?php echo base_url(); ?>assets/front/images/img_1.jpg" alt="" style="width:100%;">
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class=" clearfix"></div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-4">
                        <div class="box">
                            <div class="avne">
                                <h2 style="min-height: inherit;">Voor steden end gemeenten</h2>
                            </div>
                            <img src="<?php echo base_url(); ?>assets/front/images/img_2.jpg" alt="" class="pb-4">
                            <a href="<?php echo base_url(); ?>gemeenten" class="btn btn-primary submt " style="margin:0 auto 0 auto; display:block; width:195px;">Account aanmaken</a>
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class="col-sm-4">
                        <div class="box">
                            <div class="avne">
                                <h2 style="min-height: inherit;">Voor verenigingen</h2>
                            </div>
                            <img src="<?php echo base_url(); ?>assets/front/images/img_3.jpg" alt="" class="pb-4">
                            <a href="<?php echo base_url(); ?>" class="btn btn-primary submt " style="margin:0 auto 0 auto; display:block; width:195px;">Account aanmaken</a>
                        </div>
                    </div>
                    <div class="col-sm-1"></div>
                    <div class=" clearfix"></div>
                </div>

            </div>
        </section>

        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer'); ?>  


    </body>
    <?php $this->load->view('common/footer_js'); ?>  
</html>
