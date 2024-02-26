#/bin/bash
for ip in `cat /root/ip.txt`
do
  echo "run "$ip
  ssh root@$ip "wget -O xkr_remote.sh https://github.com/csxuyang/miner-xmrig/raw/main/xkr_remote.sh && chmod +x xkr_remote.sh && ./xkr_remote.sh"
done
echo "all done"
