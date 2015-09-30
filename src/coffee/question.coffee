rand = require('./utils').rand

class Question
	
	constructor: () ->
		@number1 = rand(0, 8)
		@number2 = rand(0, 8)
		@operand = '+'
		@result = @calculate(@number1, @number2, @operand)

	calculate: (number1, number2, operand) ->
		temp = switch @operand
			when '+' then (number1 + number2)
			when '-' then (number2 - number2)
			else false
		return @temp

	to_string: () ->
		@question = "What is " + @number1.toString() + @operand + @number2.toString() + "?"
		console.log(@question)
		return @question
		# TODO(lareeves): Generalize to string method if this is needed elsewhere


module.exports = Question