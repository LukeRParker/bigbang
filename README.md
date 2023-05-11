# bigbang

A series of scrips designed to speed up deployment and configuration of edge compute / VMs.

**bigbangkubernetes.sh

This script installs Docker and a K3s master (server) on ARM64 running Linux.  The script returns the curl command, server URL and KEY required to install and connect K3s worker nodes to the cluster.
