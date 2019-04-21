# ![NZBGet Icon](https://bitbucket.org/Gethec/nzbget-vpn/raw/master/resources/nzbget-small.png) NZBGet-VPN

## Disclaimer
As with anything else, exposing your system to the Internet incurs risks!  This container does its best to be as secure as possible, but makes no guarantees to being completely impenetrable.  Use at your own risk, and feel free to suggest changes that can further increase security.

## About
NZBGet-VPN is [Linuxserver's](https://www.linuxserver.io/) excellent [NZBGet container](https://github.com/linuxserver/docker-nzbget) with OpenVPN support added onto it.  The goal for this is to allow users to channel NZBGet's traffic through a VPN connection.

Since this is basically their container, I encourage anyone who wants to use it to look at their documentation for the configuration of NZBGet itself.  This document will only discuss the configuration of the VPN element.

## Features
* Linuxserver's excellent and constantly updated container used as a base
* Straightforward OpenVPN implementation to tunnel container traffic through

## Setup
The additional capability `--cap-add=NET_ADMIN` is required by IPTables to work.  Simply add this to the run command.

## Configuration
The system comes supplied with predefined variables.  If you wish to change them, please see the table below for instructions. 

#### Container variables
|Variable|Default|Required|Example|
|:---:|:---:|:---:|:---:|
|OVPNPORT|1194|If your OpenVPN server uses a non-default port|`--env OVPNPORT=1198`|
|OVPNCONF|vpn.conf|No|`--env OPVNCONF=config.conf`|


#### Volumes
No additional volumes have been added.

#### Ports
No additional ports have been added.

## Changelog
* 0.0.2 - Added install of tun adapter on startup to remove need for host device
* 0.0.1 - Initial release
