'use strict'

describe 'Directive: tabs', ->

  # load the directive's module
  beforeEach module 'swarmApp'

  scope = {}

  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<tabs></tabs>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the tabs directive'