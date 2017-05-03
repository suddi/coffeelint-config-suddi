module.exports.getConfig = (coffeelintConfig) ->
	Object.assign {}, coffeelintConfig, {
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
