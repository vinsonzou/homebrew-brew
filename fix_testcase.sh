#!/bin/bash
set -ev

#ingore test cases not compatible with OSX
rm lua-resty-core/t/balancer.t lua-resty-core/t/balancer-timeout.t lua-resty-core/t/ssl-session-store.t
sed -i "" "s/received: Server: nginx/received: Server: openresty/g" lua-resty-core/t/ssl.t
# ocsp.t need 127.0.0.2, however osx not has 127.0.0.2
sudo ifconfig lo0 alias 127.0.0.2 netmask 0xFFFFFFFF
