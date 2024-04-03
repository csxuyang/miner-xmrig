 #!/bin/sh
  while :
    do
      stillRunning=$(ps -ef |grep "ore --" |grep -v "grep")
      if [ "$stillRunning" ] ; then
        echo "ORE service was already started by another way"
      else
        echo "Starting service ..."
        nohup ore \
    		--rpc https://spring-patient-morning.solana-mainnet.quiknode.pro/18acedb5cedb4c6bad2788349ea86b738df4bb56/ \
		--keypair ~/.config/solana/id.json \
    		--priority-fee 1 \
    		mine \
    		--threads 2 \
    		> ore.log  2>&1 &

      fi
      sleep 10
    done
