#!/bin/vbash

###
# set service dhcp-server shared-network-name VLAN_NAME subnet 10.x.x.x/24 static-mapping DEVICE_NAME ip-address '10.x.x.2'
# set service dhcp-server shared-network-name VLAN_NAME subnet 10.x.x.x/24 static-mapping DEVICE_NAME mac-address 'MA:CA:DD:RE:SS'
###

# Global options
set service dhcp-server global-parameters 'option system-arch code 93 = unsigned integer 16;'

# Guest VLAN
set service dhcp-server shared-network-name GUEST authoritative
set service dhcp-server shared-network-name GUEST ping-check
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 default-router '192.168.2.1'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 lease '86400'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 start '192.168.2.10'
set service dhcp-server shared-network-name GUEST subnet 192.168.2.0/24 range 0 stop '192.168.2.254'

# IoT VLAN
set service dhcp-server shared-network-name IOT authoritative
set service dhcp-server shared-network-name IOT ping-check
set service dhcp-server shared-network-name IOT subnet 10.42.42.0/24 default-router '10.1.3.1'
set service dhcp-server shared-network-name IOT subnet 10.42.42.0/24 domain-name 'outsideour.casa'
set service dhcp-server shared-network-name IOT subnet 10.42.42.0/24 lease '86400'
set service dhcp-server shared-network-name IOT subnet 10.42.42.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name IOT subnet 10.42.42.0/24 range 0 start '10.42.42.11'
set service dhcp-server shared-network-name IOT subnet 10.42.42.0/24 range 0 stop '10.42.42.254'

# LAN
set service dhcp-server shared-network-name LAN authoritative
set service dhcp-server shared-network-name LAN ping-check
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 default-router '10.1.0.1'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 lease '86400'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 start '10.1.0.200'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 range 0 stop '10.1.0.254'

set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping spiritweaver ip-address '10.1.0.2'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping spiritweaver mac-address '74:83:c2:d0:71:39'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping us24g1 ip-address '10.1.0.3'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping us24g1 mac-address '74:ac:b9:da:c5:ac'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping u6lr ip-address '10.1.0.4'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping u6lr mac-address 'ac:8b:a9:33:46:95'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping uapacpro ip-address '10.1.0.5'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping uapacpro mac-address '80:2a:a8:16:79:71'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usppdupro ip-address '10.1.0.6'
set service dhcp-server shared-network-name LAN subnet 10.1.0.0/24 static-mapping usppdupro mac-address 'e4:38:83:89:b9:e3'

# Servers VLAN
set service dhcp-server shared-network-name SERVERS authoritative
set service dhcp-server shared-network-name SERVERS ping-check
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 default-router '10.69.0.1'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 domain-name 'outsideour.casa'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 lease '86400'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 range 0 start '10.69.0.200'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 range 0 stop '10.69.0.254'

set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 subnet-parameters 'allow bootp;'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 subnet-parameters 'allow booting;'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 subnet-parameters 'next-server 10.69.0.1;'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 subnet-parameters 'if exists user-class and option user-class = &quot;iPXE&quot; {'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 subnet-parameters 'filename &quot;http://10.5.0.8/boot.ipxe&quot;;'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 subnet-parameters '} else {'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 subnet-parameters 'filename &quot;ipxe.efi&quot;;'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 subnet-parameters '}'

# Raspberry Talos Masters (Servers)
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping aspen ip-address '10.69.0.3'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping aspen mac-address 'd8:3a:dd:15:83:a9'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping phish ip-address '10.69.0.4'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping phish mac-address 'e4:5f:01:50:40:31'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping somnus ip-address '10.69.0.5'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping somnus mac-address 'd8:3a:dd:17:f5:eb'

# AMD64 Talos Workers (Servers)
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping astro ip-address '10.69.0.6'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping astro mac-address 'd8:3a:dd:15:83:a9'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping august ip-address '10.69.0.7'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping august mac-address 'e4:5f:01:50:40:31'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping delta ip-address '10.69.0.8'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping delta mac-address 'd8:3a:dd:17:f5:eb'

set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping jera ip-address '10.69.0.9'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping jera mac-address '9c:6b:00:04:d5:49'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping leafions ip-address '10.69.0.10'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping leafions mac-address 'd8:3a:dd:15:83:a9'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping miah ip-address '10.69.0.11'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping miah mac-address 'e4:5f:01:50:40:31'

set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping fran ip-address '10.69.0.69'
set service dhcp-server shared-network-name SERVERS subnet 10.69.0.0/24 static-mapping pikvm mac-address '04:7c:16:7a:2c:4a'

# Trusted VLAN
set service dhcp-server shared-network-name TRUSTED authoritative
set service dhcp-server shared-network-name TRUSTED ping-check
set service dhcp-server shared-network-name TRUSTED subnet 10.10.10.0/24 default-router '10.1.2.1'
set service dhcp-server shared-network-name TRUSTED subnet 10.10.10.0/24 domain-name 'outsideour.casa'
set service dhcp-server shared-network-name TRUSTED subnet 10.10.10.0/24 lease '86400'
set service dhcp-server shared-network-name TRUSTED subnet 10.10.10.0/24 name-server '10.5.0.4'
set service dhcp-server shared-network-name TRUSTED subnet 10.10.10.0/24 range 0 start '10.10.10.200'
set service dhcp-server shared-network-name TRUSTED subnet 10.10.10.0/24 range 0 stop '10.10.10.254'

