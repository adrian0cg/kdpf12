// environment specific settings
environments {
    development {
        grails {
            mongo {
                host = "160.45.116.138"
                port = 27017
                databaseName = "cafman_dev_abcded"
            }
        }
    }

    test {
        grails {
            mongo {
                host = "160.45.116.138"
                port = 27017
                databaseName = "cafman_test"
            }
        }
    }

    production {
        grails {
            mongo {
                host = "160.45.116.138"
                port = 27017
                databaseName = "cafman_prod"
            }
        }
    }
}
