React = require('react') # no ./ prefix
Parse = require('parse')
InputView = require('./inputView')
Model = require('./model')
QuestionView = require('./questionView')
AnswerView = require('./answerView')
NavbarView = require('./navbarView')

model = new Model()

window.model = model

React.render(
	NavbarView
		no_props: null
	document.getElementById('navbar-mount')
)

React.render(
	InputView
		model_prop: model
	document.getElementById('inputView-mount')	
)

React.render(
	QuestionView
		model_prop: model
	document.getElementById('questionView-mount')
)

React.render(
	AnswerView
		model_prop: model
	document.getElementById('answerView-mount')
)
# React.render(
#     TodoListView # which component to mount
#         todoList: todoList
#     document.getElementById('view-mounting-point') # where to mount it
# )