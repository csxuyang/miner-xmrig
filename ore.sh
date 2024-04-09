 #!/bin/sh

  while :
    do
      stillRunning=$(ps -ef |grep " mine " |grep -v "grep")
      if [ "$stillRunning" ] ; then
        echo "ORE service was already started by another way"
      else
        echo "Starting service ..."
        nohup ore \
    		--rpc  $rpc_addr\
		--keypair ~/.config/solana/id.json \
    		--priority-fee 5000 \
    		mine \
    		--threads 4 \
    		> ore.log  2>&1 &

      fi
      sleep 10
    done
