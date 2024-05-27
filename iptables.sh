echo "[i] Installing iptables"

apt install -y iptables

echo "[i] Flushing iptable rules"
iptables -F

echo "[i] Adding default deny firewall policy"

#iptables -P INPUT DROP
#iptables -P OUTPUT DROP 
iptables -P FORWARD DROP 
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT

echo "[i] Configuring loopback traffic rules within firewall policy"
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
iptables -A INPUT -s 127.0.0.0/8 -j DROP

echo "[i] Opening inbound ssh (tcp port 22) connections within the firewall policy" 
iptables -A INPUT -p tcp --dport 22 -m state --state NEW -j ACCEPT

echo "[i] All additional rules will need to be added manually if required"