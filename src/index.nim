
include karax / prelude 
import karax / prelude

#import vdom, karax, karaxdsl, kajax 

import sugar, json
import sections
#import navigation 
import contents
import components / [documentation, collaborate, contact]
import menu

var lang = cont["default-lang"].getStr()

var c = cont[lang]

proc tmenu*(): VNode =
  result = buildHtml(nav(class="navbar navbar-expand-lg navbar-dark fixed-top", id="mainNav")):
    tdiv(class="container"):
      a(class="navbar-brand js-scroll-trigger", href="#page-top"): text "HOME"
      # tdiv(class="dropdown"):
      #   button(class="btn btn-primary dropdown-toggle",
      #          `type`="button",
      #          id="dropdownMenuButton",
      #          `data-toggle`="dropdown",
      #          `aria-haspopup`="true",
      #          `aria-expanded`="false"): text c["lang-title"].getStr()
      #   tdiv(class="dropdown-menu", `aria-labelledby`="dropdownMenuButton"):
      #     a(class="dropdown-item", onClick = proc()= lang="en"): text "English"
      #     a(class="dropdown-item", onClick = proc()= lang="es"): text "Español"
      button(class="navbar-toggler navbar-toggler-right",
             `type`="button",
             `data-toggle`="collapse",
             `data-target`="#navbarResponsive",
             `aria-controls`="navbarResponsive",
             `aria-expanded`="false",
             `aria-label`="Toggle navigation"):
          text "Menu"
          italic(class="fa fa-bars")
      tdiv(class="collapse navbar-collapse", id="navbarResponsive"):
        menuContent(menuList)
        # ul(class="navbar-nav text-uppercase ml-auto"):
        #   li(class="nav-item"):
        #     a(class="nav-link js-scroll-trigger", href="#Why"): text "Why"
        #   li(class="nav-item"):
        #     a(class="nav-link js-scroll-trigger", href="#What"): text "What"
        #   li(class="nav-item"):
        #     a(class="nav-link js-scroll-trigger", href="#How"): text "How"
        #   li(class="nav-item"):
        #     a(class="nav-link js-scroll-trigger", href="#documentation"): text "Documentation"
        #   li(class="nav-item"):
        #     a(class="nav-link js-scroll-trigger", href="#collaborate"): text "Collaborate"
        #   li(class="nav-item"):
        #     a(class="nav-link js-scroll-trigger", href="#contact"): text "contact"
        #   li(class="nav-item"):
        #     a(class="nav-link js-scroll-trigger",
        #       href="http://local.imu.ai:13000/#/signup"):
        #         text "Sign Up"
          
proc logoheader*():Vnode =
    result = buildHtml(tdiv()):
      header(class="masthead"):
        tdiv(class="container"):
          tdiv(class="intro-text"):
            img(class="mobil", src="img/logo_header.png", alt="Collective Data Trust")



proc MainContainer(): VNode =
  c = cont[lang]
  #echo "------\n" & $c["sections"] & "\n-------\n"
  #var langTitle = c["lang-title"].getStr()
  #var langs = c["langs"]

  result = buildHtml(tdiv()):
    tmenu()
    logoheader()
    parts(c["sections"])
    documentation(c["documentation"])
    collaborate(c)
    #contact(c)
    script( src="js/agency.js")

    

proc createDOM(data: RouterData): VNode =
  result = buildHtml(tdiv()):
    MainContainer()

#loadContents()

setRenderer createDOM
