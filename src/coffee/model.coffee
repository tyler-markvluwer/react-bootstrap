Question = require('./question')
EventEmitter = require('events').EventEmitter

class Model extends EventEmitter

	constructor: () ->
		@num_right = 0
		@num_wrong = 0
		@question = new Question()
		@user_answer = null
		console.log(typeof(@user_answer))
		@correct = null

	gen_question: () ->
		@question = new Question()
		@emit 'newq'

		
	check_answer: () ->
		if (@user_answer == @question.result)
			@num_right++
			@correct = true
		else
			@num_wrong++
			@correct = false

		return @correct

	set_user_answer: (input) ->
		@user_answer = input
		@emit 'change'

module.exports = Model

