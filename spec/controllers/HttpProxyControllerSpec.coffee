describe 'controllers', ->

  describe 'HttpProxyController', ->

    beforeEach -> module 'controllers'

    beforeEach inject ($controller, $rootScope) ->
      @scope = $rootScope.$new()
      @HttpProxyController = $controller 'HttpProxyController',
          $scope: @scope

    describe 'getMax without proxi API', ->

      it 'should return "hi, undefined!"', ->
        expect(@scope.hiMax())
          .toEqual 'hi, undefined!'
