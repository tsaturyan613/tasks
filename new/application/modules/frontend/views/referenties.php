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
                <div class="row">
                    <div class="col-sm-6">
                        <div class="imhone"><img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_1_big_image']; ?>" /></div>

                    </div>
                    <div class="col-sm-6">
                        <div class="con_one mt-sm-5">
                            <h3><?php echo $query['section_1_heading']; ?></h3>


                            <p><?php echo $query['section_1_content']; ?></p>

                            <div class="row">
                                <div class="counter col-sm-4">
                                    <img src="<?php echo base_url(); ?>assets/front_v2/images/sm.png" class="sm" />
                                    <div class="coun">
                                        <h2 class="timer count-title count-number" data-to="<?php echo $query['happy_clients']; ?>" data-speed="1500"></h2>
                                        <p class="count-text ">Happy clients</p>
                                    </div>
                                </div>

                                <div class="counter pl-sm-4 col-sm-4">
                                    <img src="<?php echo base_url(); ?>assets/front_v2/images/sm1.png" class="sm" />
                                    <div class="coun">
                                        <h2 class="timer count-title count-number" data-to="<?php echo $query['awards']; ?>" data-speed="1500"></h2>
                                        <p class="count-text ">Awards</p>
                                    </div>
                                </div>

                                <div class="counter col-sm-4">
                                    <img src="<?php echo base_url(); ?>assets/front_v2/images/sm2.png" class="sm" />
                                    <div class="coun">
                                        <h2 class="timer count-title count-number" data-to="<?php echo $query['employees']; ?>" data-speed="1500"></h2>
                                        <p class="count-text ">Employees</p>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>


                </div>



            </div>
        </section>

        <section id="tes">

            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Carousel indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>   
                <!-- Wrapper for carousel items -->
                <div class="carousel-inner">		
                    <div class="item carousel-item active">
                        <div class="img-box"><img src="<?php echo base_url(); ?>assets/front_v2/images/100_te.png" /> </div>
                        <img src="<?php echo base_url(); ?>assets/front_v2/images/co.png" class="uparro" />
                        <p class="testimonial"><?php echo $query['testimonial_content']; ?></p>
                        <img src="<?php echo base_url(); ?>assets/front_v2/images/co1.png" class="uparroone" />
                        <p class="overview"><b><?php echo $query['testimonial_author']; ?></b>Seo Analyst at <a href="#">OsCorp Tech.</a></p>
                        <div class="star-rating">
                            <ul class="list-inline">
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                        </div>
                    </div>
<!--                    <div class="item carousel-item">
                        <div class="img-box"><img src="<?php echo base_url(); ?>assets/front_v2/examples/images/clients/1.jpg" alt=""></div>
                        <p class="testimonial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Vestibulum idac nisl bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
                        <p class="overview"><b>Paula Wilson</b>Media Analyst at <a href="#">SkyNet Inc.</a></p>
                        <div class="star-rating">
                            <ul class="list-inline">
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-o"></i></li>
                            </ul>
                        </div>
                    </div>-->
<!--                    <div class="item carousel-item">
                        <div class="img-box"><img src="<?php echo base_url(); ?>assets/front_v2/examples/images/clients/2.jpg" alt=""></div>
                        <p class="testimonial">Vestibulum quis quam ut magna consequat faucibus. Pellentesque eget nisi a mi suscipit tincidunt. Utmtc tempus dictum risus. Pellentesque viverra sagittis quam at mattis. Suspendisse potenti. Aliquam sit amet gravida nibh, facilisis gravida odio. Phasellus auctor velit.</p>
                        <p class="overview"><b>Antonio Moreno</b>Web Developer at <a href="#">Circle Ltd.</a></p>
                        <div class="star-rating">
                            <ul class="list-inline">
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star"></i></li>
                                <li class="list-inline-item"><i class="fa fa-star-half-o"></i></li>
                            </ul>
                        </div>
                    </div>		-->
                </div>
                <!-- Carousel controls -->
                <a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
                    <i class="fa fa-angle-left"></i>
                </a>
                <a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>



        </section>

        <section id="services">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="our_mi">
                            <div class="icon"><img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_2_image']; ?>"></div>
                            <div class="text_inner_miss">
                                <h1><?php echo $query['section_2_heading']; ?></h1>
                                <p><?php echo $query['section_2_content']; ?> </p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="our_mi">
                            <div class="icon"><img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_3_image']; ?>"></div>
                            <div class="text_inner_miss">
                                <h1><?php echo $query['section_3_heading']; ?></h1>
                                <p><?php echo $query['section_3_content']; ?> </p>
                            </div>
                            <div class="clearfix"></div>
                        </div>

                    </div>
                    <a href="<?php echo base_url(); ?>contact" class="contaone">Contact us</a>
                </div>
            </div>
        </section>



        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
</html>
