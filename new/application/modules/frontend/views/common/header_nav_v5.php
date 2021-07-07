<section id="header_holder">
    <div id="header">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-lg-2">
                    <div class="logo">
                        <a class="navbar-brand" href="<?php echo base_url(); ?>">
                            <!--<img src="<?php echo base_url(); ?>assets/front_v2/images/logo.png" />-->
                            <img src="<?php echo base_url(); ?>assets/logo.png"  alt="logo">
                        </a>
                    </div>  
                </div>
                <div class="col-sm-12 col-lg-6">
                    <nav>
                        <?php $get_menu = get_menu('1'); // print_r($get_menu); ?>
                        <ul>
                            <?php foreach ($get_menu as $row) { ?>
                            <li class="<?php echo uri_string()==$row->page_url?'active':''; ?>">
                                    <a href="<?php echo base_url(); ?><?php echo $row->page_url; ?>"><?php echo $row->page_name; ?></a>
                                </li>
                            <?php } ?>
                        </ul>
                    </nav>
                </div>
                <div class="col-sm-12 col-lg-4">
                    <a href="<?php echo base_url(); ?>login" class="aame">AAnmelden</a>
                    <div class="phone">
                        <img src="<?php echo base_url(); ?>assets/front_v2/images/phone.png" />
                        <p class="call">Bel ons nu:<br />
                            <span>+32 472 985 637</span></p>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>