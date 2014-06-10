'use strict'

###*
 # @ngdoc service
 # @name angularMusicApp.Rdio
 # @description
 # # Rdio
 # Factory in the angularMusicApp.
###
angular.module('angularMusicApp')
  .factory 'Rdio', ['$http', '$q', 'Globals', ($http, $q, Globals) ->

    findUser: (username) ->
      deferred = $q.defer()

      $http.post(Globals.rdioEndpoint + '?method=findUser&vanityName=' + username,
        cache: true
      ).success (data) ->
        deferred.resolve data

      deferred.promise

  ]