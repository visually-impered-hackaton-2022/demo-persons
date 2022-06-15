#!/usr/bin/env bash

# run POSTGRESQL DATABASE with podman as standalone or in the pod

#create pod first
# for example combination with RedHat sso
#sudo podman pod create -l sso --name sso73 -p 8080:8080 -p 8443:8443

#IMAGE="registry.centos.org/centos/postgresql-96-centos7"
IMAGE="quay.io/centos7/postgresql-10-centos7:latest"
#IMAGE="registry.redhat.io/rhel8/postgresql-10"
#IMAGE="registry.redhat.io/rhscl/postgresql-10-rhel7"

#POD=sso
uid=$(id -u)
USER_ID=uid

#SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
SCRIPT_DIR=`dirname "$0"`

if [ "x$POSTGRESQL_USER" = "x" ];then
  POSTGRESQL_USER="keycloak"
fi


if [ "x$POSTGRESQL_PASSWORD" = "x" ]; then
  POSTGRESQL_PASSWORD="keycloak"
fi


if [ "x$POSTGRESQL_DATABASE" = "x" ]; then
  POSTGRESQL_DATABASE="root"
fi




## get UID
uid=$(id -u)

echo "run container as user $uid"
echo "using docker image: $IMAGE"
if [ -z "$1" ]
  then
    echo "No POD name as argument run standalone"
    podman run --rm -d -u $uid  --name  postgresql-database \
     -e POSTGRESQL_USER=$POSTGRESQL_USER -e POSTGRESQL_PASSWORD=$POSTGRESQL_PASSWORD \
     -e POSTGRESQL_DATABASE=$POSTGRESQL_DATABASE \
     -p 5432:5432 \
     $IMAGE

 else
    echo "joining pod: $1"
    # run command to join the pod
    CMD="podman run  -d -u $uid --pod "$1" --name  postgresql-database \
     -e POSTGRESQL_USER=$POSTGRESQL_USER -e POSTGRESQL_PASSWORD=$POSTGRESQL_PASSWORD \
     -e POSTGRESQL_DATABASE=$POSTGRESQL_DATABASE \
     $IMAGE"
    echo $CMD
    $CMD


fi

echo "wait database to start"
sleep 15
echo "check connection"
podman exec  postgresql-database pg_isready





run_sql_imports() {
	
	echo "run optional sql imports"

	podman cp $SCRIPT_DIR/export.sql postgresql-database:/tmp

	podman exec postgresql-database bash -c "psql root  < /tmp/export.sql"

}




#run_sql_imports

