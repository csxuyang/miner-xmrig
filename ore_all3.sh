 #!/bin/sh

  while :
    do
      stillRunning=$(ps -ef |grep " mine " |grep -v "grep")
      if [ "$stillRunning" ] ; then
        echo "ORE service was already started by another way"
      else
        echo "Starting service ..."
nohup /root/ore-cli-mod/target/release/ore \
                --rpc  $rpc_addr \
                --keypair1 /root/.config/solana/id10.json \
		--keypair2 /root/.config/solana/id11.json \
		--keypair3 /root/.config/solana/id12.json \
		--keypair4 /root/.config/solana/id13.json \
		--keypair5 /root/.config/solana/id14.json \
                --priority-fee 50000 \
                mine \
                --threads 4 \
		> ore3.log  2>&1 &

      fi
      sleep 10
    done
