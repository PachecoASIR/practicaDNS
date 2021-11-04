PRÁCTICA DNS

1. Inspect volume in develevopment mode
2. Instalar gitlens
3. Publish to github
4. Modificamos el named.conf.options y dentro del mismo los fowarders
forwarders { <br>
	 	8.8.8.8; <br>
		8.8.4.4; <br>
	 }; <br>

6. Para el Primary Server abrimos el named.conf.local (volumen conf) y añadimos una nueva zona:

zone "example.com" { <br>
    type master; <br>
    file "/etc/bind/db.example.com"; <br>
};

6. Creamos el fichero db.example.com y lo configuramos (cambiamos IP y nombre): <br>
; <br> 
; BIND data file for example.com <br>
; <br>
$TTL    604800 <br>
@       IN      SOA     example.com. root.example.com. ( <br>
                              2         ; Serial <br>
                         604800         ; Refresh <br>
                          86400         ; Retry <br>
                        2419200         ; Expire <br>
                         604800 )       ; Negative Cache TTL <br>

@       IN      NS      pchek0.example.com. <br>
@       IN      A       192.168.1.10 <br>
@       IN      AAAA    ::1 <br>
pchek0      IN      A       172.22.0.2

7. Reiniciamos nuestros servicios y comprobamos que funcione.

Resolv.conf (cliente)

1. Abrimos el archivo resolv.conf con el nano: nano /etc/resolv.conf
2. Buscamos la ip de nuestro DNS (en el host)
3. Ponemos la IP de nuestro DNS en el Resolv.conf cliente
