# coffeelint-config-suddi

[![CircleCI](https://img.shields.io/circleci/project/suddi/coffeelint-config-suddi.svg)](https://circleci.com/gh/suddi/coffeelint-config-suddi)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/f3cbca070bbd4488b579748680348c28)](https://www.codacy.com/app/suddir/coffeelint-config-suddi?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=suddi/coffeelint-config-suddi&amp;utm_campaign=Badge_Grade)
[![npm](https://img.shields.io/npm/v/coffeelint-config-suddi.svg)](https://www.npmjs.com/package/coffeelint-config-suddi)
[![npm](https://img.shields.io/npm/dt/coffeelint-config-suddi.svg)](https://www.npmjs.com/package/coffeelint-config-suddi)
[![David](https://img.shields.io/david/suddi/coffeelint-config-suddi.svg)](https://david-dm.org/suddi/coffeelint-config-suddi)
[![David](https://img.shields.io/david/dev/suddi/coffeelint-config-suddi.svg)](https://david-dm.org/suddi/coffeelint-config-suddi?type=dev)
[![license](https://img.shields.io/github/license/suddi/coffeelint-config-suddi.svg)](https://github.com/suddi/coffeelint-config-suddi/blob/master/LICENSE)

````
npm install --save-dev coffeelint-config-suddi
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
		"coffeelint-config-suddi": "^1.0.0"
	},
	"coffeelintConfig": {
		"extends": "coffeelint-config-suddi"
	}
}
```

- Then apply the linter with `npm run lint`.
