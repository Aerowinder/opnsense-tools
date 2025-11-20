TESTIP4="1.1.1.1" # Cloudflare
TESTIP6="2001:4860:4860::8888" # Google
WAN_INTERFACE=$(awk -F'"' '/interface/ {print $2; exit}' /var/etc/dhclient_wan.conf) # Spits out interface name, ie. igc0

if ! ping -c 1 -W 5 "$TESTIP4" >/dev/null 2>&1 && ! ping -c 1 -W 5 "$TESTIP6" >/dev/null 2>&1; then
    logger -s -p user.notice -t "ATT-WATCHDOG" "$WAN_INTERFACE outage detected, requesting DHCP renewal..."
    
    /sbin/dhclient -c /var/etc/dhclient_wan.conf $WAN_INTERFACE # IPv4
    
    set pid=`cat /var/run/dhcp6c.pid` # IPv6
    /bin/kill -HUP $pid

fi
