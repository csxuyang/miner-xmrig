ps -ef|grep ore_all |grep -v grep|cut -c 9-16|`xargs kill -9`
ps -ef|grep " mine" |grep -v grep|cut -c 9-16|`xargs kill -9`
source ore.env
nohup /root//miner-xmrig/ore_all.sh > ore_check.log  2>&1 &
#nohup /root//miner-xmrig/ore_all2.sh > ore_check2.log  2>&1 &
#nohup /root//miner-xmrig/ore_all3.sh > ore_check3.log  2>&1 &

