#! /bin/bash

. "$(dirname $0)/env.sh"

### Run with deepdive binary:
deepdive -c $APP_HOME/application.conf
### Compile and run:
# sbt "run -c $APP_HOME/application.conf"