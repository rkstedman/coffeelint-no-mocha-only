# CoffeeLint - no-describe-only
[![NPM Version](https://badge.fury.io/js/coffeelint-no-describe-only.svg)](https://npmjs.org/package/coffeelint-no-describe-only)

## Description

This [CoffeeLint](http://www.coffeelint.org) plugin verifies there are no `describe.only` in use. If you are using mocha, using `describe.only` is helpful when developing tests locally, but to avoid committing the `describe.only` and preventing the full test suite from being run in the future, you can use this coffeelint rule.

## Installation

```sh
[sudo] npm install [-g] coffeelint-no-describe-only
```

## Usage

Insert the below configuration into *coffeelint.json* that you use for linting your scripts:

```js
"no_describe_only": {
    "module": "coffeelint-no-describe-only",
    "level": "error"
}
```

## Configuration

There are no configuration options for this plugin
