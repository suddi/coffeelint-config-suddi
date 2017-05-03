module.exports.getConfig = (coffeelintConfig) ->
	coffeelintConfig

module.exports.getRule = () ->
	'no_spaces'

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
