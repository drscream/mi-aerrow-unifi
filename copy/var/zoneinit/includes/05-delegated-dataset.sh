#!/bin/bash
UUID=$(mdata-get sdc:uuid)
DDS=zones/$UUID/data

if zfs list ${DDS} 1>/dev/null 2>&1; then
	zfs create ${DDS}/unifi-data || true
	zfs create ${DDS}/unify-logs || true
	zfs create ${DDS}/unify-work || true

	zfs set mountpoint=/opt/local/UniFi/data ${DDS}/unify-data
	zfs set mountpoint=/opt/local/UniFi/logs ${DDS}/unify-logs
	zfs set mountpoint=/opt/local/UniFi/work ${DDS}/unify-work

	zfs set compression=lz4 ${DDS}
fi
