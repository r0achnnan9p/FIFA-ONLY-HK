internal_interface=$(ip route|egrep "dev br0|dev br-lan"|head -1|cut -d" " -f3)
iptables -t filter -D FORWARD -i $internal_interface -j fifa-only-hk 2>/dev/null
iptables -t filter -F fifa-only-hk 2>/dev/null
iptables -t filter -X fifa-only-hk 2>/dev/null
iptables -t filter -N fifa-only-hk
iptables -t filter -I FORWARD -i $internal_interface -j fifa-only-hk
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 109.200.215.132/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 109.200.215.140/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 109.200.221.170/31 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 159.153.165.200/31 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 159.153.28.50/31 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 159.153.36.60/30 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 159.153.42.240/31 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 169.38.100.162/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 169.38.100.170/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 169.57.76.162/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 169.57.76.171/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 18.184.251.35/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 18.196.167.42/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 18.197.48.114/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.179.200.211/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.179.200.226/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.179.203.68/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.179.203.80/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.50.104.206/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.50.104.221/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 203.195.120.68/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 203.195.122.124/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 52.58.40.163/32 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 103.194.165.14/32 -j DROP
echo "Done!"
