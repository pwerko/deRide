package com.deride

import grails.plugins.springsecurity.Secured
import org.springframework.beans.BeanWrapper
import org.springframework.beans.PropertyAccessorFactory

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class SitemapController {

    def sitemap = {

        def data = []
        for (controller in grailsApplication.controllerClasses) {
            def controllerInfo = [:]
            if (['autobuses','main','ride','usuario'].contains(controller.logicalPropertyName)) {
                controllerInfo.controller = controller.logicalPropertyName
                List actions = []
                BeanWrapper beanWrapper = PropertyAccessorFactory.forBeanPropertyAccess(controller.newInstance())
                for (pd in beanWrapper.propertyDescriptors) {
                    String closureClassName = controller.getPropertyOrStaticPropertyOrFieldValue(pd.name, Closure)?.class?.name
                    if (closureClassName) actions << pd.name
                }
                controllerInfo.actions = actions.sort()
                data << controllerInfo
            }
        }

        render(contentType: 'text/xml', encoding: 'UTF-8') {
            mkp.yieldUnescaped '<?xml version="1.0" encoding="UTF-8"?>'
            urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9",
                    'xmlns:xsi': "http://www.w3.org/2001/XMLSchema-instance",
                    'xsi:schemaLocation': "http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd") {
                data.each { instance ->
                    instance.actions.each { action ->
                        url {
                            loc(g.createLink(absolute: true, controller: instance.controller == 'main'? action : instance.controller, action: instance.controller == 'main' ? '' : action))
                            changefreq('hourly')
                            priority(1.0)
                        }
                    }
                }
                /*url {
                    loc(g.createLink(absolute: true, controller: 'main', action: 'index'))
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
                }*/

                Content.list().each {content ->
                    url {
                        loc(g.createLink(absolute: true, controller: content.slug))
                        changefreq('hourly')
                        priority(0.8)
                    }
                }
            }
       }
   }
}
