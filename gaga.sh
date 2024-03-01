#/bin/sbin
curl -o apphub-linux-amd64.tar.gz https://assets.coreservice.io/public/package/60/app-market-gaga-pro/1.0.4/app-market-gaga-pro-1_0_4.tar.gz && tar -zxf apphub-linux-amd64.tar.gz && rm -f apphub-linux-amd64.tar.gz
cd ./apphub-linux-amd64
sudo ./apphub service remove && sudo ./apphub service install
sudo ./apphub service start
./apphub status
sleep 5
sudo ./apphub-linux-amd64/apps/gaganode/gaganode config set --token=nhbbffnqwnazwuxb74c27ce484973bf2
./apphub-linux-amd64/apphub restart