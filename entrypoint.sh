#!/bin/sh

docker_run="docker run"
docker_run="$docker_run -e POSTGRES_DB=$INPUT_POSTGRESQL_DB"
docker_run="$docker_run -e POSTGRES_USER=$INPUT_POSTGRESQL_USER"
docker_run="$docker_run -e POSTGRES_PASSWORD=$INPUT_POSTGRESQL_PASSWORD"

if [ ! -z "$INPUT_POSTGRESQL_INIT_SCRIPTS" ]
then
  REPO=`echo "$GITHUB_REPOSITORY" | cut -d "/" -f 2`
  INIT_SCRIPT_PATH="/home/runner/work/$REPO/$REPO/$INPUT_POSTGRESQL_INIT_SCRIPTS"
  docker_run="$docker_run -v $INIT_SCRIPT_PATH:/docker-entrypoint-initdb.d"
fi

docker_run="$docker_run -d -p $INPUT_POSTGRESQL_PORT:5432 postgres:$INPUT_POSTGRESQL_VERSION"

if [ ! -z "$INPUT_POSTGRESQL_CONF" ]
then
  docker_run="$docker_run -c '$INPUT_POSTGRESQL_CONF'"
fi

sh -c "$docker_run"
