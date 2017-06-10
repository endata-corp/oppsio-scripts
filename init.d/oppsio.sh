#! /bin/sh
# /etc/init.d/oppsio.sh
#

cd /oppsio

# sleep a few seconds to enable partial reboots to occur
sleep 30

# get recent scripts
git clone https://github.com/endata-corp/oppsio-scripts.git
cd /oppsio/oppsio-scripts
git pull origin master

# make scripts executable
chmod 755 /oppsio/oppsio-scripts/*.sh

# run script
/oppsio/oppsio-scripts/start-workers.sh

exit 0
