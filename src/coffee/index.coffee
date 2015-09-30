React = require('react') # no ./ prefix
Parse = require('parse')
InputView = require('./inputView')
Model = require('./model')
QuestionView = require('./questionView')

model = new Model()

window.model = model

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
# React.render(
#     TodoListView # which component to mount
#         todoList: todoList
#     document.getElementById('view-mounting-point') # where to mount it
# )