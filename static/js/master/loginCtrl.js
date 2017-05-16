angular.module('newApp').controller('loginCtrl', ['$scope', '$location', '$http', 
    function($scope, $location, $http) {
        $scope.row = {};
        $scope.error = '';
        $scope.logear = function(){
            $scope.error = '';
            $http.post('control/auth/', $scope.row).then(function(result){
              

                if( result.data.login){
                      window.location.href='master/#/';
                }else{  
                    $scope.error = result.data.error;   

                }

            }, function errorCallback(response) {
               
                alert('Hubo un error!');


            }); 
        }
    }
]);