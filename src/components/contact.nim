import vdom, karax, karaxdsl, kajax 

import sugar, json


proc contact*(c: JsonNode): VNode =
  echo $c
  result = buildHtml(section(class="bg-dark", id="contact")):
    tdiv(class="container"):
      tdiv(class="row"):
        tdiv(class="col text-center"):
          h2(class="section-heading text-center"): text "Contact"
