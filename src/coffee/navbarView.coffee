React = require('react')

div = React.createFactory('div')
h2 = React.createFactory('h2')
nav = React.createFactory('nav')
a = React.createFactory('a')
ul = React.createFactory('ul')
li = React.createFactory('li')

NavbarView = React.createClass

  render: ->
    nav
      className: 'navbar navbar-default'

      div
        className: 'container-fluid'

        div
          className: 'navbar-header'

          a
            className: "navbar-brand"
            href: '#'
            'Linejumper!'
        div
          ul
            className: "nav navbar-nav"
            
            li
              className: 'active'
              a
                href: '#'
                'Addition'
            li
              className: 'inactive'
              a
                href:"#"
                'Subtraction'
            li
              className: 'inactive'
              a
                href:"#"
                'Multiplication'
            li
              className: 'inactive'
              a
                href:"#"
                'Division'

module.exports = React.createFactory(NavbarView)

