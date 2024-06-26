/ip/firewall/filter add chain=input protocol=tcp dst-port=80 action=accept comment="temporary filter rule" place-before=1
/certificate/enable-ssl-certificate dns-name=vpn.example.com
/ip/firewall/filter remove [find comment="temporary filter rule"]


:local lets [ /certificate get [find where name~"autogen"] name];
#:local r10 [ /certificate get [find where name~"r10"] name];
/ip ipsec/identity/remove [find where peer=ike2];
/ip/ipsec/identity/add auth-method=eap-radius generate-policy=port-strict mode-config=ike2-conf peer=ike2 policy-template-group=ike2-policies certificate=("$lets,$r10")

