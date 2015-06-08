{:user {:plugins [[venantius/ultra "0.3.3"]
                  [lein-autoreload "0.1.0"]]
        :ultra {:color-scheme :solarized_dark}
        :dependencies [[spyscope "0.1.5"]
                       [org.clojure/tools.trace "0.7.5"]
                       [debugger "0.1.4"]
                       [redl "0.2.4"]]
        :injections [(require 'spyscope.core)
                     (use 'debugger.core)
                     (require 'clojure.tools.trace)
                     (require '[redl complete core])]
        :test-refresh {:quiet true
                       :notify-on-success false
                       :notify-command ["terminal-notifier" "-title" "Tests" "-message"]}}}
