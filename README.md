# coffeelint-config-suddi

[![CircleCI](https://img.shields.io/circleci/project/suddi/coffeelint-config-suddi.svg)](https://circleci.com/gh/suddi/coffeelint-config-suddi)
[![codecov](https://codecov.io/gh/suddi/coffeelint-config-suddi/branch/master/graph/badge.svg)](https://codecov.io/gh/suddi/coffeelint-config-suddi)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/f3cbca070bbd4488b579748680348c28)](https://www.codacy.com/app/suddir/coffeelint-config-suddi)
[![npm](https://img.shields.io/npm/v/coffeelint-config-suddi.svg)](https://www.npmjs.com/package/coffeelint-config-suddi)
[![npm](https://img.shields.io/npm/dt/coffeelint-config-suddi.svg)](https://www.npmjs.com/package/coffeelint-config-suddi)
[![David](https://img.shields.io/david/suddi/coffeelint-config-suddi.svg)](https://david-dm.org/suddi/coffeelint-config-suddi)
[![David](https://img.shields.io/david/dev/suddi/coffeelint-config-suddi.svg)](https://david-dm.org/suddi/coffeelint-config-suddi?type=dev)
[![license](https://img.shields.io/github/license/suddi/coffeelint-config-suddi.svg)](https://raw.githubusercontent.com/suddi/coffeelint-config-suddi/master/LICENSE)

[![codecov](https://codecov.io/gh/suddi/coffeelint-config-suddi/branch/master/graphs/commits.svg)](https://codecov.io/gh/suddi/coffeelint-config-suddi)

````
npm install --save-dev coffeelint coffeelint-config-suddi
````

## Usage

- Add the CoffeeLint config to your `package.json`, for running on your CoffeeScript code:

```json
{
	"scripts": {
		"lint": "coffeelint ."
	},
	"devDependencies": {
		"coffeelint": "^1.0.0",
		"coffeelint-config-suddi": "^2.0.0"
	},
	"coffeelintConfig": {
		"extends": "coffeelint-config-suddi"
	}
}
```

- Then apply the linter with `npm run lint`.

**NOTE:** You will likely want to include a `.coffeelintignore` file, as `coffeelint`, by default will include all `.coffee` files including those inside of `node_modules`:

````sh
echo "node_modules" > .coffeelintignore
````

## Changelog

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [2.0.2]
### Changed
- Set `no_stand_alone_at` to `"ignore"`

## [2.0.1]
### Changed
- Set `max_line_length` to `"ignore"`

## [2.0.0] - 2017-05-03
### Added
- Added `no_spaces` rule
- Added tests for custom rules

### Changed
- Switched configuration to using tabs for indentation

## [1.0.0] - 2017-02-13
### Added
- Initial coffeelint configuration
