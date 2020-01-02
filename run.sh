#!/bin/bash

if [ -z "$TEXT_DIR" ]
then
	TEXT_DIR="/textfile_collector"
fi

if [ -z "$ARGS" ]
then
    ARGS="--no-collector.arp --no-collector.bcache --no-collector.bonding --no-collector.cpu --no-collector.cpufreq --no-collector.edac --no-collector.entropy --no-collector.filefd --no-collector.hwmon --no-collector.ipvs --no-collector.loadavg --no-collector.mdadm --no-collector.meminfo --no-collector.netdev --no-collector.netstat --no-collector.nfs --no-collector.nfsd --no-collector.stat --no-collector.time --no-collector.timex --no-collector.uname --no-collector.vmstat --no-collector.xfs --no-collector.zfs"
fi


./node_exporter $ARGS --collector.textfile.directory $TEXT_DIR
