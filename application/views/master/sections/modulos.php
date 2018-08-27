<div>
    <div class="header">
        <h2>{{name_controller}}</h2>
        
        <div class="breadcrumb-wrapper">
            <ol class="breadcrumb">
                <li>
                    <a href="master/#">Home</a>
                </li>
                <li>
                    <a href="master/#{{model}}">{{name_controller}}</a>
                </li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 portlets">
            <div class="panel">
                <div class="panel-header panel-controls">

                    <h3><i class="fa fa-table"></i> <strong>Lista de</strong> {{name_controller}} <small> ({{total}})</small></h3>

                   
                        <div class="control-btn">
                           <a href="#" ng-click="fetchContent()" class="panel-reload hidden"><i class="icon-reload"></i></a>
                           <a href="#" class="panel-maximize hidden"><i class="icon-size-fullscreen"></i></a>
                           <a href="#" class="panel-toggle closed"><i class="fa fa-angle-down"></i></a>
                        </div>
                </div>
                <div class="panel-content">
                    <!--<p>Lista de eventos</p>-->
                    <div class="m-b-20">
                        <div class="btn-group">
                              <button class="btn btn-sm btn-dark" ng-click="create()"><i class="fa fa-plus"></i> Agregar</button>
                              
                        </div>
                    </div>

                    <div class="m-b-20">
                        <div class="form-group text-right">
                              <input type="text" name="q" ng-model="q" value="" />
                              <button class="btn btn-sm btn-dark" ng-click="search()"><i class="fa fa-search"></i> Buscar</button>
                        </div>
                    </div>


                    <table class="table table-hover dataTable">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Cliente</th>
                                <th>Icono</th>
                                <th>Height</th>
                                <th>Orden</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr dir-paginate="val in result | itemsPerPage: PerPage" total-items="total" current-page="pagination.current">
                                <td>{{val.name}}</td> 
                                <td>{{val.cliente}}</td> 
                                <td><i class="{{val.icono}}"></i></td> 
                                <td>{{val.heightiframe}}</td> 
                                <td>{{val.orden}}</td> 
                                <td>
                                    <a class="btn btn-default btn-xs" ng-click="editar( val.id )" href="javascript:;" >
                                        <i class="fas fa-pencil-alt"></i>
                                    </a>
                                    <a class="btn btn-danger btn-xs" ng-click="borrar( val.id )" href="javascript:;" >
                                        <i class="fas fa-trash-alt"></i>
                                    </a>
                                </td> 
                        </tr>

                        </tbody>
                    </table>
                    <dir-pagination-controls on-page-change="pageChanged(newPageNumber)"></dir-pagination-controls>
                    
                    </div>

                </div>
            </div>
        </div>
    </div>


<!-- Aca va el form -->
<div id="modalprompt{{model}}" tabindex="-1" role="dialog" aria-labelledby="modal-login-label" aria-hidden="true"' class="modal fade full">
    <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header"> 
            <button type="button" data-dismiss="modal" aria-hidden="true" class="close">×</button>
            <h4 id="modal-login-label" class="modal-title">{{name_controller}}</h4>
        </div> <!--  Fin modal Header -->
        <div class="modal-body">
                <div class="form">
                <form class="form-horizontal" ng-submit="submit_app()" name="frm">
                    

                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Nombre</label>
                        <div class="col-sm-9">
                            <input type="text" name="name" ng-model="row.name" required class="form-control" /> 
                           
                            <div ng-messages="frm.name.$error"  ng-if='frm.name.$dirty' ng-cloak>
                                <div ng-message="required">Falta este campo</div>
                            </div>
                        </div>
                    </div> <!--  fin form group -->


                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Cliente</label>
                        <div class="col-sm-9">
                            <combo ng-model="row.clientes_id" data-model="clientes" data-value="name" data-id='id'></combo>
                           
                          
                        </div>
                    </div> <!--  fin form group -->



                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Iframe</label>
                        <div class="col-sm-9">
                            <input type="text" name="iframe" ng-model="row.iframe" required class="form-control" /> 
                           
                            <div ng-messages="frm.iframe.$error"  ng-if='frm.iframe.$dirty' ng-cloak>
                                <div ng-message="required">Falta este campo</div>
                            </div>
                        </div>
                    </div> <!--  fin form group -->


                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Height Iframe</label>
                        <div class="col-sm-9">
                            <input type="text" name="heightiframe" ng-model="row.heightiframe" required class="form-control" /> 
                           
                            <div ng-messages="frm.heightiframe.$error"  ng-if='frm.heightiframe.$dirty' ng-cloak>
                                <div ng-message="required">Falta este campo</div>
                            </div>
                        </div>
                    </div> <!--  fin form group -->


                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Icono (Font Awesome)</label>
                        <div class="col-sm-9">
                            <input type="text" name="icono" ng-model="row.icono" required class="form-control" /> 
                           
                            <div ng-messages="frm.icono.$error"  ng-if='frm.icono.$dirty' ng-cloak>
                                <div ng-message="required">Falta este campo</div>
                            </div>
                        </div>
                    </div> <!--  fin form group -->


                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Orden</label>
                        <div class="col-sm-9">
                            <input type="text" name="orden" ng-model="row.orden" required class="form-control" /> 
                           
                            <div ng-messages="frm.orden.$error"  ng-if='frm.orden.$dirty' ng-cloak>
                                <div ng-message="required">Falta este campo</div>
                            </div>
                        </div>
                    </div> <!--  fin form group -->



                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-9">
                            <input type="submit" ng-disabled="frm.$invalid" value="Guardar" class="btn sendbtn btn-primary" /> 
                        </div>
                    </div> <!--  fin form group -->
                </form>
                </div><!--  fin form -->
        </div> <!--  fin modal body -->
    </div>
</div>
</div>

  <style>
    .cropArea {
      background: #E4E4E4;
      overflow: hidden;
      width:500px;
      height:350px;
    }
  </style>
  
    <?php $this->load->view('master/templates/footer_int'); ?>
</div>
