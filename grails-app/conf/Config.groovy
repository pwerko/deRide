// locations to search for config files that get merged into the main config
// config files can either be Java properties files or ConfigSlurper scripts

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if (System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }


grails.project.groupId = appName // change this to alter the default package name and Maven publishing destination
grails.mime.file.extensions = true // enables the parsing of file extensions from URLs into the request format
grails.mime.use.accept.header = false
grails.mime.types = [ html: ['text/html','application/xhtml+xml'],
                      xml: ['text/xml', 'application/xml'],
                      text: 'text/plain',
                      js: 'text/javascript',
                      rss: 'application/rss+xml',
                      atom: 'application/atom+xml',
                      css: 'text/css',
                      csv: 'text/csv',
                      all: '*/*',
                      json: ['application/json','text/json'],
                      form: 'application/x-www-form-urlencoded',
                      multipartForm: 'multipart/form-data'
                    ]

// URL Mapping Cache Max Size, defaults to 5000
//grails.urlmapping.cache.maxsize = 1000

// What URL patterns should be processed by the resources plugin
grails.resources.adhoc.patterns = ['/images/*', '/css/*', '/js/*', '/plugins/*']
grails.resources.modules = {
  /*overrides {
    'jquery-theme' {
      resource id:'theme', url:'/css/path/to/jquery-ui-1.8.17.custom.css'
    }
  }*/
}

// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

// defaullt constraint to dateCreated and lastUpdated
grails.gorm.default.constraints = {
    'dateCreated'(display: false, nullable: true)
    'lastUpdated'(display: false, nullable: true)
}

// Set jquery as the default javascript library
grails.views.javascript.library="jquery"

// Set to false to use the new Grails 1.2 JSONBuilder in the render method
grails.json.legacy.builder = false
// enabled native2ascii conversion of i18n properties files
grails.enable.native2ascii = true
// packages to include in Spring bean scanning
grails.spring.bean.packages = []
// whether to disable processing of multi part requests
grails.web.disable.multipart=false

// request parameters to mask when logging exceptions
grails.exceptionresolver.params.exclude = ['password']

// enable query caching by default
grails.hibernate.cache.queries = true

// set per-environment serverURL stem for creating absolute links
environments {
    development {
        grails.logging.jul.usebridge = true
        log4j = {
          //Enable Hibernate SQL logging with param values
          //trace 'org.hibernate.type'
          appenders {
            file name: 'grailsfile', file: 'target/grails.log', layout: pattern(conversionPattern: "[%d{ISO8601}]\t%p\t%c{2}\t%m%n")
            file name: 'rootlog', file: 'target/root.log', layout: pattern(conversionPattern: "[%d{ISO8601}]\t%p\t%c{2}\t%m%n")
            file name: 'devfile', file: 'target/development.log', layout: pattern(conversionPattern: "[%d{ISO8601}]\t%p\t%c{2}\t%m%n")
          }

          info additivity: false, grailsfile: 'org.codehaus.groovy.grails, com.orientechnologies'
          all additivity: false, devfile: [
            'grails.app.controllers.com.deride',
            'grails.app.domain.com.deride',
            'grails.app.services.com.deride',
            'grails.app.taglib.com.deride',
            'grails.app.conf.com.deride',
            'grails.app.filters.com.deride',
            'grails.app.jobs',
            'com.deride',
            'grails.plugin.quartz2',
            'org.quartz'
          ]
        }
    }
    production {
        grails.logging.jul.usebridge = false
        grails.serverURL = "http://www.deride.com.mx"
        // log4j configuration
        log4j = {
            // Example of changing the log pattern for the default console
            // appender:
            //
            appenders {
                console name: 'console', layout: pattern(conversionPattern: "[%d{ISO8601}]\t%p\t%c{2}\t%m%n")
                appender new org.apache.log4j.DailyRollingFileAppender(
                  layout:pattern(conversionPattern: '[%d{ISO8601}]\t%p\t%c{2}\t%m%n'),
                  name:"logfile", fileName:"/home/kavsilxa/tomcat/logs/application.log"
                )
            }

            info 'grails.app.controllers.com.deride',
                  'grails.app.domain.com.deride',
                  'grails.app.services.com.deride',
                  'grails.app.taglib.com.deride',
                  'grails.app.conf.com.deride',
                  'grails.app.filters.com.deride',
                  'com.deride',
                  'grails.app.jobs'

            root {
              info 'logfile'
              additivity = true
            }
        }
    }
}
