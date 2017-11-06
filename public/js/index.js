var app = angular.module('myApp', ['gilbox.sparkScroll']);

        

        app.controller('MainCtrl', function ( $scope, $rootScope, $timeout,sparkSetup) {

            sparkSetup.enableInvalidationInterval();
            sparkSetup.debug=true;

            

            

        });


        app.directive('resize', function ($window) {
    return function (scope, element) {
        var w = angular.element($window);
       

        w.bind('resize', function () {
            scope.$apply();
            // $window.location.reload();
        });

    }
})



        app.directive('scopeSvgReveal', function () {
            return {
            scope: true,
            priority: 1,
            controllerAs: 'svgReveal',
            controller: function ($element,$window,$scope) {
              var svgLength = $element[0].getTotalLength();
              var offsetTarget = svgLength;
              
              $element[0].style.strokeDasharray = svgLength;
              $element[0].style.strokeDashoffset=svgLength;
              
              if ($window.innerWidth/2000 > 0.5)
              {
                  $scope.x1=500*$window.innerWidth/2000;
                  $scope.y1=850*$window.innerWidth/2000;  
                  $scope.x2=900*$window.innerWidth/2000;
                  $scope.y2=1250*$window.innerWidth/2000;  
                  $scope.x3=1450*$window.innerWidth/2000;
                  $scope.y3=1950*$window.innerWidth/2000;  
                  $scope.x4=2000*$window.innerWidth/2000;
                  $scope.y4=2200*$window.innerWidth/2000;  
  
              }
              else
              {
                  $scope.x1=0*$window.innerWidth/2000;
                  $scope.y1=350*$window.innerWidth/2000;  
                  $scope.x2=400*$window.innerWidth/2000;
                  $scope.y2=750*$window.innerWidth/2000;  
                  $scope.x3=950*$window.innerWidth/2000;
                  $scope.y3=1450*$window.innerWidth/2000;  
                  $scope.x4=1500*$window.innerWidth/2000;
                  $scope.y4=1700*$window.innerWidth/2000;  

              }              
              this.update = function (ratio) {
                console.log($window.scrollY);             
                var draw=svgLength*(ratio);
                $element[0].style.strokeDashoffset = svgLength-draw;
              }

            }
          }
        });


     
        