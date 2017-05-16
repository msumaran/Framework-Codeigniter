<?php

    $this->load->view('master/templates/header');
    $this->load->view('master/templates/sidebar');
?>

<div class="main-content">
                
                <div class="topbar">
                    <div class="header-left">
                        <div class="topnav">
                            <a class="menutoggle" href="#" data-toggle="sidebar-collapsed"><span class="menu__handle"><span>Menu</span></span></a>
                        </div>
                    </div>
                    <div class="header-right">
                        <ul class="header-menu nav navbar-nav">
                            
                            <li class="dropdown" id="user-header">
                                <a href="#" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <img src="http://nativosdigitales.pe/dist/images/obj/fran.png" alt="user image">
                                <span class="username">Hola, <?php echo $this->m_control->nombres; ?></span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a data-target="#"  ng-click="createheader('clientes')"><i class="icon-user"></i><span>Agregar prospecto</span></a>
                                    </li>
                                    <li>
                                        <a data-target="salir" href="control/salir"><i class="icon-logout"></i><span>Logout</span></a>
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