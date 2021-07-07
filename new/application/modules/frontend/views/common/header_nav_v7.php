<style>
    nav li a {
        padding: 18px 8px;
    }
    .call span {
        font-size: 13px;
        color: #10242b;
    }
    .call {
        font-size: 12px;
    }
    .aame{
        margin: 26px 0 0 0;
    }
    nav li a {
        padding: 18px 5px;
    }
    nav li  {
        font-size: 16px;
    }
    nav>ul{
        margin: 15px 25px 0 55px;
    }
    .aame {
    width: 80px;
    }

</style>
<section id="header_holder">
    <div id="header">
        <div class="container">
            <div class="row">
                <div class="col-sm-2">
                    <div class="logo">
                        <a href="#"><img src="<?php echo base_url(); ?>assets/front_v2/images/logo.png" /></a>
                    </div>  
                </div>
                <div class="col-sm-7.5">
                    <nav>

                        <ul>
                            <li >
                                <a class="" href="<?php echo base_url(); ?>">Home</a>
                            </li>
                            <li >
                                <a class=" <?= isset($active_dashboard) ? $active_dashboard : '' ?>" href="<?php echo base_url(); ?>user/mijidashboard">Dashboard</a>
                            </li>

                            <li >
                                <a class=" <?= isset($active_products) ? $active_products : '' ?>" href="<?php echo base_url(); ?>user/cityproducts">Bekers <br> huren</a>
                            </li>

                            <li >
                                <a class=" <?= isset($active_bekers) ? $active_bekers : '' ?>" href="<?php echo base_url(); ?>user/bekers">Bekers <br> reinigen</a>
                            </li>     
                            <li >
                                <a class=" <?= isset($active_vereniging) ? $active_vereniging : '' ?>" href="<?php echo base_url(); ?>user/vereniging">Verenigingen</a>
                            </li>

                            <li >
                                <a class=" <?= isset($active_products) ? $active_products : '' ?>" href="<?php echo base_url(); ?>user/cityevenementen">Mijn <br> evenementen</a>
                            </li>

                            <li >
                                <a class=" <?= isset($active_cityinbox) ? $active_cityinbox : '' ?>" href="<?php echo base_url(); ?>user/city_inbox">Inbox</a>
                            </li> 
                        </ul>
                    </nav>
                </div>
                <div class="col-sm-2.5">
                    <?php
                    if ($this->session->userdata('USER_ID') != '') {
                        ?>
                        <a href="<?php echo base_url(); ?>logout" class="aame">Logout</a>
                    <?php } else { ?>
                        <a href="<?php echo base_url(); ?>login" class="aame">AAnmelden</a>
                    <?php } ?>
                    <div class="phone">
                        <img src="<?php echo base_url(); ?>assets/front_v2/images/phone.png" />
                        <p class="call">Call us now<br />
                            <span>+32 472 985 637</span></p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>