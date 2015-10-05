rand = require('./utils').rand

class Question
	
	constructor: () ->
		@number1 = rand(0, 8)
		
		@operand = switch rand(0,1)
			when 0 then '-'
			when 1 then '+'
			else '+'

		@number2 = switch @operand
			when '-' then rand(0, 0+@number1)
			when '+' then rand(0, 8-@number1)
		
		@result = @calculate(@number1, @number2, @operand)

	calculate: (number1, number2, operand) ->
		temp = switch @operand
			when '+' then (number1 + number2)
			when '-' then (number2 - number2)
			else false
		return temp

	to_string: () ->
		@question = "What is " + @number1.toString() + @operand + @number2.toString() + "?"
		console.log(@question)
		console.log(@result)
		return @question
		# TODO(lareeves): Generalize to string method if this is needed elsewhere


module.exports = Question