<?php

    $this->load->view('master/templates/header');
    $this->load->view('master/templates/sidebar');
?>

<div class="main-content">
                
                <div class="topbar">
                    <div class="header-left">
                        <div class="topnav">
                            <a class="menutoggle" href="javascript:;"  ng-click="collapsedSidebar()"><span class="menu__handle"><span>Menu</span></span></a>
                        </div>
                    </div>
                    <div class="header-right">
                        <ul class="header-menu nav navbar-nav">
                            
                            <li class="dropdown" id="user-header">
                                <a href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <i class="icons-faces-users-03 icons"></i>
                                <span class="username">Hola, <?php echo $this->m_control->nombres; ?></span>
                                </a>
                                <ul class="dropdown-menu">
                                 
                                    <li>
                                        <a data-target="salir" href="control/salir"><i class="icon-logout"></i><span>Salir</span></a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
                <div ng-view class="at-view-slide-in-left page-content"  >
                </div>
            </div>
<?php

    $this->load->view('master/templates/footer');
?>