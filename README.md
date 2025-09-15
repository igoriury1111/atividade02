1- dpkg -1 | grep samba
dpkg: error: unknown option -1

2-tdbedit -L
tbdsam_open: failed to open/create TDB passwd [/var/lib/samba/private/passdb.db]

3-ls - ls /srv/samba/publico
ls: cannot acess '-': no such file or directory
ls: cannot acess 'ld': no such file or directory
ls: cannot acess '/srv/samba/publico': no such file or directory

4-testparm
error loading services.

5-systemctl status smdb
systemctl status nmdb
\\10.0.2.15
