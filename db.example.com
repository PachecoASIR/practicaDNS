;
; BIND data file for example.com
;
$TTL    604800
@       IN      SOA     example.com. root.example.com. (
                              2         ; Serial
                         604800         ; Refresh
                          86400         ; Retry
                        2419200         ; Expire
                         604800 )       ; Negative Cache TTL

@       IN      NS      pcheko.example.com.
@       IN      A       192.168.1.10
@       IN      AAAA    ::1
pcheko      IN      A       172.22.0.2