(function(){
	var app = angular.module('homestayz', ['ngRoute', 'templates']);
	
	app.config(function($routeProvider, $locationProvider) {
  $locationProvider.html5Mode({endabled: true, requireBase:false});
  $routeProvider
    .when("/houses/:id",
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
	app.controller('RentController', function(){
		this.tab = 1;
		this.selectTab = function(setTab) {
			this.tab = setTab;
		};
		this.isSelected = function(checkTab) {
			return this.tab === checkTab;
		};
	});
        
})();