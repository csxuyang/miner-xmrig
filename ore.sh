 #!/bin/sh

rpc_addr=https://solana-mainnet.g.alchemy.com/v2/ilx_Ll4LiGJ53ZW_MExeqlEp9hDRzV8W 
  while :
    do
      stillRunning=$(ps -ef |grep "ore --" |grep -v "grep")
      if [ "$stillRunning" ] ; then
        echo "ORE service was already started by another way"
      else
        echo "Starting service ..."
        nohup ore \
    		--rpc  $rpc_addr\
		--keypair ~/.config/solana/id.json \
    		--priority-fee 1 \
    		mine \
    		--threads 2 \
    		> ore.log  2>&1 &

      fi
      sleep 10
    done
