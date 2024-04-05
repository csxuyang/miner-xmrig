while true
do
ore --rpc https://api.mainnet-beta.solana.com --keypair ~/.config/solana/id.json --priority-fee 100000   claim
  sleep 120
done
