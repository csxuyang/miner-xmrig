 #!/bin/sh
while :
do

	balance=`ore --rpc https://api.mainnet-beta.solana.com --keypair ~/.config/solana/id.json rewards`
	limit="0.001"
	echo $balance
	IFS=' '
	array=($balance)
	real=${array[0]}
	echo $real

	if [ `expr $real \> $limit` -eq 1 ] ; then
	   echo 'balance is '$balance',claim'
	   ore --rpc https://api.mainnet-beta.solana.com --keypair ~/.config/solana/id.json --priority-fee 100000   claim
	else
	   echo 'balance is '$balance',not claim'
	fi 

	sleep 120

done
