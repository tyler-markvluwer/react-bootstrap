React = require('react')

div = React.createFactory('div')
h2 = React.createFactory('h2')

questionView = React.createClass

	componentDidMount: ->
		@props.model_prop.on 'newq', @update

	update: ->
		@forceUpdate()
		console.log("updating...")

	render: ->
		# @props.model_prop.gen_question()

		div
			className: 'container'

			div 
				className: 'row'
					
				div 
					className: 'col-xs-4'
				div
					className: 'col-xs-4'
					h2
						className: 'centered-text'
						@props.model_prop.question.to_string()

				div
					className: 'col-xs-4'

module.exports = React.createFactory(questionView)