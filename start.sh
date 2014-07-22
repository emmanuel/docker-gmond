#!/bin/bash

GANGLIA_DEBUG_LEVEL=${GANGLIA_DEBUG_LEVEL:-0}

echo "Starting Ganglia collector with debug level $GANGLIA_DEBUG_LEVEL"
/usr/sbin/gmond --debug=$GANGLIA_DEBUG_LEVEL
