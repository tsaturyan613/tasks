<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
        <style>
            .slider .im {
                margin: 0 9px 0 0;
            }
        </style>
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v5'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <div class="banner_holder" style="background:url(<?php echo base_url(); ?>uploads/cms/<?php echo $query['banner_image']; ?>) no-repeat center top; background-size:cover; padding:200px 0;">

            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h1><?php echo $query['banner_text_1']; ?><br />
                            <span><?php echo $query['banner_text_2']; ?></span></h1>

                        <p><?php echo $query['banner_text_3']; ?></p>

                        <a href="<?php echo $query['banner_btn_1_url']; ?>" class="service"><?php echo $query['banner_btn_1_text']; ?></a>
                        <a href="<?php echo $query['banner_btn_2_url']; ?>" class="accou"><?php echo $query['banner_btn_2_text']; ?></a>

                    </div>
                </div>
            </div>


        </div>

    </section>
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-8">
                    <h1>Services</h1>
                    <div class="slider slider-nav">
                        <div>
                            <div class="holder">
                                <div class="im">
                                    <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['service_icon_1']; ?>" />
                                </div>
                                <div class="text">
                                    <h2><?php echo $query['service_headind_1']; ?></h2>
                                    <p><?php echo $query['service_content_1']; ?></p>
                                </div>
                                <div class="clearfix"></div>
                            </div>

                            <div class="holder">
                                <div class="im">
                                    <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['service_icon_2']; ?>" />
                                </div>
                                <div class="text">
                                    <h2><?php echo $query['service_headind_2']; ?></h2>
                                    <p><?php echo $query['service_content_2']; ?></p>
                                </div>
                                <div class="clearfix"></div>
                            </div>



                        </div>
                        <div>
                            <div class="holder">
                                <div class="im">
                                    <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['service_icon_3']; ?>" />
                                </div>
                                <div class="text">
                                    <h2><?php echo $query['service_headind_3']; ?></h2>
                                    <p><?php echo $query['service_content_3']; ?></p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="holder">
                                <div class="im">
                                    <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['service_icon_4']; ?>" />
                                </div>
                                <div class="text">
                                    <h2><?php echo $query['service_headind_4']; ?></h2>
                                    <p><?php echo $query['service_content_4']; ?></p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <!--                            <div>
                                                        <div class="holder">
                                                            <div class="im">
                                                                <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_1.png" />
                                                            </div>
                                                            <div class="text">
                                                                <h2>Herbruikbare Bekers</h2>
                                                                <p>Content of a page when looking its <br />
                                                                    layout. The point of using Lorem<br />
                                                                    Ipsum is that it hasnormal </p>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                        
                                                        <div class="holder">
                                                            <div class="im">
                                                                <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_3.png" />
                                                            </div>
                                                            <div class="text">
                                                                <h2>Afwassen & Verpakken</h2>
                                                                <p>Content of a page when looking its <br />
                                                                    layout. The point of using Lorem<br />
                                                                    Ipsum is that it hasnormal </p>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                        
                        
                        
                                                    </div>
                                                    <div>
                                                        <div class="holder">
                                                            <div class="im">
                                                                <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_2.png" />
                                                            </div>
                                                            <div class="text">
                                                                <h2>Herbruikbare Bekers</h2>
                                                                <p>Content of a page when looking its <br />
                                                                    layout. The point of using Lorem<br />
                                                                    Ipsum is that it hasnormal </p>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="holder">
                                                            <div class="im">
                                                                <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_4.png" />
                                                            </div>
                                                            <div class="text">
                                                                <h2>Kratten & Korven</h2>
                                                                <p>Content of a page when looking its <br />
                                                                    layout. The point of using Lorem<br />
                                                                    Ipsum is that it hasnormal </p>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>
                                                    <div>
                                                        <div class="holder">
                                                            <div class="im">
                                                                <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_1.png" />
                                                            </div>
                                                            <div class="text">
                                                                <h2>Herbruikbare Bekers</h2>
                                                                <p>Content of a page when looking its <br />
                                                                    layout. The point of using Lorem<br />
                                                                    Ipsum is that it hasnormal </p>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                        
                                                        <div class="holder">
                                                            <div class="im">
                                                                <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_3.png" />
                                                            </div>
                                                            <div class="text">
                                                                <h2>Afwassen & Verpakken</h2>
                                                                <p>Content of a page when looking its <br />
                                                                    layout. The point of using Lorem<br />
                                                                    Ipsum is that it hasnormal </p>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                        
                        
                        
                                                    </div>
                                                    <div>
                                                        <div class="holder">
                                                            <div class="im">
                                                                <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_2.png" />
                                                            </div>
                                                            <div class="text">
                                                                <h2>Herbruikbare Bekers</h2>
                                                                <p>Content of a page when looking its <br />
                                                                    layout. The point of using Lorem<br />
                                                                    Ipsum is that it hasnormal </p>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="holder">
                                                            <div class="im">
                                                                <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_4.png" />
                                                            </div>
                                                            <div class="text">
                                                                <h2>Kratten & Korven</h2>
                                                                <p>Content of a page when looking its <br />
                                                                    layout. The point of using Lorem<br />
                                                                    Ipsum is that it hasnormal </p>
                                                            </div>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                    </div>-->
                    </div>

                </div>
                <div class="col-sm-12 col-lg-4">
                    <div class="bg_one">
                        <h3><?php echo $query['testimonial_heading']; ?></h3>
                        <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_5.png" class="left" />
                        <p><?php echo $query['testimonial_content']; ?></p>

                        <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_6.png" class="right" />




                        <div class="cd-author">
                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['testimonial_image']; ?>"  alt="Author image" draggable="false">
                            <ul class="cd-author-info">
                                <li><?php echo $query['testimonial_author']; ?><br />
                                    <img src="<?php echo base_url(); ?>assets/front_v2/images/star.png" style="width:80px; height:17px;" />
                                </li>

                            </ul>
                        </div>





                        <a href="<?php echo $query['testimonial_btn_url']; ?>" class="cre"><?php echo $query['testimonial_btn_text']; ?></a>

                    </div>

                </div>

            </div>
        </div>
    </section>
    <section class="pro">
        <div class="container">
            <div class="row">
                <div class="col-sm-5">
                    <div class="imh"><img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_1_big_image']; ?>" /></div>

                </div>
                <div class="col-sm-7">
                    <div class="con_one">
                        <h3><?php echo $query['section_1_heading']; ?></h3>
                        <h5><?php echo $query['section_1_content']; ?></h5>

                        <p><?php echo $query['section_1_sub_content']; ?></p>



                        <a href="<?php echo $query['section_1_btn_url']; ?>" class="readmore"><?php echo $query['section_1_btn_text']; ?></a> 
                       <!-- <a href="#"><img src="<?php echo base_url(); ?>assets/front_v2/images/logo_one.jpg" /></a>-->

                    </div>
                </div>
            </div>
        </div>
    </section>


    <section class="call_one">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <div class="bg">
                        <div class="left_one">
                            <i class="icon-screen-smartphone icons"></i>
                            <p><span>Call now </span><br />

                                for free consultation</p>

                            <a href="call:<?php echo $query['call_now_number']; ?>" class="num">: <?php echo $query['call_now_number']; ?></a>

                        </div>
                        <div class="line_one">
                            <div class="line"></div>
                            <div class="rou">OR</div>
                        </div>

                        <div class="right_one">
                            <i class="icon-envelope-open icons"></i>
                            <p><span>Mail us now </span><br />
                                for free consultation</p>

                            <a href="mailto:<?php echo $query['mail_us_email']; ?>" class="num">: <?php echo $query['mail_us_email']; ?></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="pro">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="imhone"><img src="<?php echo base_url(); ?>uploads/cms/<?php echo $query['section_2_big_image']; ?>" /></div>

                </div>
                <div class="col-sm-6">
                    <div class="con_one mt-sm-5">
                        <h3><?php echo $query['section_2_heading']; ?></h3>


                        <p><?php echo $query['section_2_content']; ?> </p>

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


    <!--+++++++++++++ footer Start +++++++++++++++++++-->

    <?php $this->load->view('common/footer_v2'); ?>  


</body>
<?php $this->load->view('common/footer_js_v2'); ?>  
</html>
