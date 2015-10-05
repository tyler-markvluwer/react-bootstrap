React = require('react')

div = React.createFactory('div')

answerView = React.createClass

	componentDidMount: ->
		@props.model_prop.on 'change', @update

	update: ->
		@forceUpdate()
		console.log("updating...")

	render: ->
		if(@props.model_prop.user_answer != null)
			div 
				className: 'container'  

				div 
					className: 'row'

					div 
						className: 'col-xs-4'
						if (!@props.model_prop.question.check_answer)
							'You answered: ' + @props.model_prop.user_answer + ' Sorry, the correct answer is: ' + @props.model_prop.correct
						else
							'You answered: ' + @props.model_prop.user_answer + ' Congrats! That is correct.'
					div 
						className: 'col-xs-8'
						"You're updated score is: Right-" + @props.model_prop.num_right + " Wrong-" + @props.model_prop.num_wrong
		else
			div
				className: 'container'

module.exports = React.createFactory(answerView)