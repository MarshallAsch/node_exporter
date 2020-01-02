
This container is designed to read the file that is produced from the smartmon.sh script to push it into Prometheus.

Currently this container is designed for x86_64 platforms running linux.

## Running the container

```
$ docker run \
	-d \
	-p 9100:9100 \
	--name node_exporter \
	-e TEXT_DIR=/var/lib/node_exporter/textfile_collector/ \
	--restart unless-stopped \
	marshallasch/node_exporter
```

### Parameters

|  Parameter  | Function |
| ---------- | ------ |
| -e TEXT_DIR | the location of the file produced by smartmon.sh |


