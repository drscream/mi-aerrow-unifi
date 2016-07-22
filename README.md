mi-poop-unifi
=============

Please refer to https://github.com/joyent/mibe for use of this repo.
When built, this image provides the Ubiquiti UniFi controller webapp.

Metadata
---------
The following customer_metadata is used:

* system:ssh_disabled - Whether or not to disable the ssh daemon (default: false)

Services
--------
When running, the following services are exposed to the network on both IPv4 and IPv6:

* All unifi ports, most importantly 8080 and 8443; see unifi documentation for which ports do what.
* 22: SSH (if not disabled)

Data
----
This image requires a delegated dataset, on which the unifi controller data is saved.
