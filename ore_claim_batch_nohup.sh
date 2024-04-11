ps -ef|grep "ore_claim_batch.sh" |grep -v grep|cut -c 9-16|`xargs kill -9`
nohup bash /root//miner-xmrig/ore_claim_batch.sh > ore_claim.log  2>&1 &
