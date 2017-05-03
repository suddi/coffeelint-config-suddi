chai = require 'chai'
coffeelint = require 'coffeelint'
fs = require 'fs'
path = require 'path'

coffeelintConfig = require '../lib'

expect = chai.expect

handleAssertion = (errors, assertion) ->
	unless assertion
		expect(errors).to.deep.eql []

	errors.map (error) ->
		expect(error.rule).to.be.eql assertion

describe 'Integration Tests for Custom Rules', () ->
	fixturesDir = path.join __dirname, 'fixtures'
	fs
		.readdirSync fixturesDir
		.filter (filename) ->
			filename.endsWith '.coffee'
		.map (filename, index) ->
			it "CASE #{index + 1}: Testing #{filename}", () ->
				filepath = path.join fixturesDir, filename
				fixture = require filepath

				config = fixture.getConfig coffeelintConfig
				correctFn = fixture.correct
				incorrectFn = fixture.incorrect
				rule = fixture.getRule()

				if correctFn
					correct = coffeelint.lint correctFn(), config
					handleAssertion correct

				if incorrectFn
					incorrect = coffeelint.lint incorrectFn(), config
					handleAssertion incorrect, rule
