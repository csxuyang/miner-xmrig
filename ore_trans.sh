
b=`spl-token balance oreoN2tQbHXVaZsr3pf66A48miqcBXCDJozganhEJgz`
limit="0.01"
if [ `expr $b \> $limit` -eq 1 ] ; then
  echo 'balance is '$b',trans'
  spl-token transfer --owner /root/.config/solana/id.json --url https://wallet.okex.org/fullnode/sol/discover/rpc oreoN2tQbHXVaZsr3pf66A48miqcBXCDJozganhEJgz ALL 2ED9VuxQtRaEfDrDmJXf23Hy1KSho9oKPZjo3ci1GUW3 --fund-recipient
else
  echo 'balance is '$b',not trans'
fi
