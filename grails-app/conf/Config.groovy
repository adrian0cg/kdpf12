import de.kaufda.plat_forms.cafman.security.AuthenticationToken

/**
 * @Plat_Forms GM
 */

// locations to search for config files that get merged into the main config
// config files can either be Java properties files or ConfigSlurper scripts

// grails.config.locations = [ "classpath:${appName}-config.properties",
//                             "classpath:${appName}-config.groovy",
//                             "file:${userHome}/.grails/${appName}-config.properties",
//                             "file:${userHome}/.grails/${appName}-config.groovy"]

// if (System.properties["${appName}.config.location"]) {
//    grails.config.locations << "file:" + System.properties["${appName}.config.location"]
// }

grails.app.context = '/'

grails.project.groupId = 'de.kaufda.plat_forms.cafman' // change this to alter the default package name and Maven publishing destination
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
grails.resources.adhoc.patterns = ['/img/*', '/images/*', '/css/*', '/js/*', '/plugins/*']


// The default codec used to encode data with ${}
grails.views.default.codec = "none" // none, html, base64
grails.views.gsp.encoding = "UTF-8"
grails.converters.encoding = "UTF-8"
// enable Sitemesh preprocessing of GSP pages
grails.views.gsp.sitemesh.preprocess = true
// scaffolding templates configuration
grails.scaffolding.templates.domainSuffix = 'Instance'

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
    }
    production {
        grails.logging.jul.usebridge = false
        // TODO: grails.serverURL = "http://www.changeme.com"
    }
}

// log4j configuration
log4j = {
    // Example of changing the log pattern for the default console
    // appender:
    //
    //appenders {
    //    console name:'stdout', layout:pattern(conversionPattern: '%c{2} %m%n')
    //}

    error  'org.codehaus.groovy.grails.web.servlet',  //  controllers
           'org.codehaus.groovy.grails.web.pages', //  GSP
           'org.codehaus.groovy.grails.web.sitemesh', //  layouts
           'org.codehaus.groovy.grails.web.mapping.filter', // URL mapping
           'org.codehaus.groovy.grails.web.mapping', // URL mapping
           'org.codehaus.groovy.grails.commons', // core / classloading
           'org.codehaus.groovy.grails.plugins', // plugins
           'org.codehaus.groovy.grails.orm.hibernate', // hibernate integration
           'org.springframework',
           'org.hibernate',
           'net.sf.ehcache.hibernate'
}

// Added by the Spring Security Core plugin:
grails.plugins.springsecurity.userLookup.userDomainClassName = de.kaufda.plat_forms.cafman.User.name
grails.plugins.springsecurity.authority.className = de.kaufda.plat_forms.cafman.Role.name

// more secure encryption
grails.plugins.springsecurity.password.algorithm = 'bcrypt'

// pessimistic approach, which will secure all pages, if they have no special rule / annotation
grails.plugins.springsecurity.rejectIfNoRule = false
grails.plugins.springsecurity.controllerAnnotations.staticRules = [
        '/js/**':       [AuthenticationToken.ANONYMOUSLY],
        '/css/**':      [AuthenticationToken.ANONYMOUSLY],
        '/images/**':   [AuthenticationToken.ANONYMOUSLY],
        '/img/**':      [AuthenticationToken.ANONYMOUSLY],
        '/static/**':   [AuthenticationToken.ANONYMOUSLY],
        '/':            [AuthenticationToken.ANONYMOUSLY],
        '/**':          [AuthenticationToken.REMEMBERED]
]

// admin user configuration
security.admin.defaults.username = "CafMan.manager"
security.admin.defaults.fullName = "CafMan Manager"
security.admin.defaults.password = "admin"
security.admin.defaults.email = "organizers@plat-forms.org"

// default values for calculation of caffeine uptake
cafman.timeStep.length.millis = 60 //seconds
cafman.unitDose.amount.mg = 150D

cafman.statistics.export.stepSize = 30*60  //30mins
cafman.statistics.weekly.stepSize = cafman.statistics.export.stepSize
cafman.statistics.daily.stepSize = cafman.statistics.export.stepSize
cafman.statistics.daily.displayStepSize = 5*60 //5mins, should be a divisor of oneDay.stepSize!

