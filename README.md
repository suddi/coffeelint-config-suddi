# coffeelint-config-suddi

[![CircleCI](https://img.shields.io/circleci/project/suddi/coffeelint-config-suddi/master.svg)](https://circleci.com/gh/suddi/coffeelint-config-suddi)
[![codecov](https://codecov.io/gh/suddi/coffeelint-config-suddi/branch/master/graph/badge.svg)](https://codecov.io/gh/suddi/coffeelint-config-suddi)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/f3cbca070bbd4488b579748680348c28)](https://www.codacy.com/app/suddir/coffeelint-config-suddi)
[![npm](https://img.shields.io/npm/v/coffeelint-config-suddi.svg)](https://www.npmjs.com/package/coffeelint-config-suddi)
[![npm](https://img.shields.io/npm/dt/coffeelint-config-suddi.svg)](https://www.npmjs.com/package/coffeelint-config-suddi)
[![Greenkeeper badge](https://badges.greenkeeper.io/suddi/coffeelint-config-suddi.svg)](https://greenkeeper.io/)
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
		"coffeelint": "^2.1.0",
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
