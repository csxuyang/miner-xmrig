 #!/bin/sh

  while :
    do
      stillRunning=$(ps -ef |grep "id0.json" |grep -v "grep")
      if [ "$stillRunning" ] ; then
        echo "ORE service was already started by another way"
      else
        echo "Starting service ..."
nohup /root/ore-cli-mod/target/release/ore \
                --rpc  $rpc_addr \
                --keypair1 /root/.config/solana/id0.json \
		--keypair2 /root/.config/solana/id1.json \
		--keypair3 /root/.config/solana/id2.json \
		--keypair4 /root/.config/solana/id3.json \
		--keypair5 /root/.config/solana/id4.json \
                --priority-fee 50000 \
                mine \
                --threads 4 \
		> ore.log  2>&1 &

      fi
      sleep 10
    done
