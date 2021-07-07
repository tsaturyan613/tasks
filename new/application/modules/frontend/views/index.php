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
        <div class="banner_holder">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12">
                        <h1><?php echo $query['banner_text_1']; ?><br />
                            <span><?php echo $query['banner_text_2']; ?></span></h1>

                        <p><?php echo $query['banner_text_3']; ?></p>
                        <div class="action-btn">
                        <a href="<?php echo $query['banner_btn_1_url']; ?>" class="service"><?php echo $query['banner_btn_1_text']; ?></a>
                         <span>of</span>
                        <a href="<?php echo $query['banner_btn_2_url']; ?>" class="accou"><?php echo $query['banner_btn_2_text']; ?></a>

                        </div>
                       
                    </div>
                </div>
            </div>


        </div>

    </section>
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-md-6 col-lg-3">
                           <div class="holder">
                                <div class="im">
                                    <i class="fas fa-glass-whiskey"></i>
                                 </div>
                                <div class="text">
                                    <h2><?php echo $query['service_headind_1']; ?></h2>
                                    <p><?php echo $query['service_content_1']; ?></p>
                                </div>                             
                                    
                                                                                        
                            </div>
                </div>
                <div class="col-md-6 col-lg-3">
                          <div class="holder">
                                <div class="im">                                
                                  <i class="fas fa-tachometer-alt"></i>
                                </div>
                                <div class="text">
                                    <h2><?php echo $query['service_headind_2']; ?></h2>
                                    <p><?php echo $query['service_content_2']; ?></p>
                                </div>                               
                            </div>
                </div>
                <div class="col-md-6 col-lg-3">
                           <div class="holder">
                                <div class="im">
                                  <i class="fas fa-mobile-alt"></i>
                                </div>
                                <div class="text">
                                    <h2><?php echo $query['service_headind_3']; ?></h2>
                                    <p><?php echo $query['service_content_3']; ?></p>
                                </div>                                
                            </div>
                </div>
                <div class="col-md-6 col-lg-3">
                <div class="holder">
                                <div class="im">
                                   <i class="fas fa-wrench"></i>                                
                                </div>
                                <div class="text">
                                    <h2><?php echo $query['service_headind_4']; ?></h2>
                                    <p><?php echo $query['service_content_4']; ?></p>
                                </div>                               
                            </div>
                </div>
            </div>
        <div class="section-head text-center">
             <h3 class="sub-title">
                Ontdek hoe het werkt
             </h3>
             <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
              incididunt ut labore et dolore magna aliqua.
             </p>
             <a href="<?php echo $query['section_1_btn_url']; ?>" class="service"><?php echo $query['section_1_btn_text']; ?></a> 
        </div>
        </div>
        <!-- <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-8">                    
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
                                                    </div>
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
        </div> -->
    </section>
    <section class="pro">
        <div class="container">
            <div class="quote-block">
                <div class="user-quote">
                    <blockquote>
                       Onze dranksponsor wilde zijn duurzame bekers “gratis” aan ons 
                       leveren maar we moesten wel opdraaien voor de kosten van verloren en 
                       gebroken bekers alsook van de reiniging. Durafest kwam met een all-in 
                       oplossing: totale ontzorging én een positieve netto-marge op het 
                       einde van de rit. Dank je!
                    </blockquote>
                    <div class="user-info">
                        <figure>
                           <img src="<?php echo base_url(); ?>assets/front_v2/images/icon_7.png" />
                        </figure>
                        <div class="user-desc">
                            <span class="username">mark v.</span>
                            <div class="rating">
                              <img src="<?php echo base_url(); ?>assets/front_v2/images/rating.png" />
                            </div>
                        </div>
                    </div>
                </div>
               <img src="<?php echo base_url(); ?>assets/front_v2/images/car-img.jpg" />
            </div>
            <div class="feature-block">
                <h3 class="sub-title">
                   Onze features
                </h3>
                <h2>Herbruikbare bekers bestellen gaat voortaan gemakkelijker</h2>
                <div class="feature-wrap">
                   <div class="feature-text">
                     <div class="feature-inner">
                         <i class="fas fa-bullseye"></i>
                        <h4>Bestelbeheer</h4>
                        <p>Volg onder meer het verlies aan bekers op elk van jouw events en 
                            overleg met ons hoe je dit kan beperken.</p>
                     </div>                       
                    </div>
                    <div class="feature-img">
                       <img src="<?php echo base_url(); ?>assets/front_v2/images/feature1.jpg" />
                    </div>
                </div>
                <div class="feature-wrap">
                   <div class="feature-text">
                     <div class="feature-inner">
                         <i class="fas fa-shuttle-van"></i>
                        <h4>Logistiek</h4>
                        <p>Volg onder meer het verlies aan bekers op elk van jouw events en 
                            overleg met ons hoe je dit kan beperken.</p>
                     </div>                       
                    </div>
                    <div class="feature-img">
                       <img src="<?php echo base_url(); ?>assets/front_v2/images/feature2.jpg" />
                    </div>
                </div>
                <div class="feature-wrap">
                   <div class="feature-text">
                     <div class="feature-inner">
                         <i class="fas fa-chart-pie"></i>
                        <h4>Reporting</h4>
                        <p>Volg onder meer het verlies aan bekers op elk van jouw events en 
                            overleg met ons hoe je dit kan beperken.</p>
                     </div>                       
                    </div>
                    <div class="feature-img">
                       <img src="<?php echo base_url(); ?>assets/front_v2/images/feature3.jpg" />
                    </div>
                </div>
            </div>
           
        </div>
    </section>
    <section class="sec-customer">
        <div class="container">
            <div class="section-head text-center">
              <h3 class="sub-title">
                Onze klanten
              </h3>
                <p>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
                incididunt ut labore et dolore magna aliqua.
                </p>
            </div>
            <div class="customer-slider">
                 <div class="slide-item">
                    <div class="cstmr-logo">
                        logo
                    </div>
                 </div>               
                 <div class="slide-item">
                    <div class="cstmr-logo">
                        logo
                    </div>
                </div>       
                 <div class="slide-item">
                    <div class="cstmr-logo">
                        logo
                    </div>
                </div>       
                 <div class="slide-item">
                    <div class="cstmr-logo">
                        logo
                     </div>
                </div>       
                 <div class="slide-item">
                    <div class="cstmr-logo">
                        logo
                    </div>
                </div>       
            </div>            
        </div>
    </section>
    <section class="call_one">
        <div class="container">            
                 <div class="bg">
                        <div class="left_one">
                            <span>Bel ons nu Voor een gratis consultatie</span>                           
                            <a href="call:<?php echo $query['call_now_number']; ?>" class="num"> <i class="fas fa-phone"></i>   <?php echo $query['call_now_number']; ?></a>
                        </div>
                        <div class="line_one">
                            <div class="line"></div>
                            <div class="rou">of</div>
                        </div>
                        <div class="right_one">
                           <span>MAIL ONS nu Voor een gratis consultatie</span>                                            
                            <a href="mailto:<?php echo $query['mail_us_email']; ?>" class="num"> <i class="fas fa-envelope-open-text"></i>  <?php echo $query['mail_us_email']; ?></a>
                        </div>                       
                    </div>
                
            <div class="row">               
                <div class="col-xl-8">
                    <div class="con_one">
                        <h3><?php echo $query['section_2_heading']; ?></h3>
                        <p><?php echo $query['section_2_content']; ?> </p>  
                        <a href="#" class="service">Registreren</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="sec-blog">
        <div class="container">  
                        <div class="row justify-content-between">
                            <div class="counter col-sm-4 col-xl-5">
                                <!-- <img src="<?php echo base_url(); ?>assets/front_v2/images/sm.png" class="sm" /> -->
                                <span class="info-graph">
                                    <i class="far fa-smile"></i>
                                </span>
                                <div class="coun">
                                    <h2 class="timer count-title count-number" data-to="<?php echo $query['happy_clients']; ?>" data-speed="1500"></h2>
                                    <p class="count-text ">Happy clients</p>
                                </div>
                            </div>

                            <div class="counter col-sm-4 col-xl-4">
                                <!-- <img src="<?php echo base_url(); ?>assets/front_v2/images/sm1.png" class="sm" /> -->
                                <span class="info-graph">
                                    <i class="fas fa-award"></i>
                                </span>
                                <div class="coun">
                                    <h2 class="timer count-title count-number" data-to="<?php echo $query['awards']; ?>" data-speed="1500"></h2>
                                    <p class="count-text ">Awards</p>
                                </div>
                            </div>

                            <div class="counter col-sm-4 col-xl-3">
                                <!-- <img src="<?php echo base_url(); ?>assets/front_v2/images/sm2.png" class="sm" /> -->
                                <span class="info-graph">
                                    <i class="fas fa-users"></i>
                                </span>
                                <div class="coun">
                                    <h2 class="timer count-title count-number" data-to="<?php echo $query['employees']; ?>" data-speed="1500"></h2>
                                    <p class="count-text ">Employees</p>
                                </div>
                            </div>

                        </div>
        </div>
    </section>
    <!-- <section class="pro">
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
                       <a href="#"><img src="<?php echo base_url(); ?>assets/front_v2/images/logo_one.jpg" /></a>

                    </div>
                </div>
            </div>
        </div>  
    
    </section> -->
    <!-- <section class="pro">
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
    </section> -->


    <!--+++++++++++++ footer Start +++++++++++++++++++-->

    <?php $this->load->view('common/footer_v2'); ?>  


</body>
<?php $this->load->view('common/footer_js_v2'); ?>  
</html>
