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

    newQuestion: () ->
        @props.model_prop.gen_question()

    onClick: () ->
        answer_value = document.getElementById('answer').value
        answer_value = Number(answer_value)
        console.log(answer_value)

        @props.model_prop.set_user_answer(answer_value)
        #TODO (cmtholm): Get actual value from user input

    render: ->
        div
            className: 'container'
            div
                className: 'row'
                
                div
                    className: 'col-xs-3'
                
                div
                    className: 'col-xs-6'

                    form
                        className: 'inputView-form'
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
                            onClick: @onClick
                            'Submit'
                        button
                            clasName: 'btn btn-default'
                            type: 'reset'
                            onClick: @newQuestion
                            'New Question'
    
                div
                    className: 'col-xs-3'

        

module.exports = React.createFactory(inputView)