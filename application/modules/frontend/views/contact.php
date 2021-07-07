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
                <div class="row">
                    <div class="col-sm-8">
                        <div class="searc_holder">
                            <div class="avne">
                                <h2 style="min-height: inherit; padding:0;">Neem contact op metons</h2>
                                <p style="line-height:inherit;">Vertel ons over jezelf en wij zullen de beste optie voor jou uitzoeken.<br>

                                    Vul je liver geen formulier? Mail ons op sales@durafest.be
                                </p>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="search">
                                        <input type="text" value="" placeholder="Naam">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="search">
                                        <input type="text" value="" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="search">
                                        <input type="text" value="" placeholder="Onderwerp">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="search">
                                        <textarea placeholder="Boodschap"></textarea>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="search">
                                        <input type="submit" value="Versturen">
                                    </div>
                                </div>
                            </div>




                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="address">
                            <img src="<?php echo base_url(); ?>assets/front/images/icon_1.jpg" alt="" style=" margin: 0 20px 105px 0;">
                            <h5>Bezoek ons</h5>
                            <p>Durafest<br>
                                Kwintijnpoort 106<br>9200<br>Dendermonde

                            </p>
                            <div class="clearfix"></div>
                        </div>
                        <div class="address">
                            <img src="<?php echo base_url(); ?>assets/front/images/icon_2.jpg" alt="" style=" margin: 0 20px 40px 0;">
                            <h5>Bel ons</h5>
                            <p>+32 472 985 637

                            </p>
                            <div class="clearfix"></div>
                        </div>
                        <div class="address">
                            <img src="<?php echo base_url(); ?>assets/front/images/icon_3.jpg" alt="" style=" margin: 0 20px 40px 0;">
                            <h5>Mail ons</h5>
                            <p>sales@durafest.be 

                            </p>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>

            </div>
        </section>


        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer'); ?>  


    </body>
    <?php $this->load->view('common/footer_js'); ?>  
</html>
