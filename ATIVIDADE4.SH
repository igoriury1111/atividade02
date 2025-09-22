1-Etapa 1 Apache instalado e página acessível via IP:
sudo systemctl restart bind9 
etapa concluida

2-Etapa 2 BIND9 instalado e zona configurada corretamente:
/etc/resolv.conf: 
nameserver 127.0.0.1
etapa concluida

3-Etapa 3 Serviço BIND reiniciado e resolv.conf configurado;
sudo systemctl restart bind9 
tarefa nao concluida

4-Teste dig Resolução correta de www.empresa.local;
curl http://www.empresa.local
comando nao realizado

5-Teste curl Exibe mensagem de boas-vindas;
zone "empresa.local" {
type master;
file "/etc/bind/db.empresa.local";
};
sudo nano /etc/bind/db.empresa.local
$TTL 604800
@ IN SOA ns1.empresa.local. root.empresa.local. (
2 ; Serial
604800 ; Refresh
86400 ; Retry
2419200 ; Expire
604800 ) ; Negative Cache TTL
;
@ IN NS ns1.empresa.local.
ns1 IN A IP_DA_VM
www IN A IP_DA_VM

deu certo mas nao sei se conta.
