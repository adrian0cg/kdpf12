/**
 * @author Patrick Jungermann
 * @Plat_Forms GM
 */

import grails.util.GrailsUtil

final String minInfix = GrailsUtil.isDevelopmentEnv() ? '' : '.min'

modules = {

    application {
        resource url:'js/application.js'
    }

    'bootstrap-css' {
        defaultBundle 'bundle_bootstrap'

        resource url: [dir: 'css', file: "bootstrap${minInfix}.css"], disposition: 'head', exclude: 'minify'
        resource url: [dir: 'css', file: "bootstrap-responsive${minInfix}.css"], disposition: 'head', exclude: 'minify'
    }

    'bootstrap-js' {
        defaultBundle 'bundle_bootstrap'
        dependsOn 'jquery'

        resource url: [dir: 'js', file: "bootstrap${minInfix}.js"], exclude: 'minify'
    }

    bootstrap {
        defaultBundle 'bundle_bootstrap'

        dependsOn 'bootstrap-css'
        dependsOn 'bootstrap-js'
    }

    html5shiv {
        // HTML5 shim, for IE6-8 support of HTML5 elements
        resource url: 'http://html5shim.googlecode.com/svn/trunk/html5.js',
                linkOverride: 'http://html5shim.googlecode.com/svn/trunk/html5.js',
                disposition: 'head',
                wrapper: { s -> "<!--[if lt IE 9]>${s}<![endif]-->"}
    }

}