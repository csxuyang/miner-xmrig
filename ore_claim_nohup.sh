ps -ef|grep " claim " |grep -v grep|cut -c 9-16|`xargs kill -9`
ps -ef|grep "ore_claim.sh" |grep -v grep|cut -c 9-16|`xargs kill -9`
nohup /root//miner-xmrig/ore_claim.sh > ore_claim.log  2>&1 &
