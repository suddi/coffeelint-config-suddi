_ = require 'lodash'

module.exports.getConfig = (coffeelintConfig) ->
	_.merge {}, coffeelintConfig, {
		no_spaces:
			level: 'ignore'
		no_tabs:
			level: 'ignore'
	}

module.exports.getRule = () ->
	null

module.exports.correct = () ->
	'''
	x = () ->
		y = () ->
		 return 42

	'''
