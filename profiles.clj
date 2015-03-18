{:user {:plugins [[lein-exec "0.3.3"]
                  [cider/cider-nrepl "0.9.0-SNAPSHOT"]
                  [lein-immutant "1.2.1"]
                  [lein-gen "0.2.1"]
                  [lein-ritz "0.7.0"]
                  [lein-sub "0.3.0"]]
        :generators [[lein-gen/generators "0.2.1"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.7"]]
        :repl-options {:nrepl-middleware
                 [cider.nrepl.middleware.classpath/wrap-classpath
                  cider.nrepl.middleware.complete/wrap-complete
                  cider.nrepl.middleware.info/wrap-info
                  cider.nrepl.middleware.inspect/wrap-inspect
                  cider.nrepl.middleware.macroexpand/wrap-macroexpand
                  cider.nrepl.middleware.resource/wrap-resource
                  cider.nrepl.middleware.stacktrace/wrap-stacktrace
                  cider.nrepl.middleware.test/wrap-test
                  cider.nrepl.middleware.trace/wrap-trace]}}}
