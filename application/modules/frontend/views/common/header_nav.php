 <nav class="navbar navbar-expand-md navbar-light profi">
            <a class="navbar-brand" href="#"><img src="<?php echo base_url(); ?>assets/front/images/logo.png" alt="logo"></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link <?= isset($active_home)?$active_home:'' ?>" href="<?php echo base_url(); ?>">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <?= isset($active)?$active:'' ?>" href="#">Aanbod</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link <?= isset($active)?$active:'' ?>" href="#">Missie</a>
                    </li>    
                    <!--<li class="nav-item">
                        <a class="nav-link <?= isset($active)?$active:'' ?>" href="#">Referenties</a>
                    </li>-->
                    <li class="nav-item">
                        <a class="nav-link <?= isset($active)?$active:'' ?>" href="#">Over ons</a>
                    </li> 
                    <li class="nav-item">
                        <a class="nav-link <?= isset($active_contact)?$active_contact:'' ?>" href="<?php echo base_url(); ?>contact">Contact</a>
                    </li> 
                </ul>

                <ul class="navbar-nav ml-auto">
                    <li><img src="<?php echo base_url(); ?>assets/front/images/power.png" alt=""></li>
                    <li><a href="<?php echo base_url(); ?>login"><button type="button" class="btn btn-primary anmmbt">Aanmelden</button></a></li>
                </ul>
            </div>  
        </nav>