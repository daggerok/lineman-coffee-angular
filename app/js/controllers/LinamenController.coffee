angular.module('LinamenController', [])
  .controller 'LinemanController', [
    '$scope', ($scope) ->
      $scope.greeting = (name = $scope.LinemanModel) ->
        "Hello, #{name}!"
  ]
