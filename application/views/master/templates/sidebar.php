
            <div class="sidebar">
                <div class="logopanel">
                    <h1>
                        <a href="master/#/"><img src="static/img/nativos-iso.svg" alt="" /></a>
                    </h1>
                </div>
                <div class="sidebar-inner">
                    <div class="sidebar-top">
                        <!---
                        <form action="" method="post" class="searchform" id="search-results">
                            <input type="text" class="form-control" name="keyword" placeholder="Buscar...">
                        </form>
                    -->
                        <div class="userlogged clearfix">
                            <i class="icons-faces-users-03 icons"></i>
                            <div class="user-details">
                                <h4><?php echo $this->m_control->nombres; ?></h4>
                                
                            </div>
                        </div>
                    </div>
                    <?php

                        if( $this->m_control->level != 'admin'){
                    ?>
                    <ul class="nav nav-sidebar">
                        <li ng-class="{ active  : isActive(0)}"><a href="javascript:;" ng-click="menu(0)"><i class="fa fa-home"></i><span>Inicio</span></a></li>
                        <?php

                            foreach ($menus as $row) {
                             echo '<li ng-class="{ active  : isActive('.$row->id.')}">
                                <a href="javascript:;" ng-click="menu('.$row->id.')" ><i class="fa '.$row->icono.'"></i><span>'.$row->name.'</span></a>
                                </li>';
                            }
                        ?>
                    </ul>
                    <?php
                        }else{
                    ?>
                    <ul class="nav nav-sidebar">
                        <li ng-class="{ active  : isActive('/')}"><a href="master/#/"><i class="icon-home"></i><span>Inicio</span></a></li>
                        <?php

                            foreach ($menus as $row) {
                             echo '<li ng-class="{ active  : isActive(\'/'.$row->modulo.'\')}"><a href="master/#/'.$row->modulo.'"><i class="fa '.$row->icono.'"></i><span>'.$row->name.'</span></a></li>';
                            }
                        ?>
                    </ul>
                     <?php
                        }
                    ?>
                    <div class="sidebar-footer clearfix">
                       
                        <a class="pull-left toggle_fullscreen" data-target="#" data-rel="tooltip" data-placement="top" data-original-title="Fullscreen">
                        <i class="icon-size-fullscreen"></i>
                        </a>
                        <a class="pull-left btn-effect" href="control/salir" data-modal="modal-1" data-rel="tooltip" data-placement="top" data-original-title="Logout">
                        <i class="icon-power"></i>

                        </a>
                    </div>
                </div>
            </div>
