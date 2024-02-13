clear
echo "在虚拟机中执行这个文件,10秒钟执行"
sleep 10
cd
apt update
apt upgrade
apt install wget
apt install openjdk-17-jdk
apt install openjdk-8-jdk
#!/bin/bash

echo "欢迎使用Forge服务器一键启动脚本！"
echo "请选择服务器版本："
echo "1. 1.7.10"
echo "2. 1.8.9"
echo "3. 1.9.4"
echo "4. 1.10.2"
echo "5. 1.11.2"
echo "6. 1.12.2"
echo "7. 1.14.4"
echo "8. 1.15.2"
echo "9. 1.16.5"
echo "10. 1.17.1"
echo "11. 1.18.2"
echo "12. 1.19"
echo "13. 1.19.4"
echo "14. 1.20.1"
echo "15. 1.20.2"
echo "16. 1.20.3"
echo "17. 1.20.4"
read version

case $version in
    1)
        selected_version="1.7.10"
        ;;
    2)
        selected_version="1.8.9"
        ;;
    3)
        selected_version="1.9.4"
        ;;
    4)
        selected_version="1.10.2"
        ;;
    5)
        selected_version="1.11.2"
        ;;
    6)
        selected_version="1.12.2"
        ;;
    7)
        selected_version="1.14.4"
        ;;
    8)
        selected_version="1.15.2"
        ;;
    9)
        selected_version="1.16.5"
        ;;
    10)
        selected_version="1.17.1"
        ;;
    11)
        selected_version="1.18.2"
        ;;
    12)
        selected_version="1.19"
        ;;
    13)
        selected_version="1.19.4"
        ;;
    14)
        selected_version="1.20.1"
        ;;
    15)
        selected_version="1.20.2"
        ;;
    16)
        selected_version="1.20.3"
        ;;
    17)
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
folder_name="${selected_version}forge"
mkdir $folder_name

# 进入文件夹
cd $folder_name

echo "正在下载Forge安装器..."
# 下载对应版本的forge版本
case $version in
    1)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.7.10-10.13.4.1614-1.7.10/forge-1.7.10-10.13.4.1614-1.7.10-installer.jar
        ;;
    2)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.8.9-11.15.1.2318-1.8.9/forge-1.8.9-11.15.1.2318-1.8.9-installer.jar
        ;;
    3)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.9.4-12.17.0.2317-1.9.4/forge-1.9.4-12.17.0.2317-1.9.4-installer.jar
        ;;
    4)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.10.2-12.18.3.2511/forge-1.10.2-12.18.3.2511-installer.jar
        ;;
    5)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.11.2-13.20.1.2588/forge-1.11.2-13.20.1.2588-installer.jar
        ;;
    6)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2860/forge-1.12.2-14.23.5.2860-installer.jar
        ;;
    7)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.14.4-28.2.26/forge-1.14.4-28.2.26-installer.jar
        ;;
    8)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.15.2-31.2.57/forge-1.15.2-31.2.57-installer.jar
        ;;
    9)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.16.5-36.2.41/forge-1.16.5-36.2.41-installer.jar
        ;;
    10)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.17.1-37.1.1/forge-1.17.1-37.1.1-installer.jar
        ;;
    11)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.18.2-40.2.14/forge-1.18.2-40.2.14-installer.jar
        ;;
    12)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.19-41.1.0/forge-1.19-41.1.0-installer.jar
        ;;
    13)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.19.4-45.2.6/forge-1.19.4-45.2.6-installer.jar
        ;;
    14)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.2.18/forge-1.20.1-47.2.18-installer.jar
        ;;
    15)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.2-48.1.0/forge-1.20.2-48.1.0-installer.jar
        ;;
    16)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.3-49.0.2/forge-1.20.3-49.0.2-installer.jar
        ;;
    17)
        wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.4-49.0.26/forge-1.20.4-49.0.26-installer.jar
        ;;
esac
echo "安装Forge服务器..."
sleep 5
# 安装Forge服务器
case $version in
    1)
         java -jar forge-1.7.10-10.13.4.1614-1.7.10-installer.jar --installServer
         ;;
    2)
         java -jar forge-1.8.9-11.15.1.2318-1.8.9-installer.jar --installServer
         ;;
    3)
         java -jar forge-1.9.4-12.17.0.2317-1.9.4-installer.jar --installServer
         ;;
    4)
         java -jar forge-1.10.2-12.18.3.2511-installer.jar --installServer
         ;;
    5)
         java -jar forge-1.11.2-13.20.1.2588-installer.jar --installServer
         ;;
    6)
         java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer
         ;;
    7)
         java -jar forge-1.14.4-28.2.26-installer.jar --installServer
         ;;
    8)
         java -jar forge-1.15.2-31.2.57-installer.jar --installServer
         ;;
    9)
         java -jar forge-1.16.5-36.2.41-installer.jar --installServer
         ;;
    10)
         java -jar forge-1.17.1-37.1.1-installer.jar --installServer
         ;;
    11)
          java -jar forge-1.18.2-40.2.14-installer.jar --installServer
          ;;
    12)
         java -jar forge-1.19-41.1.0-installer.jar --installServer
          ;;
    13)
         java -jar forge-1.19.4-45.2.6-installer.jar --installServer
          ;;
    14)
         java -jar forge-1.20.1-47.2.18-installer.jar --installServer
         ;;
    15)
        java -jar forge-1.20.2-48.1.0-installer.jar --installServer
        ;;
    16)
       java -jar forge-1.20.3-49.0.2-installer.jar --installServer
       ;;
    17)
       java -jar forge-1.20.4-49.0.26-installer.jar --installServer
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
         java -jar forge-1.7.10-10.13.4.1614-1.7.10-universal.jar
         ;;
    2)
         java -jar forge-1.8.9-11.15.1.2318-1.8.9.jar
         ;;
    3)
         java -jar forge-1.9.4-12.17.0.2317-1.9.4.jar
         ;;
    4)
         java -jar forge-1.10.2-12.18.3.2511.jar
         ;;
    5)
         java -jar forge-1.11.2-13.20.1.2588.jar
         ;;
    6)
         java -jar forge-1.12.2-14.23.5.2860.jar
         ;;
    7)
         java -jar forge-1.14.4-28.2.26.jar
         ;;
    8)
         java -jar forge-1.15.2-31.2.57.jar
         ;;
    9)
         java -jar forge-1.16.5-36.2.41.jar
         ;;
    10)
         ./run.sh
         ;;
    11)
          ./run.sh
          ;;
    12)
         ./run.sh
          ;;
    13)
         ./run.sh
          ;;
    14)
         ./run.sh
         ;;
    15)
         ./run.sh
         ;;
    16)
         java -jar forge-1.20.3-49.0.2-shim.jar
         ;;
    17)
         java -jar forge-1.20.4-49.0.26-shim.jar
         ;;
esac
echo "Forge服务器安装完成！"
echo "***如果出现报错 请使用这个命令 来切换jdk版本:update-alternatives --config java ***"