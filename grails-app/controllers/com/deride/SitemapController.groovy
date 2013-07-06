package com.deride

class SitemapController {

    def sitemap = {
        render(contentType: 'text/xml', encoding: 'UTF-8') {
            mkp.yieldUnescaped '<?xml version="1.0" encoding="UTF-8"?>'
            urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9",
                    'xmlns:xsi': "http://www.w3.org/2001/XMLSchema-instance",
                    'xsi:schemaLocation': "http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd") {
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'index'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'autobuses'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'aviso_legal'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'ayuda'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'buscar'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'como_usar'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'contacto'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'medio_ambiente'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'plataforma_gratuita'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'preguntas_frecuentes'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'publicar_viaje'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'seguridad_y_confianza'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'sobre_nosotros'))
                    changefreq('hourly')
                    priority(1.0)
                }
                url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'tdu'))
                    changefreq('hourly')
                    priority(1.0)
                }
                //more static pages here
                //add some dynamic entries
                /*SomeDomain.list().each {domain->
                url {
                    loc(g.createLink(absolute: true, controller: 'some', action: 'view', id: domain.id))
                    changefreq('hourly')
                    priority(0.8)
                }*/
            }
       }
   }
}
