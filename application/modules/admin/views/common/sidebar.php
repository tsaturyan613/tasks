<div class="page-sidebar-wrapper">
    <div class="page-sidebar navbar-collapse collapse">
        <ul class="page-sidebar-menu page-header-fixed " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200" style="padding-top: 20px">
            <li class="sidebar-toggler-wrapper hide">
                <div class="sidebar-toggler"> <span></span> </div>
            </li>
            <li class="nav-item start <?php if ($this->uri->segment(2) == 'dashboard') { ?> active open <?php } ?>">
                <a href="<?php echo base_url(); ?>admin/dashboard" class="nav-link nav-toggle">
                    <i class="icon-home"></i>
                    <span class="title">Dashboard</span>
                    <span class="selected"></span>
                    <span class="arrow open"></span>
                </a>
            </li>
            <li class="nav-item <?php if ($this->uri->segment(2) == 'gemeenten_management') { ?> active open <?php } ?>">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-wrench"></i>
                    <span class="title">Beheer Gemeenten</span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item ">
                        <a href="<?php echo base_url(); ?>admin/gemeenten_management/all_gemeenten" class="nav-link <?php if ($this->uri->segment(3) == 'all_gemeenten') { ?> active open <?php } ?> ">
                            <!-- <span class="title">All Steden end Gemeenten</span> -->
                            <span class="title">Alle Steden en Gemeenten</span>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="<?php echo base_url(); ?>admin/gemeenten_management/all_super_city" class="nav-link <?php if ($this->uri->segment(3) == 'all_super_city') { ?> active open <?php } ?> ">
                            <span class="title">Alle Super City</span>
                        </a>
                    </li>
                    
                </ul>
            </li>
            
            <li class="nav-item <?php if ($this->uri->segment(2) == 'vereniging_management') { ?> active open <?php } ?>">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-wrench"></i>
                    <span class="title">Beheer Verenigingen </span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
