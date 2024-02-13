clear
echo "在虚拟机中执行这个文件,10秒后开始"
sleep 10
cd
apt install curl
apt install wget
apt install openjdk-17-jdk
apt install openjdk-8-jdk
#!/bin/bash

echo "欢迎使用Fabric服务器一键启动脚本！"
echo "请选择服务器版本："
echo "1. 1.14.4"
echo "2. 1.15.2"
echo "3. 1.16.5"
echo "4. 1.17.1"
echo "5. 1.18.2"
echo "6. 1.19"
echo "7. 1.19.4"
echo "8. 1.20.1"
echo "9. 1.20.2"
echo "10. 1.20.3"
echo "11. 1.20.4"
read version

case $version in
    1)
        selected_version="1.14.4"
        ;;
    2)
        selected_version="1.15.2"
        ;;
    3)
        selected_version="1.16.5"
        ;;
    4)
        selected_version="1.17.1"
        ;;
    5)
        selected_version="1.18.2"
        ;;
    6)
        selected_version="1.19"
        ;;
    7)
        selected_version="1.19.4"
        ;;
    8)
        selected_version="1.20.1"
        ;;
    9)
        selected_version="1.20.2"
        ;;
    10)
        selected_version="1.20.3"
        ;;
    11)
        selected_version="1.20.4"
        ;;
    *)
        echo "无效的选择"
        exit 1
        ;;
esac

echo "您选择的服务器版本是：$selected_version"
sleep 5
# 创建以版本号加上 "forge" 的文件夹
folder_name="${selected_version}fabric"
mkdir $folder_name

# 进入文件夹
cd $folder_name

echo "正在下载Fabric安装器..."
sleep 5
# 下载对应版本的forge版本
case $version in
    1)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.14.4/0.15.6/1.0.0/server/jar
        ;;
    2)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.15.2/0.15.6/1.0.0/server/jar
        ;;
    3)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.16.5/0.15.6/1.0.0/server/jar
        ;;
    4)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.17.1/0.15.6/1.0.0/server/jar
        ;;
    5)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.18.2/0.15.6/1.0.0/server/jar
        ;;
    6)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.19/0.15.6/1.0.0/server/jar
        ;;
    7)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.19.4/0.15.6/1.0.0/server/jar
        ;;
    8)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.20.1/0.15.6/1.0.0/server/jar
        ;;
    9)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.20.2/0.15.6/1.0.0/server/jar
        ;;
    10)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.20.3/0.15.6/1.0.0/server/jar
        ;;
    11)
        curl -OJ https://meta.fabricmc.net/v2/versions/loader/1.20.4/0.15.6/1.0.0/server/jar
        ;;
esac
echo "安装fabric服务器..."
sleep 5
# 安装fabric服务器
case $version in
    1)
         java -Xmx2G -jar fabric-server-mc.1.14.4-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    2)
         java -Xmx2G -jar fabric-server-mc.1.15.2-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    3)
         java -Xmx2G -jar fabric-server-mc.1.16.5-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    4)
         java -Xmx2G -jar fabric-server-mc.1.17.1-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    5)
         java -Xmx2G -jar fabric-server-mc.1.19-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    6)
         java -Xmx2G -jar fabric-server-mc.1.19-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    7)
         java -Xmx2G -jar fabric-server-mc.1.19.4-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    8)
         java -Xmx2G -jar fabric-server-mc.1.20.1-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    9)
        java -Xmx2G -jar fabric-server-mc.1.20.2-loader.0.15.6-launcher.1.0.0.jar nogui
        ;;
    10)
        java -Xmx2G -jar fabric-server-mc.1.20.3-loader.0.15.6-launcher.1.0.0.jar nogui
        ;;
    11)
        java -Xmx2G -jar fabric-server-mc.1.20.4-loader.0.15.6-launcher.1.0.0.jar nogui
        ;;
esac
echo "eula=true" > eula.txt
echo "#Minecraft server properties
#Sat Dec 16 09:30:06 UTC 2023
max-tick-time=60000
generator-settings=
force-gamemode=false
allow-nether=true
gamemode=0
broadcast-console-to-ops=true
enable-query=false
player-idle-timeout=0
difficulty=1
spawn-monsters=true
op-permission-level=4
pvp=true
snooper-enabled=true
level-type=DEFAULT
hardcore=false
enable-command-block=true
max-players=20
network-compression-threshold=256
resource-pack-sha1=
max-world-size=29999984
server-port=25565
server-ip=
spawn-npcs=true
allow-flight=false
level-name=world
view-distance=10
resource-pack=
spawn-animals=true
white-list=false
generate-structures=true
online-mode=false
max-build-height=256
level-seed=
prevent-proxy-connections=false
enable-rcon=false
motd=A Minecraft Server" > server.properties
case $version in
    1)
         java -Xmx2G -jar fabric-server-mc.1.14.4-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    2)
         java -Xmx2G -jar fabric-server-mc.1.15.2-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    3)
         java -Xmx2G -jar fabric-server-mc.1.16.5-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    4)
         java -Xmx2G -jar fabric-server-mc.1.17.1-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    5)
         java -Xmx2G -jar fabric-server-mc.1.19-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    6)
         java -Xmx2G -jar fabric-server-mc.1.19-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    7)
         java -Xmx2G -jar fabric-server-mc.1.19.4-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    8)
         java -Xmx2G -jar fabric-server-mc.1.20.1-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    9)
         java -Xmx2G -jar fabric-server-mc.1.20.2-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    10)
         java -Xmx2G -jar fabric-server-mc.1.20.3-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
    11)
         java -Xmx2G -jar fabric-server-mc.1.20.4-loader.0.15.6-launcher.1.0.0.jar nogui
         ;;
esac
echo "Fabric服务器安装完成！"
echo "***如果出现报错 请使用这个命令 来切换jdk版本:update-alternatives --config java ***"