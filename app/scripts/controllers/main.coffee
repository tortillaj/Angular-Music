'use strict'

###*
 # @ngdoc function
 # @name angularMusicApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularMusicApp
###
angular.module('angularMusicApp')
  .controller 'MainCtrl', ['$scope', 'LastFm', ($scope, LastFm) ->

    LastFm.findUser('jamesia').then (data) ->
      console.dir data.user

    return

  ]
