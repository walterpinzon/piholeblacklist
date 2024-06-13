# LISTADOS OBLIGADOS
Mulples source need ajust to load in Pihole.
- LISTADO DE MEDIDAS CAUTELARES
- LISTADO DE DOMINIOS DE COLJUEGOS
- LISTADO DE DOMINIOS DE PINFANTIL
- LISTADO DE IPs, sin dominio, bloqueados directamente en RAW Mikrotik.

### OTROS LISTADOS DE PREVENCIÓN DE ATAQUES CIBERNETICOS.
- LISTADO DE Bootnets
-  LISTADO DE MALWARE (en revisión por interferir con publicidad sin la cual no funcionan aplicaicones legitimas en los usuarios como Vix, juegos online educativos),
-  LISTADO iperf servers allow only on speed test

# Instalar Script Bloqueo de IPs que no se puede bloquear por DNS
Para instalar el escript en RAW, script de descargay y scheduler para ejecución periodica.

`
{/tool fetch url="https://raw.githubusercontent.com/walterpinzon/piholeblacklist/main/colombia_instalar_en_mikrotik_bloqueo_por_ips_pinfantil.rsc" mode=https;/import file-name=colombia_instalar_en_mikrotik_bloqueo_por_ips_pinfantil.rsc;/file/remove/colombia_instalar_en_mikrotik_bloqueo_por_ips_pinfantil.rsc;}
`

#
