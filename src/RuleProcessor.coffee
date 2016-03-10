
class RuleProcessor

  rule:
    name: 'no_mocha_only'
    description: 'Validates there are no context.only, describe.only or it.only calls'
    level: 'error'
    message: '.only not allowed'

  lintLine: ( line, lineApi ) ->

    if /it\.only/.test line
      return context: 'Unexpected it.only'
    if /describe\.only/.test line
      return context: 'Unexpected describe.only'
    if /context\.only/.test line
      return context: 'Unexpected context.only'
    else return null

module.exports = RuleProcessor
