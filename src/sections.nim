
include karax / prelude 
import karax / prelude

import sugar, strutils, json 

type
  sec =  object
    title: string
    content: string
    imageURL: string
  

proc part*(s: JsonNode): VNode =
  #echo $s
  
  result = buildHtml(section(class="bg-white", id=s["title"].getStr())):
    tdiv(class="container"):
      tdiv(class="row"):
        tdiv(class="col-sm-6"):
          tdiv(class="continer"):
            for i in s["images"]:
              p(class="media-body"):
                img(src=i.getStr())
        tdiv(class="col-sm-6 text-justify mb-0"):
          h2(class="section-heading text-justify"): text(s["title"].getStr())
          for pa in s["contents"]:
            p: text pa.getStr()
          

          
proc parts*(sec: JsonNode):Vnode =
  #echo $sec
  result = buildHtml(tdiv()):
    for s in sec:
      part(s)
