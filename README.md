# ![NZBGet Icon](https://bitbucket.org/Gethec/nzbget-vpn/raw/master/resources/nzbget-small.png) NZBGet-VPN

## Disclaimer
As with anything else, exposing your system to the Internet incurs risks!  This container does its best to be as secure as possible, but makes no guarantees to being completely impenetrable.  Use at your own risk, and feel free to suggest changes that can further increase security.

## About
NZBGet-VPN is [Linuxserver's](https://www.linuxserver.io/) excellent [NZBGet container](https://github.com/linuxserver/docker-nzbget) with OpenVPN support added onto it.  The goal for this is to allow for users to channel NZBGet's traffic through a VPN connection.

Since this is basically their container, I encourage anyone who wants to use it to look at their documentation for the configuration of NZBGet itself.  This document will only discuss the configuration of the VPN element.

## Features
* Linuxserver's excellent and constantly updated container used as a base
* OpenVPN installation to tunnel container traffic through

## Configuration
The system comes supplied with predefined variables.  If you wish to change them, please see the table below for instructions. 

#### Container variables
| Variable | Default | Required | Example |
|----------|---------|----------|---------|
| OVPNPORT | 1194 | Only if your OpenVPN server uses a port other than the default |  `--env OVPNPORT=1198` |
| OVPNCONF | vpn.conf | No | `--env OPVNCONF=config.conf` |


#### Volumes
No additional volumes are added to the base container's configuration.

#### Ports
No additional ports are added to the base container's configuration.

## Setup
To get this container to run, some additional parameters need to be added to the base container's command:
*  `--cap-add=NET_ADMIN` - This allows IPTables to function
*  `--device=/dev/net/tun` - The container does not include this device, and rather than re-add the package necessary to create it, it is easier to simply pass in the host's

## Changelog
* 0.0.1 - Initial release
