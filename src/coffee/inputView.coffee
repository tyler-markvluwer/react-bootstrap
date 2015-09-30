React = require('react')

# tag factories
div = React.createFactory('div')
form = React.createFactory('form')
label = React.createFactory('label')
input = React.createFactory('input')
button = React.createFactory('button')


inputView = React.createClass    
    #################################
    #       React Functions
    #################################

    onClick: () ->
        @props.model_prop.set_user_answer(5)
        #TODO (cmtholm): Get actual value from user input

    render: ->
        
        form
            className: 'inputView-form'
            'Input Form'
            label
                'Enter your answer: '
            input
                placeholder: 'Ex: 5'
                type: 'number'
                id: 'answer'
            button
                id: @props.id
                className: 'btn btn-default'
                type: 'button'
                onClick: @props.onClick
                'Submit'
        

module.exports = React.createFactory(inputView)