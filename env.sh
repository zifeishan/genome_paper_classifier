#! /bin/bash

export DEEPDIVE_HOME=/Users/zifei/repos/research/deepdive/
export APP_HOME=`pwd`

# Machine Configuration
export MEMORY="4g"
export PARALLELISM=4

# Database Configuration
export DBNAME=genomics
export PGUSER=${PGUSER:-`whoami`}
export PGPASSWORD=${PGPASSWORD:-}
export PGPORT=${PGPORT:-5432}
export PGHOST=${PGHOST:-localhost}

# SBT Options
export SBT_OPTS="-Xmx$MEMORY"

# Using ddlib
export PYTHONPATH=$DEEPDIVE_HOME/ddlib:$PYTHONPATH
