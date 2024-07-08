/container envs
add key=TRAEFIK_API name=traefik value=true
add key=TRAEFIK_API_DASHBOARD name=traefik value=true
add key=TRAEFIK_API_DEBUG name=traefik value=true
add key=TRAEFIK_ACCESSLOG name=traefik value=true
add key=TRAEFIK_API_INSECURE name=traefik value=true
add key=TRAEFIK_ENTRYPOINTS_WEB name=traefik value=true
add key=TRAEFIK_ENTRYPOINTS_WEB_ADDRESS name=traefik value=:80
add key=TRAEFIK_ENTRYPOINTS_SSL name=traefik value=true
add key=TRAEFIK_ENTRYPOINTS_SSL_ADDRESS name=traefik value=:443
add key=TRAEFIK_PROVIDERS_FILE_WATCH name=traefik value=true
add key=TRAEFIK_CERTIFICATESRESOLVERS_le name=traefik value=true
add key=TRAEFIK_CERTIFICATESRESOLVERS_le_ACME_EMAIL name=traefik value=\
    example@gmail.com
add key=TRAEFIK_CERTIFICATESRESOLVERS_le_ACME_TLSCHALLENGE name=traefik value=\
    true
add key=TRAEFIK_CERTIFICATESRESOLVERS_le_ACME_STORAGE name=traefik value=\
    /traefik.d.conf/acme.json
add key=TRAEFIK_PROVIDERS_FILE_DIRECTORY name=traefik value=/traefik.d.conf
add key=TRAEFIK_ENTRYPOINTS_web_HTTP_REDIRECTIONS_ENTRYPOINT_TO name=traefik \
    value=ssl
add key=TRAEFIK_ENTRYPOINTS_web_HTTP_REDIRECTIONS_ENTRYPOINT_SCHEME name=\
    traefik value=https
