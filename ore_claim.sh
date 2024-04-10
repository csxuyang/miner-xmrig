 #!/bin/sh
source ore.env
while :
do

	balance=`ore --rpc https://api.mainnet-beta.solana.com --keypair ~/.config/solana/id.json rewards`
	limit="0.01"
	echo $balance
	IFS=' '
	array=($balance)
	real=${array[0]}
	echo $real

	if [ `expr $real \> $limit` -eq 1 ] ; then
	   echo 'balance is '$balance',claim'
	   ore --rpc $rpc_addr --keypair ~/.config/solana/id.json --priority-fee 50000000   claim
	else
	   echo 'balance is '$balance',not claim'
	fi 

	sleep 120

done
