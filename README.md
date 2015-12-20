# CoffeeLint - no-mocha-only
[![NPM Version](https://badge.fury.io/js/coffeelint-no-mocha-only.svg)](https://npmjs.org/package/coffeelint-no-mocha-only)

## Description

This [CoffeeLint](http://www.coffeelint.org) plugin verifies there are no `describe.only` or `it.only` in use. If you are using mocha, using `describe.only` or `it.only` is helpful when developing tests locally, but to avoid committing the `only` usage and preventing the full test suite from being run in the future, you can use this coffeelint rule.

## Installation

```sh
[sudo] npm install [-g] coffeelint-no-mocha-only
```

## Usage

Insert the below configuration into *coffeelint.json* that you use for linting your scripts:

```js
"no_mocha_only": {
    "module": "coffeelint-no-mocha-only",
    "level": "error"
}
```

## Configuration

There are no configuration options for this plugin
