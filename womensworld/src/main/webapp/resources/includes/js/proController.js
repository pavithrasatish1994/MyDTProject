 
   // var apps = angular.module('sortApps', []);

var control = angular.module('protab', []);

control.controller('mController', function($scope, $http){

	      
               $http.get('GsonCon').success(function(data, status, headers, config) {
            	   console.log(data);
            	  
                        $scope.list = data;
                });
                        
                

                
      });
