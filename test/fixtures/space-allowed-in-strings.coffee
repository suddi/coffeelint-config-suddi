_ = require 'lodash'

module.exports.getConfig = (coffeelintConfig) ->
	_.merge {}, coffeelintConfig, {
		no_unnecessary_double_quotes:
			level: 'ignore'
	}

module.exports.getRule = () ->
	null

module.exports.correct = () ->
	'''
	x = () -> ' '
	y = """
	  Hello World!
	"""

	'''
