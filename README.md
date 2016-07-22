# mi-core-unifi

This repository is based on [Joyent mibe](https://github.com/joyent/mibe). Please note this repository should be build with the [mi-core-base](https://github.com/skylime/mi-core-base) mibe image.

## description

When built, this image provides the Ubiquiti UniFi controller webapp.

## mdata variables

No mdata variable is required. Everything could be automatically generated on
provision state.

## services

When running, the following services are exposed to the network on both IPv4 and IPv6:

* All unifi ports, most importantly 8080 and 8443; see unifi documentation for which ports do what.
* 22: SSH (if not disabled)
