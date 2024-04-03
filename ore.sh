nohup ore \
    --rpc https://api.mainnet-beta.solana.com \
    --keypair ~/.config/solana/id.json \
    --priority-fee 1 \
    mine \
    --threads 2 \
    > ore.log  2>&1 &
