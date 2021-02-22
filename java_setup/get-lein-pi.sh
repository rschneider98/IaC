#!/bin/bash
# This file downloads Leiningen for Clojure projects (which compile to Java) so this is included here
cd /bin
sudo curl -# -o lein https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo chmod a+x /bin/lein
lein
