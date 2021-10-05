FROM linuxserver/nzbget:latest

#Set default container options
ENV OVPNPORT="1194" \
    OVPNCONF="vpn.conf" \
    S6_BEHAVIOUR_IF_STAGE2_FAILS="2"

# Install updates and required packages
RUN apk add --no-cache \
        openvpn \
        iptables

COPY root/ /