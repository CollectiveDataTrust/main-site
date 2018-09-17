
include karax / prelude 
import karax / prelude
import  karax / [errors, kdom, kajax, vstyles]

import sugar, json
import sections, placeholder

import components / [documentation, collaborate, contact, menu]

const headers = [(cstring"Content-Type", cstring"application/json")]

var lang = cont["default-lang"].getStr()

var loadedData = cont
var c: JsonNode

proc loadData() = 
  ajaxGet("/data_cdt_org.json",
          headers,
          proc(stat:int, resp:cstring) =
            loadedData = parseJson($resp)
  )
  
proc logoheader*(logo, title: string):Vnode =
    result = buildHtml(tdiv()):
      header(class="masthead"):
        tdiv(class="container"):
          tdiv(class="intro-text"):
            img(class="mobil", src=logo, alt=title)

proc MainContainer(c: JsonNode): VNode =
  result = buildHtml(tdiv()):
    menuContent(c["menu"])
    logoheader(c["logo"].getStr(), c["page_title"].getStr())
    parts(c["sections"])
    documentation(c["documentation"])
    collaborate(c)
    contact(c)
    script( src="js/agency.js")

proc createDOM(data: RouterData): VNode =
  if c.isNil:
    loadData()
  c = loadedData[lang]
  result = buildHtml(tdiv()):
    MainContainer(c)

setRenderer createDOM
