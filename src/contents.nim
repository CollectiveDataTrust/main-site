
import json

# TODO put this section into the content object (?)
var menuList* = %* [
  {"href": "#why", "text": "Why"},
  {"href": "#what", "text": "What"},
  {"href": "#how", "text": "How"},
  {"href": "#documentation", "text": "Documentation"},
  {"href": "#collaborate", "text": "Collaborate"},
  {"href": "#contact", "text": "contact"},
  {"href": "https://collectivedatatrust.auth.us-east-1.amazoncognito.com/login?response_type=code&client_id=25mmtrug0ec57e9vfj0rua2551&redirect_uri=https://www.collectivedatatrust.com", "text": "Sign Up"}
]


var cont* = %* {
  "default-lang": "en",
  "en": {
    "lang-title": "Language",
    "langs": [
      {
        "en": "English"
      },
      {
        "es": "Spanish"
      }
    ],
    "page_title": "Collective Data Trust",
    "sections": [
      {
        "title": "Why",
        "type": "text",
        "images": ["img/guy-data.svg"],
        "contents": [
          "Imagine that someone could pay you just for existing, and sharing some information about your existence.",
          "Your data is your asset, because it has value and is used in transactions that moves the information economy.",
          "Internet and Machines exist because of us, and we should have a say on the evolution of both.",
          "This is not about the money made out of your data with no benefit for you. This is about the decisions that affects you as the user.",
          "We don’t want to give up to our lifestyle and needs, just to protect our data. What we want is full control and ownership.",
          "This is not an issue of policies and regulations, this is an issue of CONTROL and OWNERSHIP."
        ]
      },
      {
        "title": "What",
        "type": "text",
        "images": ["img/data-found.svg", "img/complete-monetization.svg"],
        "contents": [
          "This is The Collective Data Trust.",
          "We are a community of internet users where we understand the importance of Artificial Intelligence development, and the urgency of better Data Management and Monetization practices, so we have created the Collective Data Trust (CDT).",
          "Collective Data Trust allows you to become owner of the company that monetizes your data.",
          "The Trust allows its Beneficiaries to take advantage from any monetization process that occurs involving his data while having full control about which data is to be used, how it will be used, and by whom.",
          "The Beneficiary's account is integrated by a Data-as-an-asset portfolio, through a collaborative model for Artificial Intelligence development and Collective Data Monetization.",
          "Collective Data Trust is a fiduciary entity, legally established under the State of Delaware, with registration No. 6855308, and by which, once you sign in, you become a beneficial owner proportionally to your own asset integration. By becoming a Beneficiary of the Trust, the USER is turned into an OWNER"
        ]
      },
      {
        "title": "How",
        "type": "text",
        "images": ["img/data-money.svg", "img/info-economy.svg"],
        "contents": [
          "CDT looks to contribute with a universal basic income, but instead of hopping for some social justice or claiming over economics rights, we take the system as it is, and we look for ways to make it happen.",
          "CDT focuses on the possibility that Data has to produce income to its beneficiaries.",
          "By signing in, all internet users can now become owners of the company that monetizes their data.",
          "By Monetization we refer to processes aligned to our mission, that will create and increase the value of the collective data, through products development, or through direct monetization and applied services like marketing and research. Once you have signed in, you are no longer just an user, you are the owner.",
          "Once the owners accumulates a critical mass of data into the collective digital assets, the Trust, can optimize monetization process and start giving tangible results to the owners.",
          "At the same time, this mass of data will be used to train and enhance artificial intelligence powered services and products, that will be at the service of the beneficiaries and under the individual control of each of them.",
          "The Collective Data Monetization System is where we secure a private and safe environment for a user-based, data-centric distributed economy, beneficial to all its participants.",
          "Each beneficiary can participate in different ways:",
          "Passive monetization:",
          "You choose what you will like to share, and we will create value out of it.",
          "Active Monetization:",
          "Teach the machine, answer paid questions, participate in rewarded research campaigns, and sell specifically demanded data, under your own terms."
        ]
      }
    ],
    "documentation": {
      "title": "Documentation",
      "items": [
        {
          "text": "Check the concept of Public Collectively Owned Property here, on ",
          "link": "https://www.collectivedatatrust.com/CDT-PubliCOw-SP.pdf",
          "link-label": "Short Paper"
        },
        {
          "text": "Check the legal foundations of the Community here, on ",
          "link": "https://www.collectivedatatrust.com/CDT-DeclarationOfTrust.pdf",
          "link-label": "Declaration of Trust"
        },
        {
          "text": "Check how we have built a data-as-an-asset monetization unit here, on ",
          "link": "https://www.collectivedatatrust.com/Class-I-Personal-Beneficial-Unit-Series.pdf",
          "link-label": "Constitution of Class: Personal Beneficial Unit"
        },
        {
          "text": "Edit discuss and fork in ",
          "link": "https://github.com/CollectiveDataTrust/contracts",
          "link-label": " GitHub"
        }
      ],
      "collaborate":{
        "title": "Colaborate",
        "items":[
          {
            "volunteer":{
              "title": "Volunteer",
              "text": "We are fully loaded with work, and we welcome all proactive members of the community who would like to participate and get involved in the development of CDT.",
              "links": [
                {
                
                },

              ] 
            }
        } ]

      }
  },
  "es": {
    "lang-title": "Idioma",
    "langs": [
      {
        "en": "Ingles"
      },
      {
        "es": "Español"
      }
    ],
    "page_title": "Collective Data Trust",
    "label": "Español",
    "sections": [
      {
        "title": "Por qué",
        "type": "text",
        "image": "img/1.jpg",
        "contents": [
          "Imagínate que alguien pudiera pagarte tan solo por existir y compartir información respecto a tu existencia.",
          "Tus datos son tus activos, porque tienen un valor, que se usa en transacciones, que mueven la economía de la información.",
          "Nosotros somos la razón de existir para el internet y las máquinas, deberíamos poder opinar sobre la evolución de ambos.",
          "No se trata del dinero que tus datos producen sin darte ningún beneficio. Se trata de las decisiones que te afectan como usuario.",
          "Nosotros no queremos renunciar a nuestro estilo de vida y nuestras necesidad, solo para proteger nuestros datos. Lo que queremos es control total sobre nuestra propiedad.",
          "Este no es un asunto de políticas y regulaciones, este es un asunto de CONTROL y PROPIEDAD"
        ]
      },
      {
        "title": "Qué",
        "type": "text",
        "image": "img/2.jpg",
        "contents": [
          "Esto es Collective Data Trust, un fideicomiso colectivo de datos.",
          "Somos una comunidad de usuarios de internet, donde entendemos la importancia del desarrollo seguro de la inteligencia y artificial, y la urgencia de mejores prácticas en cuanto a manejo de datos y monetización, y por eso hemos creado el Fideicomiso Colectivo de Datos (CDT).",
          "Collective Data Trust te permite convertirte en propietario de la empresa que monetiza tus datos.",
          "El Fideicomiso le permite a sus beneficiario poder aprovechar cualquier proceso de monetización que ocurra en relación a sus datos, mientras conserva el absoluto control sobre qué datos serán utilizados, como serán monetizados y quién tendrá acceso a ellos."
        ]
      },
      {
        "title": "Cómo",
        "type": "text",
        "image": "img/3.jpg",
        "contents": [
          "CDT busca contribuir con un ingreso básico universal, pero de apuntar a alguna justicia social, o de reclamar derechos socio-económicos, nosotros tomamos las cosas tal y como son, y nos enfocamos en la capacidad que tienen los datos, de generar ingresos para sus propietarios.",
          "Con registrarse, ahora todos los usuarios de internet podemos convertirnos en propietarios de las empresas que monetizan nuestros datos.",
          "Por “Monetización” nos referimos a procesos que están alineados a nuestra misión, que  crearán y aumentaran el valor del colectivo de datos, a través del desarrollo de productos o de la monetización directa en servicios aplicados a áreas como el marketing. ",
          "Una vez que los Beneficiarios acumulan un masa crítica de datos dentro de sus activos digitales, el fideicomiso puede optimizar los procesos de monetización, de manera a generar resultados tangibles para sus beneficiarios.",
          "Al mismo tiempo, esta masa de datos será utilizada para entrenar y mejorar servicios y productos basados en inteligencia artificial, que estarán al servicio de los beneficiarios, bajo control individual de cada uno."
        ]
      }
    ],
    "documentation": {
      "title": "Documentación",
      "items": [
        {
          "text": "Check the concept of Public Collectively Owned Property here, on ",
          "link": "https://www.collectivedatatrust.com/CDT-PubliCOw-SP.pdf",
          "link-label": "Short Paper"
        },
        {
          "text": "Check the legal foundations of the Community here, on ",
          "link": "https://www.collectivedatatrust.com/CDT-DeclarationOfTrust.pdf",
          "link-label": "Declaration of Trust"
        },
        {
          "text": "Check how we have built a data-as-an-asset monetization unit here, on",
          "link": "https://www.collectivedatatrust.com/Class-I-Personal-Beneficial-Unit-Series.pdf",
          "link-label": "Constitution of Class: Personal Beneficial Unit"
        },
        {
          "text": "Edit discuss and fork in ",
          "link": "https://github.com/CollectiveDataTrust/contracts",
          "link-label": " GitHub"
        }
      ]
    }
  }
}
}
