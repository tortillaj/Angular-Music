'use strict'

###*
 # @ngdoc function
 # @name angularMusicApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularMusicApp
###
angular.module('angularMusicApp')
  .controller 'MainCtrl', ['$scope', 'Rdio', ($scope, Rdio) ->

    Rdio.findUser('cejams').then (user) ->
      console.dir user

    return

  ]
