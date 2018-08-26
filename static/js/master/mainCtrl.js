angular.module('newApp').controller('mainCtrl', ['$scope', 'applicationService', '$location','$http',
    function($scope, applicationService, $location,$http) {
        $(document).ready(function() {
            applicationService.init();
            //quickViewService.init();
           // builderService.init();
            //pluginsService.init();
        });
        $scope.id = 0;
        $scope.iframe = 'master/loading';
        $scope.$on('$viewContentLoaded', function() {
            //pluginsService.init();
            applicationService.customScroll();
            applicationService.handlePanelAction();
            $('.nav.nav-sidebar .nav-active').removeClass('nav-active active');
            $('.nav.nav-sidebar .active:not(.nav-parent)').closest('.nav-parent').addClass('nav-active active');
            if ($location.$$path == '/' || $location.$$path == '/layout-api') {
                $('.nav.nav-sidebar .nav-parent').removeClass('nav-active active');
                $('.nav.nav-sidebar .nav-parent .children').removeClass('nav-active active');
                if ($('body').hasClass('sidebar-collapsed') && !$('body').hasClass('sidebar-hover')) return;
                if ($('body').hasClass('submenu-hover')) return;
                $('.nav.nav-sidebar .nav-parent .children').slideUp(200);
                $('.nav-sidebar .arrow').removeClass('active');
            }
            if ($location.$$path == '/') {
                $('body').addClass('dashboard');
            } else {
                $('body').removeClass('dashboard');
            }
        });
        $scope.isActive = function(id) {
            return id === $scope.id;
        };

        $scope.menu = function(id){
            $scope.id = id;
            $scope.iframeload = false;
            $http.get('master_api/get_id/menus/' + id).then(function(result) {
                
                $scope.iframe = result.data.iframe;
            });

        };
        $scope.collapsedSidebar = function(){

            applicationService.collapsedSidebar();
        };


    }
]);