# 设置一些必要的变量
priority_fee="500000"
ADDR_DIR="/root/addr"
PRIVATE_KEY_DIR="/root/id"
SENDER_ADDRESS="EU8rvwBvGZZxkGXmktb8tQK5gSLEXkhmWHrCSMv4iCdF"
RPC_URL1="https://wallet.okex.org/fullnode/sol/discover/rpc"  # 替换为 Solana 区块链节点的 URL 地址
REWARD_THRESHOLD=0.02


# 主循环
while true; do

    for i in $(ls "${ADDR_DIR}" | grep '^id[0-9]\+\.json$'); do
        address=`cat ${ADDR_DIR}/${i}`
	key="${PRIVATE_KEY_DIR}/${i}"
	#echo $key
	balance=`solana balance --keypair $key | cut -d ' ' -f1`
	#echo $balance	
	if [ `echo "($balance - 0.02) > $REWARD_THRESHOLD " | bc` -eq 1 ] ; then
	   money=`echo "$balance - 0.02 " | bc | awk '{printf "%.3f",$0}' `
	   echo $address' balance is '$balance',claim '$money
	   solana transfer --from $key  $SENDER_ADDRESS  $money     --allow-unfunded-recipient     --with-compute-unit-price 10
	   sleep 3
	else
	   echo $address' balance is '$balance',not claim'
	fi

    done

    # 倒计时3600秒
    for ((sec = 3600; sec > 0; sec--)); do
        echo -ne "等待 $sec 秒...\r"
        sleep 1
    done
done

