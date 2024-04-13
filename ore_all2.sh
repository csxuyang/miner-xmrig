 #!/bin/sh

  while :
    do
      stillRunning=$(ps -ef |grep "id5.json" |grep -v "grep")
      if [ "$stillRunning" ] ; then
        echo "ORE service was already started by another way"
      else
        echo "Starting service ..."
nohup /root/ore-cli-mod/target/release/ore \
                --rpc  $rpc_addr \
                --keypair1 /root/.config/solana/id5.json \
		--keypair2 /root/.config/solana/id6.json \
		--keypair3 /root/.config/solana/id7.json \
		--keypair4 /root/.config/solana/id8.json \
		--keypair5 /root/.config/solana/id9.json \
                --priority-fee 50000 \
                mine \
                --threads 4 \
		> ore2.log  2>&1 &

      fi
      sleep 10
    done
