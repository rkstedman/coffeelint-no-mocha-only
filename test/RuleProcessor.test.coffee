should = require 'should'
RuleProcessor = require '../src/RuleProcessor'

describe 'RuleProcessor', () ->

  # Define some frequently used vars used across the test suite

  processor       = undefined         # populated in beforeEach()
  fakeAPI         = undefined         # populated in beforeEach()

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

  it 'should trigger on it.only if required', () ->
    result = processor.lintLine 'it.only ->', fakeAPI
    result.should.have.property 'context'

  it 'should not trigger on lines with no it.only if required', () ->
    result = processor.lintLine '', fakeAPI
    should.not.exist result
