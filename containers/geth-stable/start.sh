#!/bin/sh

echo "-------------------------------------------------------"
echo "Run Geth stable binary"
echo "-------------------------------------------------------"
#Points to PoA devnet and sets block time to 15
if [ -z "$NODE_OPTIONS" ]; then
    NODE_OPTIONS="--cache 4096 --dev --dev.period 15"
fi

/opt/geth/geth \
    --datadir /data --rpc --rpcaddr 0.0.0.0 \
    $NODE_OPTIONS
