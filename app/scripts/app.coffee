'use strict'

###*
 # @ngdoc overview
 # @name angularMusicApp
 # @description
 # # angularMusicApp
 #
 # Main module of the application.
###
angular
  .module('angularMusicApp', [
    'ngResource',
    'ngRoute'
  ])

  .constant 'Globals',
    rdioEndpoint: "<%- rdioEndpoint %>"

  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/main.html'
        controller: 'MainCtrl'
      .when '/about',
        templateUrl: 'views/about.html'
        controller: 'AboutCtrl'
      .otherwise
        redirectTo: '/'
  .run [
    'Globals'
    (Globals) ->
      console.dir Globals
  ]
