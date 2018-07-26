import vdom, karax, karaxdsl, kajax 

import sugar, json

proc collaborate*(c: JsonNode): VNode =
#  echo $c
  result = buildHtml(section(class="bg-dark", id="collaborate")):
    tdiv(class="container"):
      tdiv(class="row"):
        tdiv(class="col"):
          h2(class="section-heading text-justify"): text "Collaborate"
      tdiv(class="row"):
        tdiv(class="col"):
          h3: text "Volunteer"
          p: text "We are fully loaded with work, and we welcome all proactive members of the community who would like to participate and get involved in the development of CDT."
          p():
            text "Check us on "
            a(href="https://github.com/CollectiveDataTrust"): text "Github"
            text " or send us an "
            a(href="mailto:info@collectivedatatrust.com"): text "Email"
      tdiv(class="row"):
        tdiv(class="col"):
          h3: text "Donate"
          p: text "We are finishing paperwork so we can receive your donations via credit card or bank transfer."
          p:
            text "Leave your email here, let's be in "
            a(href="mailto:info@collectivedatatrust.com"): text " touch"
          
