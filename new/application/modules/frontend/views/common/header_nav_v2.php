<?php //echo '<pre>';     print_r($this->session->userdata()); die; ?>

<nav class="navbar navbar-expand-lg navbar-light profi header">
    <a class="navbar-brand" href="<?php echo base_url(); ?>">
        <!--<img src="<?php echo base_url(); ?>assets/front/images/logo.png" alt="logo">-->
        <img  src="<?php echo base_url(); ?>assets/logo.jpg" height="56px" alt="logo">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <?php $get_menu=get_menu('3'); // print_r($get_menu); ?>
    <div class="collapse navbar-collapse" id="collapsibleNavbar">
        <ul class="navbar-nav dashboard-menu">
            <?php  foreach ($get_menu as $row){?>
            <li class="nav-item <?php echo uri_string()==$row->page_url?'active':''; ?>">
                <a class="nav-link " href="<?php echo base_url(); ?><?php echo $row->page_url; ?>"><?php echo $row->page_name; ?></a>
            </li>
            <?php } ?>
        </ul>
        <ul class="mynewmenu navbar-nav ml-auto dropdown show">
            <!-- <li><img src="<?php echo base_url(); ?>assets/front/images/power.png" alt=""></li> -->
            <li class="stad"><?= $this->session->userdata('USER_CITY_NAME')?$this->session->userdata('USER_CITY_NAME'):'Welcome' ?></li>
            <li><a href="#" class="user dropdown-toggle" id="dropdownMenuLink" data-toggle="dropdown">
                    <!--<i class="fa fa-user-circle-o" aria-hidden="true"></i>-->
                    <?php
                    //var_dump($this->session->userdata()); die;
                    if ($this->session->userdata('USER_IMAGE') != '') {
                        ?>
                        <img src="<?php echo base_url(); ?>uploads/users/<?php echo $this->session->userdata('USER_IMAGE'); ?>" alt="" class="user_heaser ">
                    <?php } else { ?>
                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                    <?php } ?>
                </a>

                <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="<?php echo base_url(); ?>user/cityprofile">Profile</a>
                    <a class="dropdown-item" href="<?php echo base_url(); ?>logout">Logout</a>
                </div>  

                </a>
            </li>
        </ul>
    </div>  
</nav>
