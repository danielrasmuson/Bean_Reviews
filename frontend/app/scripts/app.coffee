'use strict'

coffee = angular
  .module('coffeeApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])

coffee
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/auth/login',
        templateUrl: 'views/login.html'
        controller: 'LoginCtrl'
      .when '/auth/register',
        templateUrl: 'views/register.html'
        controller: 'RegisterCtrl'


      .otherwise
        redirectTo: '/'

