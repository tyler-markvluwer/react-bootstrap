Question = require('./question')

class Model

	constructor: () ->
		@num_right = 0
		@num_wrong = 0
		@question = null
		@user_answer = null

	gen_question: () ->
		@question = new Question()
		
	check_answer: () ->
		if (@user_answer == @question.result)
			@num_right++
			@correct = true
		else
			@num_wrong++
			@correct = false

	set_user_answer: (input) ->
		@user_answer = input

module.exports = Model

