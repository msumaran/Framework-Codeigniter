<div>
    <div class="header">
        <h2>{{name_controller}}</h2>
        
        <div class="breadcrumb-wrapper">
            <ol class="breadcrumb">
                <li>
                    <a href="admin/#">Home</a>
                </li>
                <li>
                    <a href="admin/#{{model}}">{{name_controller}}</a>
                </li>
            </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12 portlets">
            <div class="panel">
                <div class="panel-header panel-controls">
                    <h3><i class="fa fa-table"></i> <strong>Lista de</strong> {{name_controller}} <small> ({{total}})</small></h3>
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


                    <table class="table table-hover dataTable" id="table-prospectos">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Creado</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>
                        <tbody>
                        <tr dir-paginate="val in result | itemsPerPage: PerPage" total-items="total" current-page="pagination.current">
                                <td>{{val.name}}</td> 
                                <td>{{val.created_at | date:'dd/MM/yy h:mm a'}}</td> 
                                <td>
                                    <a class="btn btn-default btn-xs" ng-click="editar( val.id )" href="javascript:;" >
                                        <i class="fa fa-pencil"></i>
                                    </a>
                                    <a class="btn btn-danger btn-xs" ng-click="borrar( val.id )" href="javascript:;" >
                                        <i class="fa fa-trash-o"></i>
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
<div id="modalprompt{{model}}" tabindex="-1" role="dialog" aria-labelledby="modal-login-label" aria-hidden="true"' class="modal fade">

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
                    <label for="name" class="col-sm-2 control-label">Web</label>
                        <div class="col-sm-9">
                            <input type="text" name="web" ng-model="row.web" required class="form-control" />
                            <div ng-messages="frm.web.$error"  ng-if='frm.web.$dirty' ng-cloak>
                                <div ng-message="required">Falta este campo</div>
                            </div>
                        </div>
                    </div> <!--  fin form group -->


                    <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">Giro</label>
                        <div class="col-sm-9">
                            <combo ng-model="row.giros_id" data-model="giros" data-value="name" data-id='id'></combo>
                        </div>
                    </div> <!--  fin form group -->


                    <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">Archivo</label>
                        <div class="col-sm-9">
                            <input id="archivo" ng-model="row.archivo" type="file" image-uploadifive name="archivo" />
                            <div id="queue_archivo"></div>
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
</divw>


    <?php $this->load->view('master/templates/footer_int'); ?>
</div>
