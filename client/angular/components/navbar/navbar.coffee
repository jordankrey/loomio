AppConfig      = require 'shared/services/app_config.coffee'
AbilityService = require 'shared/services/ability_service.coffee'

angular.module('loomioApp').directive 'navbar', ($rootScope, ModalService) ->
  scope: {}
  restrict: 'E'
  templateUrl: 'generated/components/navbar/navbar.html'
  replace: true
  controller: ($scope) ->
    $scope.logo = ->
      AppConfig.theme.app_logo_src

    $scope.isLoggedIn = ->
      AbilityService.isLoggedIn()
    $scope.toggleSidebar = -> $rootScope.$broadcast 'toggleSidebar'

    $scope.signIn = ->
      ModalService.open 'AuthModal'
