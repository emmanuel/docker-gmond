# Glue for running Ganglia on CoreOS

The Dockerfile builds on Ubuntu Core and simply installs the `ganglia-monitor` package from the Ubuntu package archive.

My primary intention for Ganglia is to use it as an sFlow collector. To which end, the included `gmond.conf` basically turns off everything except sFlow collection.

The systemd unit file (`ganglia-monitor.service`) is pretty darn simple, too.
