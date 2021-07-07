<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v6'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="voor">
            <div class="container">
                <h1><?php echo $recommendation_data[0]->page_title ?></h1>
                <div class="row text-center">
                    <?php foreach ($recommendation_data as $key => $value) {?>
                    <div class="col-sm-4">
                        <div class="avne">
                            <img src="<?php echo base_url(); ?>uploads/cms/<?php echo $value->section_img ?>" alt="" class="img-fluid rounded-circle">
                            <h2><?php echo $value->section_title ?></h2>
                            <p><?php echo $value->section_content ?>
                            </p>
                        </div>
                    </div>
                    <?php  } ?>
                </div>

            </div>
        </section>


        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
</html>
