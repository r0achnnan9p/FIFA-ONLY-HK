internal_interface=$(ip route|egrep "dev br0|dev br-lan"|head -1|cut -d" " -f3)
iptables -t filter -D FORWARD -i $internal_interface -j fifa-only-hk 2>/dev/null
iptables -t filter -F fifa-only-hk 2>/dev/null
iptables -t filter -X fifa-only-hk 2>/dev/null
iptables -t filter -N fifa-only-hk
iptables -t filter -I FORWARD -i $internal_interface -j fifa-only-hk
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 109.200.215.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 109.200.215.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 109.200.221.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 159.153.165.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 159.153.28.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 159.153.36.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 159.153.42.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 169.38.100.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 169.38.100.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 169.57.76.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 169.57.76.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 18.184.251.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 18.196.167.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 18.197.48.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.179.200.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.179.200.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.179.203.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.179.203.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.50.104.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 185.50.104.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 203.195.120.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 203.195.122.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 52.58.40.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 103.194.165.0/24 -j DROP
iptables -t filter -A fifa-only-hk -i $internal_interface -p udp -d 18.162.38.0/24 -j DROP
echo "Done!"
