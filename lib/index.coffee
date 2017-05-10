coffeelint = require 'coffeelint'
fs = require 'fs'
path = require 'path'

loadRules = () ->
	rulesDir = path.join __dirname, 'rules'
	fs
		.readdirSync rulesDir
		.filter (filename) ->
			filename.match /\.coffee$/
		.map (filename) ->
			filepath = path.join rulesDir, filename
			rule = require filepath
			coffeelint.registerRule rule

getConfig = () ->
	loadRules()
	{
		arrow_spacing:
			level: 'error'
		braces_spacing:
			level: 'error'
			spaces: 0
			empty_object_spaces: 0
		camel_case_classes:
			level: 'error'
		coffeescript_error:
			level: 'error'
		colon_assignment_spacing:
			level: 'error'
			spacing:
				left: 0
				right: 1
		cyclomatic_complexity:
			level: 'error'
			value: 10
		duplicate_key:
			level: 'error'
		empty_constructor_needs_parens:
			level: 'error'
		ensure_comprehensions:
			level: 'error'
		eol_last:
			level: 'error'
		indentation:
			value: 1
			level: 'error'
		line_endings:
			level: 'error'
			value: 'unix'
		max_line_length:
			value: 80
			level: 'ignore'
			limitComments: false
		missing_fat_arrows:
			level: 'error'
			is_strict: false
		newlines_after_classes:
			value: 3
			level: 'ignore'
		no_backticks:
			level: 'error'
		no_debugger:
			level: 'warn'
			console: true
		no_empty_functions:
			level: 'error'
		no_empty_param_list:
			level: 'ignore'
		no_implicit_braces:
			level: 'ignore'
			strict: true
		no_implicit_parens:
			level: 'ignore'
			strict: true
		no_interpolation_in_single_quotes:
			level: 'error'
		no_nested_string_interpolation:
			level: 'error'
		no_plusplus:
			level: 'ignore'
		no_private_function_fat_arrows:
			level: 'error'
		no_stand_alone_at:
			level: 'ignore'
		no_spaces:
			level: 'error'
		no_tabs:
			level: 'ignore'
		no_this:
			level: 'error'
		no_throwing_strings:
			level: 'error'
		no_trailing_semicolons:
			level: 'error'
		no_trailing_whitespace:
			level: 'error'
			allowed_in_comments: false
			allowed_in_empty_lines: false
		no_unnecessary_double_quotes:
			level: 'error'
		no_unnecessary_fat_arrows:
			level: 'error'
		non_empty_constructor_needs_parens:
			level: 'ignore'
		prefer_english_operator:
			level: 'error'
			doubleNotLevel: 'ignore'
		space_operators:
			level: 'error'
		spacing_after_comma:
			level: 'error'
		transform_messes_up_line_numbers:
			level: 'error'
	}

module.exports = getConfig()
