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
        'uiCropper',
        'ngRoute',
        'ngMessages',
        'ngSanitize',
        'angularUtils.directives.dirPagination',
    ])
    .config(function($routeProvider, $locationProvider) {
        $locationProvider.hashPrefix('');
        $routeProvider
            .when('/', {
                templateUrl: 'master/dashboard',
                controller: 'dashboardCtrl'
            })
            .when('/modulos', {
                templateUrl: 'master/sections/modulos',
                controller: 'modulosCtrl'
            })
            .when('/categorias', {
                templateUrl: 'master/sections/categorias',
                controller: 'categoriasCtrl'
            })
            .when('/usuarios', {
                templateUrl: 'master/sections/usuarios',
                controller: 'usuariosCtrl'
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
            template: '<input type="text" name="fecha" ng-model="ngModel" required class="form-control input-sm" />',
            link: function(scope, element, attrs, ngModel) {

                scope.name = attrs.ngModel;
                $("input[name='fecha']").datepicker({
                    format: 'dd/mm/yyyy',
                    language: 'es'
                });


            }
        };
    }
]);

MakeApp.directive('editor', ['$rootScope', '$http',
    function($http, $rootScope) {
        return {
            restrict: 'A',
            require: 'ngModel',
            link: function(scope, element, attrs, ngModel) {
                ngModel.$render = function() {
                    if (ngModel.$viewValue !== undefined) {
                        $(element).summernote('restoreRange');
                        $(element).summernote('focus');
                        $(element).summernote('code', ngModel.$viewValue);
                    } else {
                        $(element).summernote('code', '');
                    }
                };
                $(element).summernote({
                    dialogsInBody: true,
                    onImageUpload: function(files, editor, welEditable) {
                        var data = new FormData();
                        data.append("Filedata", files[0]);
                        $.ajax({
                            data: data,
                            type: "POST",
                            url: 'master_api/upload_image',
                            cache: false,
                            contentType: false,
                            processData: false,
                            dataType: "json",
                            success: function(json) {
                                editor.insertImage(welEditable, json.url);
                            }
                        });
                    }
                });
                $(element).on('summernote.change', function(we, contents, $editable) {
                    ngModel.$setViewValue(contents);
                });
            }
        };
    }
]);


MakeApp.directive('fileupload', ['$rootScope',
    function($rootScope) {
        return {
            restrict: 'A',
            require: 'ngModel',

            link: function(scope, element, attrs, ngModel) {
                var value = "archivo";

                console.log(value);
                $(element).uploadifive({
                    'auto': true,
                    'uploadScript': 'master_api/upload_file?path=' + attrs.path,
                    'fileType': ['csv', 'pdf', 'xlsx', 'docx', 'xls', 'doc'],
                    'onUploadComplete': function(file, data) {
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
MakeApp.filter('trusted', ['$sce', function ($sce) {
    return function(url) {
        return $sce.trustAsResourceUrl(url);
    };
}]);
MakeApp.directive('imageupload', ['$rootScope',
    function($rootScope) {
        return {
            restrict: 'A',
            require: 'ngModel',

            link: function(scope, element, attrs, ngModel) {
                var value = "archivo";

                console.log(value);
                $(element).uploadifive({
                    'auto': true,
                    'uploadScript': 'master_api/upload_image?path=' + attrs.path,
                    'fileType': ['image/jpeg', 'image/png', 'image/gif', 'image/jpg'],
                    'onUploadComplete': function(file, data) {
                        data = JSON.parse(data);
                        ngModel.$setViewValue(data.file_name);
                        ngModel.$render();                    }
                });


            }
        };
    }
]);

MakeApp.directive('iframeOnload', [function(){
return {
    scope: {
        callBack: '&iframeOnload'
    },
    link: function(scope, element, attrs){
        element.on('load', function(){
            return scope.callBack();
        })
    }
}}]);


MakeApp.directive('combo', ['$rootScope', '$http',
    function($http, $rootScope) {
        return {
            restrict: 'AE',
            require: 'ngModel',
            scope: {
                ngModel: '='
            },
            template: '<select class="form-control" id="comboclientes" ng-model="ngModel">' +
                '<option ng-value="{{key}}" ng-repeat="(key, value) in items">{{value}}</option></select>',

            controller: ['$scope', '$http', '$attrs', function(scope, $http, attrs) {

                $http({ method: 'GET', url: 'master_api/get_all/' + attrs.model }).then(function(result) {
                    scope.items = {};
                    scope.model_scope = attrs.ngModel;
                    angular.forEach(result.data.data, function(row) {

                        scope.items[row[attrs.id]] = row[attrs.value];

                    });
                });

            }]
        };
    }
]);


MakeApp.directive('combo2', ['$rootScope', '$http',
    function($http, $rootScope) {
        return {
            restrict: 'AE',
            require: 'ngModel',
            scope: {
                ngModel: '='
            },
            template: '<select class="form-control" id="comboclientes" ng-model="ngModel">' +
                '<option value="">Ninguna</option>' +
                '<option ng-value="{{key}}" ng-repeat="(key, value) in items">{{value}}</option></select>',

            controller: ['$scope', '$http', '$attrs', function(scope, $http, attrs) {

                $http({ method: 'GET', url: 'master_api/get_all/' + attrs.model }).then(function(result) {
                    scope.items = {};
                    scope.model_scope = attrs.ngModel;
                    angular.forEach(result.data.data, function(row) {

                        scope.items[row[attrs.id]] = row[attrs.value];

                    });
                });

            }]
        };
    }
]);


