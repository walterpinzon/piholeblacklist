# Verificar si existe una regla en raw que bloquee el tráfico hacia IPs_Mintic
:local ruleExists false
:local ipList "IPs_Mintic"

:foreach rule in=[/ip firewall raw find] do={
    :local dstAddress [/ip firewall raw get $rule dst-address-list]
    :if ($dstAddress=$ipList) do={
        :set ruleExists true
        :put "La regla para bloquear trafico hacia IPs_Mintic ya existe."
        :break
    }
}

# Si la regla no existe, crear una nueva regla para bloquear el tráfico hacia IPs_Mintic
:if ($ruleExists=false) do={
    :local newRule [ /ip/firewall/raw/add action=drop chain=prerouting dst-address-list=IPs_Mintic in-interface-list=!WAN comment="SIMA: Bloquear trafico hacia IPs_Mintic" place-before=0 ]
    :put "Se ha creado una nueva regla para bloquear trafico hacia IPs_Mintic."
}

{/tool fetch url="https://raw.githubusercontent.com/walterpinzon/piholeblacklist/main/colombia_mikrotik_ips_pinfantil.rsc" mode=https;/import file-name=colombia_mikrotik_ips_pinfantil.rsc;}
{/system/script/add dont-require-permissions=no name=colombia_mikrotik_ips_pinfantil owner=winner policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="{/tool fetch url=\"https://raw.githubusercontent.com/walterpinzon/piholeblacklist/main/colombia_mikrotik_ips_pinfantil.rsc\" mode=https;/import file-name=colombia_mikrotik_ips_pinfantil.rsc;}";}
{/system/scheduler/add interval=1d name=colombia_mikrotik_ips_pinfantil on-event=colombia_mikrotik_ips_pinfantil policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon start-date=2024-06-12 start-time=05:30:00;}
