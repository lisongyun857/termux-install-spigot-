cd
echo 下面开始安装frp
sleep 5
mkdir frpc
cd frpc
wget https://o.of.gs/client/OpenFRP_0.53.2_9667633b_20240115/frpc_linux_arm64.tar.gz
tar -zxvf frpc_linux_arm64.tar.gz
mv frpc_linux_arm64 frpc
chmod +x frpc
./frpc
echo 你可以输入这串指令来启动内网穿透:#./frpc