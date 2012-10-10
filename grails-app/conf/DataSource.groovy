// environment specific settings
environments {
    development {
        grails {
            mongo {
                host = "localhost"
                port = 27017
                databaseName = "cafman_dev"
            }
        }
    }

    test {
        grails {
            mongo {
                host = "localhost"
                port = 27017
                databaseName = "cafman_test"
            }
        }
    }

    production {
        grails {
            mongo {
                host = "localhost"
                port = 27017
                databaseName = "cafman_prod"
            }
        }
    }
}
