module.exports.getConfig = (coffeelintConfig) ->
	coffeelintConfig

module.exports.getRule = () ->
	'no_spaces'

module.exports.correct = () ->
	'''
	this()
		.is()
		.correct()
		.chaining()

	'''

module.exports.incorrect = () ->
	'''
	this()
	 .is()
	 .not()
	 .correct()
	 .chaining()

	'''
