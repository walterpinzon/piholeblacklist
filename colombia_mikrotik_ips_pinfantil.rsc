# Descargar el archivo raw desde GitHub
#/tool fetch url="https://raw.githubusercontent.com/walterpinzon/piholeblacklist/main/colombia_mikrotik_ips_pinfantil.rsc" mode=https
#Ejecutar el archivo rsc descargado
#/import file-name=colombia_mikrotik_ips_pinfantil.rsc
#Prueba en una sola linea
#{/tool fetch url="https://raw.githubusercontent.com/walterpinzon/piholeblacklist/main/colombia_mikrotik_ips_pinfantil.rsc" mode=https;/import file-name=colombia_mikrotik_ips_pinfantil.rsc;}
#
#
/ip/firewall/address-list remove [find where list=IPs_Mintic]
/ip/firewall/address-list/add list=IPs_Mintic address=104.128.225.209
/ip/firewall/address-list/add list=IPs_Mintic address=188.166.197.213
/ip/firewall/address-list/add list=IPs_Mintic address=173.201.92.196
/ip/firewall/address-list/add list=IPs_Mintic address=199.189.107.52
/ip/firewall/address-list/add list=IPs_Mintic address=204.15.249.37
/ip/firewall/address-list/add list=IPs_Mintic address=208.97.165.147
/ip/firewall/address-list/add list=IPs_Mintic address=209.159.152.101
/ip/firewall/address-list/add list=IPs_Mintic address=213.229.83.160
/ip/firewall/address-list/add list=IPs_Mintic address=64.6.97.166
/ip/firewall/address-list/add list=IPs_Mintic address=85.17.126.226
/ip/firewall/address-list/add list=IPs_Mintic address=85.25.1.11
/ip/firewall/address-list/add list=IPs_Mintic address=128.199.240.48
/ip/firewall/address-list/add list=IPs_Mintic address=173.214.252.83
/ip/firewall/address-list/add list=IPs_Mintic address=216.172.57.145
/ip/firewall/address-list/add list=IPs_Mintic address=162.221.224.26
/ip/firewall/address-list/add list=IPs_Mintic address=173.214.250.34
/ip/firewall/address-list/add list=IPs_Mintic address=173.214.252.82
/ip/firewall/address-list/add list=IPs_Mintic address=89.248.162.213
/ip/firewall/address-list/add list=IPs_Mintic address=45.58.52.192
/ip/firewall/address-list/add list=IPs_Mintic address=162.254.191.7
/ip/firewall/address-list/add list=IPs_Mintic address=173.214.250.47
/ip/firewall/address-list/add list=IPs_Mintic address=173.214.250.46
/ip/firewall/address-list/add list=IPs_Mintic address=173.214.250.45
/ip/firewall/address-list/add list=IPs_Mintic address=173.214.250.43
/ip/firewall/address-list/add list=IPs_Mintic address=173.214.250.41
/ip/firewall/address-list/add list=IPs_Mintic address=173.214.250.42
