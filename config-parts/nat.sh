#!/bin/vbash

# Force DNS
set nat destination rule 102 description 'Force DNS for IoT'
set nat destination rule 102 destination address '!10.5.0.4'
set nat destination rule 102 destination port '53'
set nat destination rule 102 inbound-interface name 'eth1.42'
set nat destination rule 102 protocol 'tcp_udp'
set nat destination rule 102 translation address '10.5.0.4'
set nat destination rule 102 translation port '53'

# Force NTP
set nat destination rule 104 description 'Force NTP for LAN'
set nat destination rule 104 destination address '!10.1.0.1'
set nat destination rule 104 destination port '123'
set nat destination rule 104 inbound-interface name 'eth1'
set nat destination rule 104 protocol 'udp'
set nat destination rule 104 translation address '10.1.0.1'
set nat destination rule 104 translation port '123'

set nat destination rule 105 description 'Force NTP for Servers'
set nat destination rule 105 destination address '!10.69.0.1'
set nat destination rule 105 destination port '123'
set nat destination rule 105 inbound-interface name 'eth1.69'
set nat destination rule 105 protocol 'udp'
set nat destination rule 105 translation address '10.69.0.1'
set nat destination rule 105 translation port '123'

set nat destination rule 106 description 'Force NTP for Trusted'
set nat destination rule 106 destination address '!10.10.10.1'
set nat destination rule 106 destination port '123'
set nat destination rule 106 inbound-interface name 'eth1.10'
set nat destination rule 106 protocol 'udp'
set nat destination rule 106 translation address '10.10.10.1'
set nat destination rule 106 translation port '123'

set nat destination rule 107 description 'Force NTP for IoT'
set nat destination rule 107 destination address '!10.42.42.1'
set nat destination rule 107 destination port '123'
set nat destination rule 107 inbound-interface name 'eth1.42'
set nat destination rule 107 protocol 'udp'
set nat destination rule 107 translation address '10.42.42.1'
set nat destination rule 107 translation port '123'

# LAN -> WAN masquerade
set nat source rule 100 description 'LAN -> WAN'
set nat source rule 100 destination address '0.0.0.0/0'
set nat source rule 100 outbound-interface name 'eth0'
set nat source rule 100 translation address 'masquerade'