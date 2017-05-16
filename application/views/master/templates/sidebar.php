
            <div class="sidebar">
                <div class="logopanel">
                    <h1>
                        <a href="master/#/"></a>
                    </h1>
                </div>
                <div class="sidebar-inner">
                    <div class="sidebar-top">
                        <form action="search-result.html" method="post" class="searchform" id="search-results">
                            <input type="text" class="form-control" name="keyword" placeholder="Buscar...">
                        </form>
                        <div class="userlogged clearfix">
                            <i class="icons-faces-users-01 icons"></i>
                            <div class="user-details">
                                <h4><?php echo $this->m_control->nombres; ?></h4>
                                
                            </div>
                        </div>
                    </div>
                
                    <ul class="nav nav-sidebar">
                        <li ng-class="{ active  : isActive('/')}"><a href="master/#/"><i class="fa fa-home"></i><span>Inicio</span></a></li>
                        <?php

                            foreach ($menus as $row) {
                             echo '<li ng-class="{ active  : isActive(\'/'.$row->modulo.'\')}"><a href="master/#/'.$row->modulo.'"><i class="fa '.$row->icono.'"></i><span>'.$row->name.'</span></a></li>';
                            }
                        ?>
                    </ul>
                    <div class="sidebar-footer clearfix">
                       
                        <a class="pull-left toggle_fullscreen" data-target="#" data-rel="tooltip" data-placement="top" data-original-title="Fullscreen">
                        <i class="icon-size-fullscreen"></i>
                        </a>
                        <a class="pull-left btn-effect" href="salir" data-modal="modal-1" data-rel="tooltip" data-placement="top" data-original-title="Logout">
                        <i class="icon-power"></i>

                        </a>
                    </div>
                </div>
            </div>
