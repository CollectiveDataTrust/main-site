include karax / prelude 
import karax / prelude

import sugar, json

proc menuContent*(menuList: JsonNode): VNode =
  result = buildHtml(nav(class="navbar navbar-expand-lg navbar-dark fixed-top", id="mainNav")):
    tdiv(class="container"):
      a(class="navbar-brand js-scroll-trigger", href="#page-top"): text "HOME"
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
        ul(class="navbar-nav text-uppercase ml-auto"):
          for m in menuList:
            li(class="nav-item"):
              a(class="nav-link js-scroll-trigger", href=m["href"].getStr()): text m["text"].getStr()
          
