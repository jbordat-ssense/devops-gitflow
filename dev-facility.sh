#!/bin/bash

cd /home/jbordat/Documents/Projects/gitflow

echo "use it as root : 'sudo /bin/bash ./dev-facility'"

# inotifywait -e close_write --format %e git-doflow* |
while inotifywait -e close_write --format %e git*; do
  make uninstall && make install
done
