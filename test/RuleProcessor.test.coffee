should = require 'should'
RuleProcessor = require '../src/RuleProcessor'

describe 'RuleProcessor', () ->

  # Define some frequently used vars used across the test suite

  processor       = undefined         # populated in beforeEach()
  fakeAPI         = undefined         # populated in beforeEach()
  setBehaviour    = ( behaviour ) ->  # A switch helper to modify the tested behaviour on the fly
    fakeAPI.config[processor.rule.name].behaviour = behaviour

  # Setup function to be executed before each test
  beforeEach ->
    processor = new RuleProcessor
    fakeAPI   = config: {}

  # Begin testing!

  it 'should trigger on describe.only if required', () ->
    result = processor.lintLine 'describe.only ->', fakeAPI
    result.should.have.property 'context'

  it 'should not trigger on lines with no describe.only if required', () ->
    result = processor.lintLine '', fakeAPI
    should.not.exist result
  #
  # it 'should not trigger on non-newline files if forbidden', () ->
  #   setBehaviour 'forbid'  # Ensure that forbidding is set
  #   result = processor.lintLine 'some content', fakeAPI
  #   should.not.exist result
  #
  # it 'should trigger on newline files if forbidden', () ->
  #   setBehaviour 'forbid'  # Ensure that forbidding is set
  #   result = processor.lintLine '', fakeAPI
  #   result.should.have.property 'context'
