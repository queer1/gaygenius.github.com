require '/javascripts/hello.js'

describe 'yay, coffeescript!', ->
  it 'is caffeinated', ->
    expect(Hello.TDD()).toEqual('fun')