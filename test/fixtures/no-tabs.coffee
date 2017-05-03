module.exports.getConfig = (coffeelintConfig) ->
	Object.assign {}, coffeelintConfig, {
		no_spaces:
			level: 'ignore'
		no_tabs:
			level: 'error'
	}

module.exports.getRule = () ->
	'no_tabs'

module.exports.correct = () ->
	'''
	x = () ->
	 return 42

	'''

module.exports.incorrect = () ->
	'''
	x = () ->
		return 42

	'''
