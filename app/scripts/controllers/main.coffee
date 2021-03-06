'use strict'

###*
 # @ngdoc function
 # @name angularMusicApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the angularMusicApp
###
angular.module('angularMusicApp')
.controller 'MainCtrl', ['$scope', 'Globals', 'LastFm', ($scope, Globals, LastFm) ->

    $scope.messages = []

    _findLastFmUser = (username) ->
      LastFm.findUser(username).then ((data) ->
        if data.user
          $scope.lastfmUser = data.user
          console.dir data.user
          #$scope.lastfmDisplayName =
          _getTopAlbums(data.user.name)
        else if data.message
          $scope.messages.push
            type: 'danger'
            msg: data.message
        else
          $scope.messages.push
            type: 'danger'
            msg: 'Something went wrong!'
      ), ((reason) ->
          $scope.messages.push reason
        )

    _getTopAlbums = (username) ->
      LastFm.getTopAlbums(username).then ((data) ->
        if data.topalbums.album
          $scope.lastfmTopAlbums = data.topalbums.album
        else if data.message
          $scope.messages.push
            type: 'danger'
            msg: data.message
        else
          $scope.messages.push
            type: 'danger'
            msg: 'Something went wrong!'
      ), ((reason) ->
          $scope.messages.push reason
        )

    $scope.findLastFmUser = () ->
      _findLastFmUser($scope.lastfmUsername)

    $scope.closeAlert = (index) ->
      $scope.messages.splice index, 1


    #_findLastFmUser(Globals.defaultLastfmUsername)
    #_getTopAlbums(Globals.defaultLastfmUsername)

    return

  ]
