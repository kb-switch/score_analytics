#!/bin/bash

ps_id=`docker-compose ps -q`
build="docker-compose build"
up="docker-compose up -d"
down="docker-compose down"

if [ -z "$ps_id" ];
then
	echo Launch...
	eval $build
	open http://localhost:8888
	eval $up
else
	echo Shutdown...
	eval $down
fi