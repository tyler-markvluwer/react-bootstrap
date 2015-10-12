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
                "Home"
            li
              className: 'inactive'
              a
                href: "#about"
                "About"
            li
              className: "dropdown" 
              a
                className: "dropdown-toggle"
                href: "#"
                'data-toggle': "dropdown"
                "Themes"
                b
                  className: "caret"

              ul
                className: "dropdown-menu" 

                li
                  className: "dropdown-header"
                  "Admin & Dashboard"

                li
                  className: ""
                  a
                    href: "#"
                    "Admin 1"
                li
                  className: ""
                  a
                    href: "#"
                    "Admin 2"
                li
                  className: "divider" 
                li
                  className: "dropdown-header"
                  "Portfolio"
                li
                  className: ""
                  a
                    href: "#"
                    "Portfolio 1"
                li
                  className: ""
                  a
                    href: "#"
                    "Portfolio 2"
              
                        
            li
              className: "inactive"
              a
                href: "#contact"
                "Contact"
          
module.exports = React.createFactory(NavbarView)

