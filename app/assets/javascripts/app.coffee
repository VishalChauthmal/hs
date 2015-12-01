homestayz = angular.module('homestayz',[
  'templates',
  'ngRoute',
  'controllers',
])

homestayz.config([ '$routeProvider',
  ($routeProvider)->
    $routeProvider
      .when('/',
        templateUrl: "index.html"
        controller: 'HomeController'
      )
])

controllers = angular.module('controllers',[])
controllers.controller("HomeController", [ '$scope',
  ($scope)->
])