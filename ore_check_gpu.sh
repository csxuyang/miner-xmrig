ps -ef|grep ore_gpu |grep -v grep|cut -c 9-16|`xargs kill -9`
ps -ef|grep " mine" |grep -v grep|cut -c 9-16|`xargs kill -9`
nohup /root/miner-xmrig/ore_gpu.sh > ore_check.log  &
