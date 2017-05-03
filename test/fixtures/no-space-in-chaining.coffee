module.exports.getConfig = (coffeelintConfig) ->
	coffeelintConfig

module.exports.getRule = () ->
	'no_spaces'

module.exports.correct = () ->
	'''
	dis()
		.is()
		.correct()
		.chaining()

	'''

module.exports.incorrect = () ->
	'''
	dis()
	 .is()
	 .not()
	 .correct()
	 .chaining()

	'''
