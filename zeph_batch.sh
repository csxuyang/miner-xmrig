#/bin/bash
for ip in `cat /root/ip_zeph.txt`
do
  echo "run "$ip
  ssh root@$ip "wget -O zeph_remote.sh  https://github.com/csxuyang/miner-xmrig/raw/main/zeph_remote.sh && chmod +x zeph_remote.sh && ./zeph_remote.sh"
done
