(function(){
	var app = angular.module('homestayz', ['ngRoute', 'templates']);
	
	app.config(function($routeProvider, $locationProvider) {
  $locationProvider.html5Mode(true);
  $routeProvider
    .when("/houses/:houseId",
      { templateUrl: "rent.html",
        controller: "RentController" })
		.when("/owners", 
					{ templateUrl: "owner-reviews.html",
					 	controller: "OwnerReviewsController" });
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
	
})();