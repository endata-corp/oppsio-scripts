#!/usr/bin/env bash

# test ping
# curl http://45.33.123.125:3000/

sudo -u ricardo docker pull endata/oppsio-workers

for i in `seq 1 10`;
do
    echo $i
    docker run -d -it --rm -e action=crawl endata/oppsio-workers
done
