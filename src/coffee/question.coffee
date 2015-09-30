rand = require('./utils').rand

class Question
	
	constructor: () ->
		@number1 = rand(0, 8)
		@number2 = rand(0, 8)
		@operand = '+'
		@result = calculate(@number1, @number2, @operand)

	calculate: (number1, number2, operand) ->
		switch @operand
			when '+' then (return number1 + number2)
			when '-' then (return number2 - number2)
			else return false

	to_string: () ->
		@question = "What is " + @number1.toString() + @operand + @number2.toString() + "?"
		# TODO(lareeves): Generalize to string method if this is needed elsewhere


module.exports = Question