module.exports.getConfig = (coffeelintConfig) ->
	Object.assign {}, coffeelintConfig, {
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
