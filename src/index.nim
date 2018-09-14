
include karax / prelude 
import karax / prelude

#import vdom, karax, karaxdsl, kajax 

import sugar, json
import sections
#import navigation 
import contents
import components / [documentation, collaborate, contact, menu]

var lang = cont["default-lang"].getStr()

var c = cont[lang]

proc tmenu*(m: JsonNode): VNode =
  result = buildHtml(nav(class="navbar navbar-expand-lg navbar-dark fixed-top", id="mainNav")):
    tdiv(class="container"):
      a(class="navbar-brand js-scroll-trigger", href="#page-top"): text "HOME"
      menuContent(m)
      
proc logoheader*(logo, title: string):Vnode =
    result = buildHtml(tdiv()):
      header(class="masthead"):
        tdiv(class="container"):
          tdiv(class="intro-text"):
            img(class="mobil", src=logo, alt=title)


proc MainContainer(): VNode =
  c = cont[lang]
  result = buildHtml(tdiv()):
    tmenu(c["menu"])
    logoheader(c["logo"].getStr(), c["page_title"].getStr())
    parts(c["sections"])
    documentation(c["documentation"])
    collaborate(c)
    #contact(c)
    script( src="js/agency.js")


proc createDOM(data: RouterData): VNode =
  result = buildHtml(tdiv()):
    MainContainer()


setRenderer createDOM
