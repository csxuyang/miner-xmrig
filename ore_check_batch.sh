ps -ef|grep ore_batch.sh |grep -v grep|cut -c 9-16|`xargs kill -9`
ps -ef|grep " mine " |grep -v grep|cut -c 9-16|`xargs kill -9`
source ore.env
nohup /root//miner-xmrig/ore_batch.sh > ore_check.log  2>&1 &
