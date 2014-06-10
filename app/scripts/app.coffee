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
    'ngRoute',
    'jmdobry.angular-cache',
    'angularMoment',
    'ui.bootstrap'
  ])

  .constant 'Globals',
    rdioEndpoint: "<%- rdioEndpoint %>"
    lastfmEndpoint: "<%- lastfmEndpoint %>"
    lastfmApiKey: "<%- lastfmApiKey %>"
    defaultLastfmUsername: "<%- defaultLastfmUsername %>"

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
    'Globals',
    '$angularCacheFactory',
    '$http',
    (Globals, $angularCacheFactory, $http) ->

      # setup the cache factory to use localStorage
      $angularCacheFactory 'defaultCache',
        maxAge: 9000000000000,
        cacheFlushInterval: 6000000
        deleteOnExpire: 'aggressive'
        storageMode: 'localStorage'

      # assign the new localStorage cache to angular default cache
      $http.defaults.cache = $angularCacheFactory.get 'defaultCache'
  ]