<!--                    <li class="nav-item <?php if ($this->uri->segment(2) == 'vereniging_management') { ?> active open <?php } ?> ">
                        <a href="<?php echo base_url(); ?>admin/vereniging_management/all_vereniging" class="nav-link">
                            <span class="title">All Vereniging</span>
                        </a>
                    </li>-->
                    <li class="nav-item">
                        <a href="<?php echo base_url(); ?>admin/vereniging_management/all_vereniging_by_city" class="nav-link  <?php if ($this->uri->segment(3) == 'all_vereniging_by_city') { ?> active open <?php } ?> ">
                            <!-- <span class="title">All Vereniging by Steden </span> -->
                            <span class="title">Alle Verenigingen </span>
                        </a>
                    </li>
                </ul>
            </li>
            
            
            <li class="nav-item <?php if ($this->uri->segment(2) == 'product_management') { ?> active open <?php } ?>">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-wrench"></i>
                    <span class="title">Beheer Producten </span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/product_management/all_product" class="nav-link  <?php if ($this->uri->segment(3) == 'all_product') { ?> active open <?php } ?> ">
                            <span class="title">Alle Producten</span>
                        </a>
                    </li>
                    <li class="nav-item ">
                        <a href="<?php echo base_url(); ?>admin/product_management/order_page_product" class="nav-link  <?php if ($this->uri->segment(3) == 'order_page_product') { ?> active open <?php } ?> ">
                            <!-- <span class="title">Order Page Settings</span> -->
                            <span class="title">Extra's</span>
                        </a>
                    </li>
                </ul>
            </li>
            
             
            <li class="nav-item <?php if ($this->uri->segment(2) == 'order_management') { ?> active open <?php } ?>">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-wrench"></i>
                    <span class="title">Beheer bestellingen </span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/order_management/all_event" class="nav-link  <?php if ($this->uri->segment(3) == 'all_event') { ?> active open <?php } ?> ">
                            <span class="title">Alle events</span>
                        </a>
                    </li>
                    <!--<li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/order_management/all_wash_order" class="nav-link  <?php if ($this->uri->segment(3) == 'all_wash_order') { ?> active open <?php } ?> ">
                            <span class="title">All wash order</span>
                        </a>
                    </li>-->
                    
                </ul>
            </li>
             
            <li class="nav-item <?php if ($this->uri->segment(2) == 'cms_management') { ?> active open <?php } ?>">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-wrench"></i>
                    <span class="title">Beheer CMS </span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu">
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_index" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_index') { ?> active open <?php } ?> ">
                            <span class="title">Edit Home</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_aanbod" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_aanbod') { ?> active open <?php } ?> ">
                            <span class="title">Edit Aanbod</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_referenties" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_referenties') { ?> active open <?php } ?> ">
                            <span class="title">Edit Referenties</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_bio" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_bio') { ?> active open <?php } ?> ">
                            <span class="title">Edit Bio</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_missie" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_missie') { ?> active open <?php } ?> ">
                            <span class="title">Edit Missie</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_mijidashboard" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_mijidashboard') { ?> active open <?php } ?> ">
                            <span class="title">Edit Mijn dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_cityproducts" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_cityproducts') { ?> active open <?php } ?> ">
                            <span class="title">Edit City shop</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_bekers" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_bekers') { ?> active open <?php } ?> ">
                            <span class="title">Edit Bekers</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_vereniging" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_vereniging') { ?> active open <?php } ?> ">
                            <span class="title">Edit Vereniging</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_cityevenementen" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_cityevenementen') { ?> active open <?php } ?> ">
                            <span class="title">Edit City evenementen</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_city_inbox" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_city_inbox') { ?> active open <?php } ?> ">
                            <span class="title">Edit City inbox</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_products" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_products') { ?> active open <?php } ?> ">
                            <span class="title">Edit Vereniging shop</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_mijievenementen" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_mijievenementen') { ?> active open <?php } ?> ">
                            <span class="title">Edit mijn evenementen</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_inbox" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_inbox') { ?> active open <?php } ?> ">
                            <span class="title">Edit Inbox</span>
                        </a>
                    </li>
                    
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_contact" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_contact') { ?> active open <?php } ?> ">
                            <span class="title">Contactformmulierer</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/contact_request" class="nav-link  <?php if ($this->uri->segment(3) == 'contact_request') { ?> active open <?php } ?> ">
                            <span class="title">All Contact Request</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/all_pages" class="nav-link  <?php if ($this->uri->segment(3) == 'all_pages') { ?> active open <?php } ?> ">
                            <span class="title">Beheer pagina's</span>
                        </a>
                    </li>
                    <li class="nav-item  ">
                        <a href="<?php echo base_url(); ?>admin/cms_management/manage_menu" class="nav-link  <?php if ($this->uri->segment(3) == 'manage_menu') { ?> active open <?php } ?> ">
                            <span class="title">Beheer Menu</span>
                        </a>
                    </li>
                     <li class="nav-item">
                        <a href="<?php echo base_url(); ?>admin/cms_management/edit_recommendation" class="nav-link  <?php if ($this->uri->segment(3) == 'edit_recommendation') { ?> active open <?php } ?> ">
                            <span class="title">Edit Recommendation</span>
                        </a>
                    </li>
                    
                </ul>
            </li>
            <li class="nav-item">
                <a href="javascript:;" class="nav-link nav-toggle">
                    <i class="icon-wrench"></i>
                    <span class="title">Beheer inschrijvingen </span>
                    <span class="arrow"></span>
                </a>
                <ul class="sub-menu" style="display: none;">
                    <li class="nav-item">
                        <a href="<?php echo base_url(); ?>admin/admin/all_subscribed_emails" class="nav-link   ">
                            <!-- <span class="title">All Vereniging by Steden </span> -->
                            <span class="title">Inschrijvingen </span>
                        </a>
                    </li>
                </ul>
            </li>
           
        </ul>
        <!-- END SIDEBAR MENU -->
        <!-- END SIDEBAR MENU -->
    </div>
    <!-- END SIDEBAR -->
</div>