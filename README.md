# bigbang

A series of scrips designed to speed up deployment and configuration of edge compute / VMs.

**bigbangkubernetes.sh**

This script installs Docker and a K3s master (server) on ARM64 running Linux.  The script returns the curl command, server URL and KEY required to install and connect K3s worker nodes to the cluster.

The script can be executed from the edge/VM by running the following command:

`wget -O - https://raw.githubusercontent.com/LukeRParker/bigbang/main/bigbangkubernetes.sh | sudo bash`

***TODO....***

- [ ] Create a version of the script for worker nodes.

- [ ] Look at dashboards and accessing nodes within the cluster.
