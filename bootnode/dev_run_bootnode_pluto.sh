#!/bin/sh

#   __        ___    _   _  ____ _           _       ____             
#   \ \      / / \  | \ | |/ ___| |__   __ _(_)_ __ |  _ \  _____   __
#    \ \ /\ / / _ \ |  \| | |   | '_ \ / _` | | '_ \| | | |/ _ \ \ / /
#     \ V  V / ___ \| |\  | |___| | | | (_| | | | | | |_| |  __/\ V / 
#      \_/\_/_/   \_\_| \_|\____|_| |_|\__,_|_|_| |_|____/ \___| \_/  
#                                                                     

echo "run gwan in pluto bootnode testnet"
make && \
rm -rf ~/.wanchain/pluto/gwan && \
echo -n 'wanglu' > pw.txt && \
build/bin/gwan --plutodev --rpc --rpcapi="wan,eth,pos,personal,admin"     --nodiscover --etherbase  "0x07249Dd2fB8659254c71420B9Eb13f743D774A9a"  --unlock "0x07249Dd2fB8659254c71420B9Eb13f743D774A9a" --password ./genesis/password.txt  --mine --minerthreads=1 $@

