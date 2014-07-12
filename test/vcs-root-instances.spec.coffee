expect = require('chai').expect
require './have-called'


describe 'VCS Root Instance', ->
  client = null
  vcsRootInstance = null

  beforeEach ->
    client = new Client
    vcsRootInstance = new VcsRootInstance 1, client

  it 'should get the VCS root instance info', ->
    vcsRootInstance.info()
    expect(client).to.haveCalled 'get', '/vcs-root-instances/1'
