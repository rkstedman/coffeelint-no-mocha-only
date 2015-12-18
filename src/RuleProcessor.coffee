
class RuleProcessor

  rule:
    name: 'no_describe_only'
    description: 'Validates there are no describe.only calls'
    level: 'error'
    message: 'describe.only not allowed'

  lintLine: ( line, lineApi ) ->

    if /describe\.only/.test line
      return context: 'Unexpected describe.only'
    else return null

module.exports = RuleProcessor
