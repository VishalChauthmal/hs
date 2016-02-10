(function(){
	var app = angular.module('homestayz', ['ngRoute', 'templates']);
	
	app.config(function($routeProvider, $locationProvider) {
  $locationProvider.html5Mode(true);
  $routeProvider
    .when("/houses/:houseId",
      { templateUrl: "rent.html",
        controller: "RentController" });
	$routeProvider
		.otherwise({
  		redirectTo: function(current, path, search) {
    		if(search.goto) {
      		return '/' + search.goto;
    		}
      	return '/'
  		}
	});
});
	app.controller('RentController', function($scope, $routeParams, $http){
		$scope.tab = 1;
		$scope.selectTab = function(setTab) {
			this.tab = setTab;
		};
		$scope.isSelected = function(checkTab) {
			return this.tab === checkTab;
		};
		
		// Store the value of house id in $scope variable
		$scope.houseId = $routeParams.houseId;
		
		var getDetails = function(id) {
			$http.get('http://localhost:3000/housedetails/'+ id)
			.success(function (data) {
				$scope.house = data;
		})
			.error(function (data, status, headers, config) {
				console.error("Failed to load House data");
		});
		}
		
	getDetails($routeParams.houseId)
	});
	
})();