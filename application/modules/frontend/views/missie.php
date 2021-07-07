<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v5'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->

        <section id="innerbanner" style="background: url(<?php echo base_url(); ?>uploads/cms/<?php echo $query['banner_image']; ?>) no-repeat center top;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="text_inner">
                            <h1><?php echo $query['banner_heading']; ?></h1>
                            <p><?php echo $query['banner_text']; ?></p>
                        </div>
                    </div>
                </div>

            </div>
        </section>
        <section id="services">
            <div class="container">

                <div class="col-sm-12">
                    <h2 class="bio"><?php echo $query['section_1_heading']; ?></h2>
                    <p class="biotext"><?php echo $query['section_1_content']; ?></p>
                </div>
                <div class="height"></div>
                <div class="row">
                    <div class="carousel slide" id="main-carousel" data-ride="carousel">
                        <!-- /.carousel-indicators -->

                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block img-fluid" src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_1_big_image']; ?>" alt="">
<!--                                <div class="carousel-caption d-none d-md-block">
                                    <h3>Mountain</h3>
                                </div>-->
                            </div>
<!--                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo base_url(); ?>assets/front_v2/images/slider.jpg" alt="">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3>Mountain</h3>

                                </div>
                            </div>
                            <div class="carousel-item">
                                <img class="d-block img-fluid" src="<?php echo base_url(); ?>assets/front_v2/images/slider.jpg" alt="">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3>Mountain</h3>

                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="<?php echo base_url(); ?>assets/front_v2/images/slider.jpg" alt="" class="d-block img-fluid">
                                <div class="carousel-caption d-none d-md-block">
                                    <h3>Mountain</h3>

                                </div>
                            </div>-->
                        </div><!-- /.carousel-inner -->

                        <a href="#main-carousel" class="carousel-control-prev" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                            <span class="sr-only" aria-hidden="true">Prev</span>
                        </a>
                        <a href="#main-carousel" class="carousel-control-next" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                            <span class="sr-only" aria-hidden="true">Next</span>
                        </a>
                    </div>

                </div>

            </div>
        </section>
        <section id="mess">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="imgd">
                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_2_image']; ?>" />
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="our_mi">
                            <div class="icon"><img src="<?php echo base_url(); ?>assets/front_v2/images/air.png" /></div>
                            <div class="text_inner_miss">
                                <h1><?php echo $query['section_2_heading']; ?></h1>
                                <p><?php echo $query['section_2_content']; ?></p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="our_mi">
                            <div class="icon"><img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_3_image']; ?>" /></div>
                            <div class="text_inner_miss">
                                <h1><?php echo $query['section_3_heading']; ?></h1>
                                <p><?php echo $query['section_3_content']; ?></p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <a href="<?php echo base_url(); ?>contact" class="conta">Contact us</a>
                    </div>

                </div>
            </div>
        </section>






        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
</html>
