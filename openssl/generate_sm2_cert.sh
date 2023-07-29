#!/bin/sh

# 本脚本用于生成sm2自签名证书，仅用于测试目的

# 生成自签名证书
# 方式1: 生成sm2 key => 生成证书签名请求 => 生成证书
# 方式2: 生成sm2 key, 同时生成自签名证书

SUBJ="/C=CN/ST=BeiJing/L=BeiJing/O=warm3snow/OU=Server/CN=localhost"

# generate sm2 key => key (openssl 1.1.x以上版本支持sm2, 或者tassl、gmssl)
gmssl ecparam -genkey -name SM2 -text -out ./gmcerts/server.key

# generate certificate signing request => csr
gmssl req -new -key ./gmcerts/server.key -out ./gmcerts/server.csr -subj $SUBJ

# issue certificate => crt
gmssl x509 -req -days 3650 -sm3 -in ./gmcerts/server.csr -signkey ./gmcerts/server.key -out ./gmcerts/server.crt
