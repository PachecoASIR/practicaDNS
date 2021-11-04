PRÁCTICA DNS

1. Inspect volume in develevopment mode
2. Instalar gitlens
3. Publish to github
4. Modificamos el named.conf.options y dentro del mismo los fowarders
5. Para el Primary Server abrimos el named.conf.local (volumen conf) y añadimos una nueva zona:

zone "example.com" {
    type master;
    file "/etc/bind/db.example.com";
};

6. Creamos el fichero db.example.com y lo configuramos (cambiamos IP y nombre):
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

@       IN      NS      pchek0.example.com.
@       IN      A       192.168.1.10
@       IN      AAAA    ::1
pchek0      IN      A       172.22.0.2
7. Reiniciamos nuestros servicios y comprobamos que funcione.


PASOS DIR .git

$git status
$git add named.conf.option
$git status
$git commit -m “forwarders actualizados”
$git push origin (origin es el repositorio remoto) master (master es la branch/rama)

Resolv.conf (cliente)

1. Abrimos el archivo resolv.conf con el nano: nano /etc/resolv.conf
2. Buscamos la ip de nuestro DNS (en el host)
3. Ponemos la IP de nuestro DNS en el Resolv.conf cliente
