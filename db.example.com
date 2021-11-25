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
@       IN      A       5.5.5.5
@       IN      AAAA    ::1
pcheko      IN      A       10.1.0.254
www in A 10.1.0.200
pcheko in TXT "Hola mundo"
pcheko in A 8.8.8.8
@ IN TXT "Hola mundo"

