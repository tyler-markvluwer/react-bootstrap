React = require('react')

# tag factories
div = React.createFactory('div')
form = React.createFactory('form')
label = React.createFactory('label')
input = React.createFactory('input')
button = React.createFactory('button')
span = React.createFactory('span')


inputView = React.createClass    
    #################################
    #       React Functions
    #################################

    newQuestion: () ->
        document.getElementById("answer-input-form").reset()
        @props.model_prop.gen_question()

    onClick: () ->
        answer_value = document.getElementById('answer').value
        answer_value = Number(answer_value)
        console.log(answer_value)

        @props.model_prop.set_user_answer(answer_value)

    render: ->
        div
            className: 'container'
            div
                className: 'row'
                style: 'height': '20px'
            div
                className: 'row'
                
                div
                    className: 'col-xs-3'
                
                div
                    className: 'col-xs-6 centered-text form-group'

                    form
                        id: 'answer-input-form'
                        className: 'form-inline inputView-form'
                        label
                            'Enter your answer: '
                        input
                            className: 'form-control'
                            placeholder: 'Ex: 5'
                            type: 'number'
                            id: 'answer'
                div
                    className: 'col-xs-3'
            div
                className: 'row'
                div
                    className: 'col-xs-12'

                    button
                        id: @props.id
                        className: 'btn btn-block btn-default'
                        type: 'button'
                        onClick: @onClick
                        'Submit'
            div
                className: 'row'
                style: 'height': '10px'
            div
                className: 'row'
                div
                    className: 'col-xs-12'

                    button
                        className: 'btn btn-block btn-default'
                        type: 'button'
                        onClick: @newQuestion
                        'New Question'

        

module.exports = React.createFactory(inputView)