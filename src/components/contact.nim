include karax / prelude 
import karax / prelude

import sugar, json

proc contact*(contacts: JsonNode): VNode =
  result = buildHtml(section(class="bg-dark", id="contact")):
    tdiv(class="container"):
      tdiv(class="row"):
        tdiv(class="col text-center"):
          h2(class="section-heading text-center"): text "Contact"
        
      h3(class="section-subheading text-muted")
      tdiv(class="text-justify text-light"):
        tdiv(class="container"):
          tdiv(class="row"):
            for c in contacts["items"]:
              tdiv(class="col text-justify"):
                h2: text c["name"].getStr()
                for l in c["address_lines"]:
                  p: text l.getStr()
                p:
                  a(href=c["email"].getStr()): text c["email"].getStr()
        
