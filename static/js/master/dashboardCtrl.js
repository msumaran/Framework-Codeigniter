'use strict';

/**
 * @ngdoc function
 * @name newappApp.controller:MainCtrl
 * @description
 * # MainCtrl
 * Controller of the newappApp
 */
angular.module('newApp')
  .controller('dashboardCtrl', ['$scope',  function ($scope) {
      $scope.$on('$viewContentLoaded', function () {
        

          
      });

      $scope.activeTab = true;

  }]);
