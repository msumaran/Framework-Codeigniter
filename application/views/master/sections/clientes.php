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
                        <label for="name" class="col-sm-2 control-label">Seleccionar imagen</label>
                        <div class="col-sm-9">
                            <input type="file" id="fileInput" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label"></label>
                        <div class="col-sm-9">
                            <div class="cropArea">
                                <ui-cropper area-type="rectangle" aspect-ratio="1.7" result-image-size='{w: 340,h: 200}' init-max-area="true" image="myImage" result-image="row.imagen"></ui-cropper>
                            </div>
                        </div>
                     </div>
                     <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Cropped Image:</label>
                        <div class="col-sm-9">
                            <img ng-src="{{row.imagen}}" />
                          
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="name" class="col-sm-2 control-label">Nombre</label>
                        <div class="col-sm-9">
                            <input type="text" name="name" ng-model="row.name" required class="form-control" /> 
                            <md-datepicker ng-model="row.myDate" md-placeholder="Enter date"></md-datepicker>
                            <div ng-messages="frm.name.$error"  ng-if='frm.name.$dirty' ng-cloak>
                                <div ng-message="required">Falta este campo</div>
                            </div>
                        </div>
                    </div> <!--  fin form group -->

                    <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">Web</label>
                        <div class="col-sm-9">
                            <date ng-model="row.fecha"></date>
                            <div ng-messages="frm.web.$error"  ng-if='frm.web.$dirty' ng-cloak>
                                <div ng-message="required">Falta este campo</div>
                            </div>
                        </div>
                    </div> <!--  fin form group -->

                    <div class="form-group">
                    <label for="name" class="col-sm-2 control-label">Descp</label>
                        <div class="col-sm-9">
                            <div ng-model="row.descp" editor></div>
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
                            <input id="archivo" data-path="clientes" ng-model="row.archivo" type="file" imageUpload name="archivo" />
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
