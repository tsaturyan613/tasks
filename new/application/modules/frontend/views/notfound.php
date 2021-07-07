<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
        <style>
            #errorsec {
                width: 100%;
                float: none;align-items: center;
    display: flex;
                /*transform: translateY(50%);*/
            }
            .error-sec-content{
                width: 100%;
                float: left;
                
            }

            #errorsec .error-sec-content {
                text-align: center;
                background-color: transparent;
                padding: 44px 40px;
            }
            
            #errorsec .error-sec-content h2{
                color: #2e778b;
                font-size: 100px;
                margin: 0;
            }

            .error-sec-content h4 {
                font-family: 'Poppins', sans-serif;
                font-size: 39px;
                color: #033e4e;
                text-transform: uppercase;
                padding-top: 29px;
                font-weight: 700;
            }
            .error-sec-content p{
                font-family: 'Poppins', sans-serif;
                font-size: 15px;
                color: #5c666a;
                margin: 0;
                font-weight: 400;
                line-height: 30px;
            }
            .error-sec-content a{
                width: 140px;
                background: #2e778b;
                border-radius: 4px;
                display: inline-block;
                font-family: 'Poppins', sans-serif;
                font-size: 14px;
                color: #fff;
                height: 48px;
                line-height: 48px;
                text-transform: uppercase;
                text-align: center;
                margin-top: 21px;
            }
            .error-sec-content a:hover{
                color: #fff;
                text-decoration: none;
            }
            @media (min-width: 320px) and (max-width: 767px) {
                .error-sec-content img {
                    width: 100%;
                }
            }

            @media (max-width: 767px) {
                .error-sec-content h4 {
                    font-size: 32px;
                }

                .error-sec-content p {
                    font-size: 12px;
                    line-height: 21px;
                }
            }

            @media (min-width: 320px) and (max-width: 425px) {
                .error-sec-content h4 {
                    font-size: 24px;
                }

                .error-sec-content p {
                    font-size: 10px;
                }
            }
            
 
section#services {
    padding:0; background:#fafafa; padding-bottom: 376px;
    min-height: 100vh;
    display: flex;
}

section#services .row {
    min-height: 100%;
}

section#services .col-md-12{
    display: inline-flex;
}


body, html {
    height: auto !important;
}

html {
    min-height: 100%;
    position: relative;
}

#footer_holder{
    position: absolute;
    bottom: 0;
    left: 0;
    height: 376px;
}


        </style>
    </head>
    <body>
        <?php $this->load->view('common/header_nav_v5'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        
        
         <section id="services">
            <div class="container">
                <div class="row">
 
                    <div class="col-md-12 col-sm-12">
                        <section id="errorsec">
                            <div class="error-sec-content">
                                <!-- <img src="<?php echo base_url(); ?>assets/front_v2/images/404img.png" alt=""> -->
                                <h2>404</h2>
                                <h4>page not found</h4>
                                <p> "It seems we can't find what you're looking for. "</p>
                                <a href="<?php echo base_url(); ?>">go home</a>
                            </div>
                        </section>
                    </div>

                
        

                </div>
            </div>
        </section>
        
        
        


        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
</html>
