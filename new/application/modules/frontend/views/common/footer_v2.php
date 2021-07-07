<section id="footer_holder">
    <div class="footer-primary">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="footer">
                    <h3>Ons kantoor</h3>
                    <div class="location_holder">
                        <!-- <i class="icon-location-pin icons"></i> -->
                        <p>Durafest, Kwintijnpoort 106<br />

                            9200, Dendermonde</p>
                    </div>

                   
                </div>
            </div>
            <div class="col-md-3">
                <div class="footer">
                    <h3>Navigation</h3>

                    <ul>
                        <?php $get_menu = get_menu('4'); // print_r($get_menu); ?>
                        <?php foreach ($get_menu as $row) { ?>
                            <li><a href="<?php echo base_url(); ?><?php echo $row->page_url; ?>"><?php echo $row->page_name; ?></a></li>
                        <?php } ?>
<!--                        <li><a href="<?php echo base_url(); ?>aanbod">Aanbod</a></li>
                    <li><a href="<?php echo base_url(); ?>login">Account aanmaken</a></li>
                    <li><a href="<?php echo base_url(); ?>missie">Missie</a></li>
                    <li><a href="<?php echo base_url(); ?>referenties">Referenties</a></li>
                    <li><a href="<?php echo base_url(); ?>bio">Bio</a></li>
                    <li><a href="<?php echo base_url(); ?>contact">Contact</a></li>-->
                    </ul>
                </div>
            </div>
            <div class="col-md-3">
                <div class="footer">
                    <h3>Services</h3>

                    <ul>
                        <?php $get_menu = get_menu('5'); // print_r($get_menu); ?>
                        <?php foreach ($get_menu as $row) { ?>
                            <li><a href="<?php echo base_url(); ?><?php echo $row->page_url; ?>"><?php echo $row->page_name; ?></a></li>
                        <?php } ?>
                        <!--                        <li><a href="#">Cup Sourcing</a></li>
                                                <li><a href="#">Event Logistics</a></li>
                                                <li><a href="#">Financial Models</a></li>
                                                <li><a href="#">Quality & Hygiene</a></li>-->

                    </ul>
                </div>
            </div>

            <div class="col-md-3">
                <div class="footer">
                    <h3>Contacteer ons nu </h3>
                       <div class="location_holdertwo">
                        <span>Email: <a href="mailto:sales@durafest.be">sales@durafest.be</a></span>
                        </div>
                        <div class="location_holdertwo">
                        <span>Telefoon: <a href="tel:+32472985637"> +32 472 985 637</a></span>
                        </div>
                    <!-- <ul>
                         <li><a href="<?php echo base_url(); ?>contact">Contacteer ons nu</a></li>
                    </ul> -->
<!--                    <h3>Newsletter</h3>
                    <p>Enter your email & subcribing newsletter</p>

                    <form method="POST" id="subscribeForm">
                        <div class="sub">
                            <i class="icon-envelope icons"></i>
                            <input type="text" value="" name="email" id="subscribeEmail" placeholder="Email address" />
                             <input type="submit" value="Subscribe" /> 
                            <button  type="button" onclick="checkEmailField()" >Subscribe </button> 
                            <div class="clearfix"></div>
                        </div>
                    </form>
                    <a href="#" class="face"><img src="<?php echo base_url(); ?>assets/front_v2/images/face.png" /></a>
                    <a href="#" class="face"><img src="<?php echo base_url(); ?>assets/front_v2/images/twitter.png" /></a>
                    <a href="#" class="face"><img src="<?php echo base_url(); ?>assets/front_v2/images/google.png" /></a>-->
                </div>
            </div>
        </div>
    </div>
    </div>
    <div class="footer-secondary">
      <div class="container">
        <p class="copy">2021 © Durafest. All rights reserved
            <!-- <span>Website door <a href="https://www.mtea.be" target="_blank">Mtea</a></span> -->
        </p>
      </div>
    </div>
</section>