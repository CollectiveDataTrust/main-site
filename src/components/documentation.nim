
include karax / prelude 
import karax / prelude

import json

proc documentation*(c:JsonNode): VNode =
  result = buildHtml(section(class="bg-white", id="documentation")):
    tdiv(class="container"):
      tdiv(class="row"):
        tdiv(class="col text-justify"):
          h2(class="section-heading"):
            text c["title"].getStr()
      for i in c["items"]:
        tdiv(class="row"):
          tdiv(class="col text-justify"):
            p:
              text i["text"].getStr()
              a(href=i["link"].getStr()): text i["link-label"].getStr()
            
  

