ps -ef|grep ore.sh |grep -v grep|cut -c 9-16|`xargs kill -9`
ps -ef|grep ore.log |grep -v grep|cut -c 9-16|`xargs kill -9`
nohup /root//miner-xmrig/ore.sh > ore_check.log  2>&1 &
