<!DOCTYPE html>
<html>
    <head>
        <?php $this->load->view('common/header_v2'); ?>  
    </head>
    <body>
        <?php $this->load->view('common/header_nav_new'); ?>  

        <!--+++++++++++++ Header End +++++++++++++++++++-->
        <section class="login">
            <div class="container">
                <div class="login_box text-center">
                    <h2>Aanmelden</h2>
                    <p> Meld u hieronder aan</p>
                    <!--<h3><a href="<?=base_url()?>admin" target="_blank">Beheerder</a> Stad Vereniging</h3>-->
                    <?php if ($this->session->flashdata('success') != '') { ?>
                       <?php echo $this->session->flashdata('success'); ?>
                    <?php } ?>
                    <form action="" method="post">
                        <div class="form-group">
                            <input type="email" class="form-control" id="email" placeholder="Email" name="email">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" id="pwd" placeholder="Wachtwoord" name="pswd">
                        </div>
                        <button type="submit" class="btn btn-primary sumt">Aanmelden</button>
                    </form>
                    <a href="<?=base_url()?>forgot_password" class="fwrpas">Wachtwoord vergeten?</a>

                </div>
            </div>

        </section>



        <!--+++++++++++++ footer Start +++++++++++++++++++-->

        <?php $this->load->view('common/footer_v2'); ?>  


    </body>
    <?php $this->load->view('common/footer_js_v2'); ?>  
</html>
