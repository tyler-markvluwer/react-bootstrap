React = require('react')

div = React.createFactory('div')
h2 = React.createFactory('h2')
nav = React.createFactory('nav')
a = React.createFactory('a')
ul = React.createFactory('ul')
li = React.createFactory('li')
b = React.createFactory('b')
span = React.createFactory('span')
button = React.createFactory('button')

NavbarView = React.createClass

  render: ->
    div
      className: "navbar navbar-default navbar-fixed-top"
      role: "navigation" 

      div
        className: "container-fluid" 

        div
          className: "navbar-header" 

          button
            type: "button"
            className: "navbar-toggle"
            'data-toggle': "collapse"
            'data-target': ".navbar-collapse" 
            span
              className: "sr-only"
              "Toggle navigation"
            span
              className: "icon-bar" 
            span
              className: "icon-bar" 
            span
              className: "icon-bar" 
          
          a
            className: "navbar-brand"
            href: "#"
            "Line Jumper"
        
        div
          className: "navbar-collapse collapse" 
          ul
            className: "nav navbar-nav navbar-right" 
            li
              className: "active"
              a
                href: "#"
                "Problems"
            li
              className: 'inactive'
              a
                href: "#howto"
                "How To"
            li
              className: "dropdown" 
              a
                className: "dropdown-toggle"
                href: "#"
                'data-toggle': "dropdown"
                "Problem Types"
                b
                  className: "caret"

              ul
                className: "dropdown-menu" 

                li
                  className: "dropdown-header"
                  "Beginner"

                li
                  className: ""
                  a
                    href: "#"
                    "Addition"
                li
                  className: ""
                  a
                    href: "#"
                    "Subtraction"
                li
                  className: "divider" 
                li
                  className: "dropdown-header"
                  "Advanced"
                li
                  className: ""
                  a
                    href: "#"
                    "Multiplication"
                li
                  className: ""
                  a
                    href: "#"
                    "Division"
              
                        
            li
              className: "inactive"
              a
                href: "#contact"
                "Contact"
          
module.exports = React.createFactory(NavbarView)

