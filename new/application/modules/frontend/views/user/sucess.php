<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v5'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="sucess">
            <div class="container"> 
                <div class="row">
                    <div class="col-12">
                        <div class="text-center uwp">
                            <h2><i class="far fa-check-circle"></i> Uw profiel is aangemaakt</h2>
                            <h3>Ga door naar uw eerste evenement</h3>
                            <a href="<?php echo base_url(); ?>user/products"><i class="fas fa-arrow-right"></i></a>
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
