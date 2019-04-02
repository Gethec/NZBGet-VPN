FROM linuxserver/nzbget

# Install updates and required packages
RUN apk add openvpn \
		iptables

#Set default container options
ENV OVPNPORT="1194" \
    OVPNCONF="vpn.conf" \
    S6_BEHAVIOUR_IF_STAGE2_FAILS="2"

COPY root/ /
