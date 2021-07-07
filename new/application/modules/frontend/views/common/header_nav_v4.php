<?php // echo '<pre>'; print_r($this->session->userdata()); die; ?>
<nav class="navbar navbar-expand-md navbar-light profi header">
    <a class="navbar-brand" href="<?php echo base_url(); ?>"><img  src="<?php echo base_url(); ?>assets/logo.jpg" height="56px" alt="logo"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav">
            <?php $get_menu=get_menu('2'); // print_r($get_menu); ?>
             <?php  foreach ($get_menu as $row){?>
            <li class="nav-item <?php echo uri_string()==$row->page_url?'active':''; ?>">
                <a class="nav-link" href="<?php echo base_url(); ?><?php echo $row->page_url; ?>"><?php echo $row->page_name; ?></a>
            </li>
            <?php } ?>
<!--            <li class="nav-item">
                <a class="nav-link <?= $this->uri->segment(2) == 'products' ? 'active' : '' ?>" href="<?php echo base_url(); ?>user/products">Bekers huren</a>
            </li>    
            <li class="nav-item">
                <a class="nav-link <?= isset($active_mijievenementen) ? $active_mijievenementen : '' ?>" href="<?php echo base_url(); ?>user/mijievenementen">Mijn evenementen</a>
            </li> 
            <li class="nav-item">
                <a class="nav-link <?= $this->uri->segment(2) == 'aanbeve' ? 'active' : '' ?> " href="<?php echo base_url(); ?>user/aanbeve">Aanbevelingen</a>
            </li>
            <li class="nav-item">
                <a class="nav-link <?= isset($active_inbox) ? $active_inbox : '' ?>" href="<?php echo base_url(); ?>user/inbox">Inbox</a>
            </li> -->
        </ul>

        <!--        <ul class="navbar-nav ml-auto">
                    <li><img src="<?php echo base_url(); ?>assets/front/images/power.png" alt=""></li>
                    <li><img src="<?php echo base_url(); ?>assets/front/images/img_4.jpg" alt="" class="st"></li>
                    <li>De Lustige vissers</li>
                    <li><i class="fa fa-user-circle-o" aria-hidden="true"></i>
                    </li>
                </ul>-->
        <ul class="mynewmenu navbar-nav ml-auto dropdown show">
            <li><img src="<?php echo base_url(); ?>assets/front/images/power.png" alt=""></li>
            <li class="stad"><?= $this->session->userdata('USER_TYPE_NAME') ? $this->session->userdata('USER_TYPE_NAME') : 'Welcome' ?></li>
            <li><a href="#" class="user dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown">
                    <!--<i class="fa fa-user-circle-o" aria-hidden="true"></i>-->
                    <?php

                    if ($this->session->userdata('USER_IMAGE') != '') {
                        ?>
                        <img src="<?php echo base_url(); ?>uploads/users/<?php echo $this->session->userdata('USER_IMAGE'); ?>" alt="" class="user_heaser ">
                    <?php } else { ?>
                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                    <?php } ?>
                </a>

                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="<?php echo base_url(); ?>user/associationprofile">Profile</a>
                    <a class="dropdown-item" href="<?php echo base_url(); ?>logout">Logout</a>
                    <!--                        <a class="dropdown-item" href="#">Another action</a>
                                            <a class="dropdown-item" href="#">Something else here</a>-->
                </div>  

                </a>
            </li>
        </ul>
    </div>  
</nav>