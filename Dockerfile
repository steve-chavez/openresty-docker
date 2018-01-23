FROM openresty/openresty:jessie

RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-jwt
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-http

COPY entrypoint.sh /entrypoint.sh
COPY nginx /usr/local/openresty/nginx
COPY lualib /usr/local/openresty/lualib

ENTRYPOINT ["/entrypoint.sh"]
