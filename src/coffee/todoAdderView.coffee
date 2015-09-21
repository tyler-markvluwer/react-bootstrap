React = require('react')

# tag factories
ul = React.createFactory('ul')
li = React.createFactory('li')
div = React.createFactory('div')
h1 = React.createFactory('h1')

todoAdderView = React.createClass    
    #################################
    #       React Functions
    #################################
    componentDidMount: ->
        @props.todoList.on 'change', @update

    update: ->
        console.log "updating"
        @forceUpdate()

    render: ->
    	 div
            className: 'container'

            # TODO (tmarkvluwer): refactor me please!
            div
                className: 'row'

                div
                    className: 'col-sm-4'
                div
                    h1
                        className: 'col-sm-4 centered-text'
                        'My Todo List'
                div
                    className: 'col-sm-4'

module.exports = React.createFactory(todoAdderView)
