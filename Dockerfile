FROM linuxserver/nzbget

# Install updates and required packages
RUN apk add openvpn \
		iptables && \
# Allow docker to be used as VPN router
    echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf

#Set default container options
ENV OVPNPORT="1194" \
    OVPNCONF="vpn.conf" \
    S6_BEHAVIOUR_IF_STAGE2_FAILS="2"

COPY root/ /
