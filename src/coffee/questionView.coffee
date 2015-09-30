React = require('react')

div = React.createFactory('div')
# problem = React.createFactory('Question')

questionView = React.createClass

	render: ->
		# @props.model_prop.gen_question()

		div
			className: 'container'

			div 
				className: 'row'
					
				div 
					className: 'span4'
				div
					className: 'span4'
					@props.model_prop.question.to_string()

				div
					className: 'span4'

module.exports = React.createFactory(questionView)