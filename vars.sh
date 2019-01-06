
# docker image naming
TAG_BASE="pborky/softether"
TAG_VERSION=4.28-9669
# github 
GITHUB_REPO="SoftEtherVPN/SoftEtherVPN_Stable"
BUILD_VERSION=v${TAG_VERSION}-beta
ARCHIVE=${BUILD_VERSION}.tar.gz
ARCHIVE_SHA256=fbf6e04c4451d0cb1555c3a53c178b5453c7d761119f82fd693538c9f115fecb

# name of runing container
CONT_NAME="vpn"
# new unprivileged user
CONT_UID=666
CONT_GID=666
CONT_USER="vpn"
CONT_HOME="/usr/vpnserver"
# groups of the new user, comma sepparated list
CONT_GROUPS=

# RUNTIME
VOLUMES=$PWD/vpn_server.config:$CONT_HOME/vpn_server.config,softether_log:/var/log/vpnserver
DEVICES=
PUBLISH_PORTS=500,4500,1701,5555
HOST_IP=127.0.0.1 # set desired interface IP address
CAPS=NET_ADMIN,NET_RAW,SYSLOG

