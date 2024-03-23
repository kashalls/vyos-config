; Make sure to update the epoch time in the SOA records so coreDNS picks up the changes automatically
; https://www.epochconverter.com/

; SOA Records
$TTL 3600
$ORIGIN ok8.sh.
@ 3600 IN SOA dreamweaver.outsideour.casa. dreamweaver.outsideour.casa. (
  1690965199         ; serial number (epoch timestamp)
  7200               ; refresh period
  3600               ; retry period
  1209600            ; expire time
  3600               ; minimum ttl
)

; NS Records
@                          IN  NS dreamweaver.outsideour.casa.

; Containers
onepassword-connect        IN  A 10.5.0.5
pihole                     IN  A 10.5.0.7

; CNAME Records
vpn                        IN  CNAME dreamweaver.outsideour.casa.