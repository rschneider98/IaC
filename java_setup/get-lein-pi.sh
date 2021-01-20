#!/bin/bash
# This file downloads Leiningen for Clojure projects (which compile to Java) so this is included here
cd /bin
curl -# https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod a+x /bin/lein
lein
