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
                    <p class="biotext"><?php echo $query['section_1_content']; ?> </p>
                </div>
                <div class="height"></div>
 <?php
                $content = json_decode($query['content']);
                for ($i = 0; $i < count($content->content_heading); $i++) {
                    if ($i == 0 || $i % 2 == 0) {
                        ?>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="im_inner">
                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $content->content_image[$i] ?>" />
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="con_one mt-sm-3">
                            <h3><?php echo $content->content_heading[$i] ?></h3>


                            <p><?php echo $content->content_text[$i] ?></p>
<!--                            <ul class="line_one_text">
                                <li>seizoensproducten: sinterklaas, pasen, kerst, ....</li> 
                                <li>zeevruchtenpralines, ...</li> 
                                <li>speciale gelegenheden</li> 
                                <li> holgoedvormen</li> 
                                <li>afslagplaten.......</li> 
                            </ul>
                            <a href="#" class="lees">>> Lees meer over onze services voor Chocolatiers</a>-->

                        </div>
                    </div>
                </div>
                <div class="height"></div>
<?php } else { ?>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="con_one mt-sm-3">
                            <h3><?php echo $content->content_heading[$i] ?></h3>


                            <p><?php echo $content->content_text[$i] ?> </p>
<!--                            <ul class="line_one_text">
                                <li> tellen per deelbestelling</li> 
                                <li>verpakken per hoeveelheid</li> 
                                <li>controleren op de teruggeleverde kwaliteit</li> 

                            </ul>
                            <a href="#" class="lees">>> Lees meer over onze services voor Chocolatiers</a>-->

                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="im_inner">
                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $content->content_image[$i] ?>" />
                        </div>
                    </div>

                </div>
                <div class="height"></div>
 <?php }
                } ?>
            </div>
        </section>





        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
</html>
