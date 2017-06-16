'use strict';
/******************************************************************** 
* 
* exploracion CTRL
*
********************************************************************/
angular.module('newApp').controller('girosCtrl',
    ['$scope', 'applicationService', '$http', '$location','$route', '$window',
    function ($scope, applicationService, $http, $location, $route, $window) {
        
        // Pagination
        $scope.PerPage = 25;
        $scope.page = 1;
        $scope.total = 0;
        // Fin Pagination
        $scope.q = '';
        $scope.row = {};
        $scope.model = 'clientes';
        $scope.get = '';
        
        $scope.name_controller = 'Exploración';
        angular.$locationat = $location; 
        angular.$routeat = $route;

        // Otros models
        $scope.id = 0;
        $scope.tipo_inbound ='exploración';

        // Crop Image
        $scope.myImage='';
        $scope.myCroppedImage='';

        var handleFileSelect=function(evt) {
          var file=evt.currentTarget.files[0];
          var reader = new FileReader();
          reader.onload = function (evt) {
            $scope.$apply(function($scope){
              $scope.myImage=evt.target.result;
            });
          };
          reader.readAsDataURL(file);
        };
        angular.element(document.querySelector('#fileInput')).on('change',handleFileSelect);

        
        
        $scope.create = function(){
          $scope.row = {};
          $scope.id = '';
          applicationService.create_app( $scope );     
        };

        $scope.pagination = {
            current: 1
        };

        $scope.search = function(){
            $scope.page = 1;
            $scope.get = '?q='+$scope.q;
            $scope.fetchContent();
        };

        $scope.pageChanged = function(newPage) {
            $scope.page = newPage;
            $scope.fetchContent();
        };
         $scope.editar = function(id){
          $scope.id = id;
          $scope.row = {};
          $http.get('master_api/get_id/'+$scope.model+'/'+$scope.id).then(function(result){
                 $scope.row = result.data;
                 applicationService.create_app( $scope);
            });

         
        };
        $scope.borrar = function(id){
            $scope.id = id;
            if (confirm("Seguro?")) {
                $http.get('master_api/del/'+$scope.model+'/'+$scope.id).then(function(result){
                    $scope.fetchContent();
                });
            }
        };
        $scope.fetchContent = function() {
            $scope.result = [];
            $http.get('master_api/get/'+$scope.model+'/'+$scope.page+$scope.get).then(function(result){
              var resultado = []; // my object
              if( result.data.data != undefined ){
                $scope.total = result.data.total;

                $.each(result.data.data, function (key, data) {
                   
                    resultado.push(data);
                });
                
              }
              $scope.result = resultado;
            });
        };

        // Nuevas funcionalidades
        $scope.vercliente = function(id){

            angular.$locationat.path('/verclientes/'+id).search('id='+id);
            angular.$routeat.reload();
        };
        $scope.contacto = function(id){
            $scope.id = id;
            if (confirm("Seguro de poner a contacto?")) {
                $http.get('master_api/contacto/'+$scope.id).then(function(result){
                    $scope.fetchContent();
                });
            }
        };
        $scope.descargar = function(){
             $window.open('master_api/get_exploracion/0/true'+$scope.get, '_blank');
        };
        $scope.cambiar = function(id){
            $("#modal_estado_prospectos").modal('show');
            $scope.id = id;
        };
       


        //Fin nuevas funcionalidades
        
        $scope.fetchContent();
        $scope.$on('$viewContentLoaded', function() {
            $("input[name='web']").datepicker({
                format: 'dd/mm/yyyy',
                language: 'es'
            });
        });
}]);

