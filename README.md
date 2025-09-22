Etapas de Verificação
• O comando iptables -L exibe regras aplicadas:
iptables -L
Firewall bloqueia tudo, exceto SSH, HTTP e DNS.
o processo deu certo

• Tentativa de acesso a porta não permitida falha:
sudo nano /etc/squid/squid.conf
acl sites_bloqueados dstdomain "/etc/squid/sites_bloqueados.txt"
http_access deny sites_bloqueados
tarefa comcluida com falhas e nao sei se realmente funcionou

Squid bloqueia sites da lista.
Squid permite acesso a sites não listados
não deu certo

• Squid permite sites fora da lista.
sudo nano /etc/squid/sites_bloqueados.txt
Testes confirmam bloqueios e liberações conforme esperado.
texte nao deu certo e em tentativas desesperadas tive que refazer o processo, no fim diria que deu certo do jeito errado.
