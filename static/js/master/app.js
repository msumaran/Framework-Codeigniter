'use strict';
/**
 * @ngdoc overview
 * @name newappApp
 * @description
 * # newappApp
 *
 * Main module of the application.
 */
var MakeApp = angular
  .module('newApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngMessages',
    'ngSanitize',
    'angularUtils.directives.dirPagination',
  ])
  .config(function ($routeProvider, $locationProvider) {
      $locationProvider.hashPrefix('');
      $routeProvider
        .when('/', {
            templateUrl: 'master/dashboard',
            controller: 'dashboardCtrl'
        })
        .when('/clientes', {
            templateUrl: 'master/sections/clientes',
            controller: 'clientesCtrl'
        })
        .otherwise({
            redirectTo: '/'
        });
    });

/************************
* 
* Directivas Formulario 
*
********************/




MakeApp.directive('date', ['$rootScope', '$http',
    function($http, $rootScope) {
        return {
            restrict: 'AE',
            require: 'ngModel',
            scope: {
                ngModel: '='
            },
            template: '<select class="form-control" ng-model="ngModel">' +
                    '<option ng-value="{{key}}" ng-repeat="(key, value) in items">{{value}}</option></select>',

            controller: ['$scope','$http','$attrs', function (scope,$http,attrs) {
                
                $http({method: 'GET', url:'master_api/get_all/'+attrs.model }).then(function (result) {
                    scope.items = {};
                    scope.model_scope = attrs.ngModel;
                    angular.forEach(result.data.data, function(row) {
                           
                            scope.items[ row[attrs.id] ] = row[attrs.value];

                    }); 
                    console.log(scope.items);
                });

            }]
        };
    }
]);



MakeApp.directive('editor', ['$rootScope', '$http',
    function($http, $rootScope) {
        return {
            restrict: 'A',
            require: 'ngModel',
            link: function(scope, element, attrs, ngModel) {
                
                $(element).summernote(); 

            }
        };
    }
]);



MakeApp.directive('imageupload', ['$rootScope',
    function($rootScope) {
        return {
            restrict: 'A',
            require: 'ngModel',

            link: function(scope, element, attrs, ngModel) {
                var value = "archivo";

                console.log(value);
                    $(element).uploadifive({
                        'auto'             : true,
                        'uploadScript'     : 'master_api/upload_image?path='+attrs.path,
                        'fileType'     : ['image/jpeg','image/png','image/gif','image/jpg'],
                        'onUploadComplete' : function(file, data) { 
                            data = JSON.parse(data);
                            console.log(data);
                            ngModel.$setViewValue(data.file_name);
                            ngModel.$render();
                            console.log(ngModel);
                        }
                    });


            }
        };
    }
]);

MakeApp.directive('combo', ['$rootScope', '$http',
    function($http, $rootScope) {
        return {
            restrict: 'AE',
            require: 'ngModel',
            scope: {
                ngModel: '='
            },
            template: '<select class="form-control" ng-model="ngModel">' +
                    '<option ng-value="{{key}}" ng-repeat="(key, value) in items">{{value}}</option></select>',

            controller: ['$scope','$http','$attrs', function (scope,$http,attrs) {
                
                $http({method: 'GET', url:'master_api/get_all/'+attrs.model }).then(function (result) {
                    scope.items = {};
                    scope.model_scope = attrs.ngModel;
                    angular.forEach(result.data.data, function(row) {
                           
                            scope.items[ row[attrs.id] ] = row[attrs.value];

                    }); 
                    console.log(scope.items);
                });

            }]
        };
    }
]);

