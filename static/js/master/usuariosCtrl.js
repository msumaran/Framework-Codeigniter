'use strict';
/******************************************************************** 
 * 
 * exploracion CTRL
 *
 ********************************************************************/
angular.module('newApp').controller('usuariosCtrl', ['$scope', 'applicationService', '$http', '$location', '$route', '$window', '$timeout',
    function($scope, applicationService, $http, $location, $route, $window, $timeout) {

        // Pagination
        $scope.PerPage = 25;
        $scope.page = 1;
        $scope.total = 0;
        // Fin Pagination
        $scope.q = '';
        $scope.row = {};
        $scope.model = 'usuarios';
        $scope.get = '';

        $scope.name_controller = 'Usuarios';
        angular.$locationat = $location;
        angular.$routeat = $route;

        // Otros models
        $scope.id = 0;
     

        $scope.create = function() {
            $scope.row = {};
            $scope.id = 0;
            $scope.get = '';
            $("#comboclientes").select2();
            $timeout(function(){
                $('#comboclientes').val(0).trigger('change');
            });
            applicationService.create_app($scope);
        };

        $scope.pagination = {
            current: 1
        };

        $scope.search = function() {
            $scope.page = 1;
            $scope.get = '?q=' + $scope.q;
            $scope.fetchContent();
        };

        $scope.pageChanged = function(newPage) {
            $scope.page = newPage;
            $scope.fetchContent();
        };
        $scope.editar = function(id) {
            $scope.id = id;
            $scope.row = {};
            $scope.get = '';
            $http.get('master_api/get_id/' + $scope.model + '/' + $scope.id).then(function(result) {
                $scope.row = result.data;
               //$("#comboclientes").select2().val(result.data.clientes_id).trigger("change");
                $scope.row.passwd = '';
               $("#comboclientes").select2();
               $timeout(function(){
                $('#comboclientes').val(result.data.clientes_id).trigger('change');
               });
                applicationService.create_app($scope);
            });
        };
        $scope.borrar = function(id) {
            $scope.id = id;
            if (confirm("Seguro?")) {
                $http.get('master_api/del/' + $scope.model + '/' + $scope.id).then(function(result) {
                    $scope.fetchContent();
                });
            }
        };
        $scope.fetchContent = function() {
            $scope.result = [];
            $http.get('master_api/get/' + $scope.model + '/' + $scope.page + $scope.get).then(function(result) {
                var resultado = []; // my object
                if (result.data.data != undefined) {
                    $scope.total = result.data.total;

                    $.each(result.data.data, function(key, data) {
                        data.orden = parseInt(data.orden);
                        
                        resultado.push(data);
                    });

                }
                $scope.result = resultado;
            });
        };
        // Nuevas funcionalidades
        $scope.vercliente = function(id) {

            angular.$locationat.path('/verclientes/' + id).search('id=' + id);
            angular.$routeat.reload();
        };
        $scope.contacto = function(id) {
            $scope.id = id;
            if (confirm("Seguro de poner a contacto?")) {
                $http.get('master_api/contacto/' + $scope.id).then(function(result) {
                    $scope.fetchContent();
                });
            }
        };
        $scope.descargar = function() {
            $window.open('master_api/get_exploracion/0/true' + $scope.get, '_blank');
        };
        $scope.cambiar = function(id) {
            $("#modal_estado_prospectos").modal('show');
            $scope.id = id;
        };


        $scope.fetchContent();
   
    }
]);
