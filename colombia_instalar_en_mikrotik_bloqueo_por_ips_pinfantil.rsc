# Verificar si existe una regla en raw que bloquee el tráfico hacia IPs_Mintic
:local ruleExists false
:local ipList "IPs_Mintic"

:foreach rule in=[/ip firewall raw find] do={
    :local dstAddress [/ip firewall raw get $rule dst-address-list]
    :if ($dstAddress=$ipList) do={
        :set ruleExists true
        :put "La regla para bloquear tráfico hacia IPs_Mintic ya existe."
        :break
    }
}

# Si la regla no existe, crear una nueva regla para bloquear el tráfico hacia IPs_Mintic
:if ($ruleExists=false) do={
    :local newRule [ /ip/firewall/raw/add action=drop chain=prerouting dst-address-list=IPs_Mintic in-interface-list=!WAN comment="Bloquear tráfico hacia IPs_Mintic" place-before=0 ]
    :put "Se ha creado una nueva regla para bloquear tráfico hacia IPs_Mintic."
}

{/tool fetch url="https://raw.githubusercontent.com/walterpinzon/piholeblacklist/main/colombia_mikrotik_ips_pinfantil.rsc" mode=https;/import file-name=colombia_mikrotik_ips_pinfantil.rsc;}

