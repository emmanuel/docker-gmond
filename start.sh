#!/bin/bash

GMOND_DEBUG_LEVEL=${GMOND_DEBUG_LEVEL:-0}

echo "Starting Ganglia collector with debug level $GMOND_DEBUG_LEVEL"
/usr/sbin/gmond --debug=$GMOND_DEBUG_LEVEL
