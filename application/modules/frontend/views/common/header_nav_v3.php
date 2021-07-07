<nav class="navbar navbar-expand-md navbar-light profi">
  <a class="navbar-brand" href="<?php echo base_url(); ?>"><img src="<?php echo base_url(); ?>assets/front/images/logo.png" alt="logo"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="collapsibleNavbar">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url(); ?>">Home</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="stadboommijidashboard.html">Dashboard</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="stadboombekershuren.html">Bekers huren</a>
      </li>    
       <li class="nav-item">
        <a class="nav-link" href="stadboombekerreinigen.html">Bekers reinigen</a>
      </li> 
       <li class="nav-item">
        <a class="nav-link <?= isset($active_vereniging)?$active_vereniging:'' ?>" href="<?php echo base_url(); ?>user/vereniging">Verenigingen</a>
      </li> 
      <li class="nav-item">
        <a class="nav-link <?= isset($active_inbox)?$active_inbox:'' ?>" href="<?php echo base_url(); ?>user/inbox">Inbox</a>
      </li> 
      
      <li class="nav-item">
        <a class="nav-link" href="#"><i class="fa fa-search" aria-hidden="true"></i>
</a>
      </li> 
    </ul>
    
    <ul class="navbar-nav ml-auto">
      <li><img src="<?php echo base_url(); ?>assets/front/images/power.png" alt=""></li>
      <li><img src="<?php echo base_url(); ?>assets/front/images/img_4.jpg" alt="" class="st"></li>
      <li><i class="fa fa-user-circle-o" aria-hidden="true"></i>
</li>
    </ul>
  </div>  
</nav>