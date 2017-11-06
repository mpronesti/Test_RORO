var app = angular.module('corsiApp', ['ngDialog']);
app.config(['ngDialogProvider', function (ngDialogProvider) {
            ngDialogProvider.setDefaults({
                className: 'ngdialog-theme-default',
            });
        }]);
app.controller('corsiCtrl', function ( $scope, $rootScope, ngDialog, $timeout) {
           

            $scope.open = function () {
                
                ngDialog.open({ template: 'firstDialogId' });
            };

            $rootScope.$on('ngDialog.setPadding', function (event, padding)
            {
                angular.element( document.querySelector('.paddingHeader') ).css('padding-right', padding + 'px');
            });

        });