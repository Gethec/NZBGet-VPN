FROM linuxserver/nzbget

# Install updates and required packages
RUN apk add openvpn \
		iptables && \
# Adjust networking settings
    echo "net.ipv4.ip_forward = 1" >> /etc/sysctl.conf

#Set default container options
ENV OVPNPORT="1194" \
    OVPNCONF="vpn.conf" \
    S6_BEHAVIOUR_IF_STAGE2_FAILS="2"

COPY root/ /
VOLUME /config /downloads
EXPOSE 6789 1194/udp
