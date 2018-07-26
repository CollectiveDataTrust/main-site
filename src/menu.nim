import vdom, karax, karaxdsl, kajax 

import sugar

proc tmenu*(): VNode =
  result = buildHtml(nav(class="navbar navbar-expand-lg navbar-dark fixed-top", id="mainNav")):
    tdiv(class="container"):
      a(class="navbar-brand js-scroll-trigger"): text "HOME"
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
          li(class="nav-item"):
            a(class="nav-link js-scroll-trigger", href="#why"): text "Why"
          li(class="nav-item"):
            a(class="nav-link js-scroll-trigger", href="#what"): text "What"
          li(class="nav-item"):
            a(class="nav-link js-scroll-trigger", href="#how"): text "How"
          li(class="nav-item"):
            a(class="nav-link js-scroll-trigger", href="#documentation"): text "Documnetation"
          li(class="nav-item"):
            a(class="nav-link js-scroll-trigger", href="#collaborate"): text "Collaborate"
          li(class="nav-item"):
            a(class="nav-link js-scroll-trigger", href="#contact"): text "contact"
          li(class="nav-item"):
            a(class="nav-link js-scroll-trigger", href="https://collectivedatatrust.auth.us-east-1.amazoncognito.com/login?response_type=code&client_id=25mmtrug0ec57e9vfj0rua2551&redirect_uri=https://www.collectivedatatrust.com"): text "Sign Up"
          
