clear
echo 请在虚拟机中执行,10秒后开始
sleep 10
echo 启动虚拟机之后可以使用这条命令启动:# ./start-ubuntu.sh
echo 更新,卡顿按回车
apt update
apt upgrade
echo 安装jdk 如果卡顿就按回车
apt install openjdk-17-jdk
apt install openjdk-8-jdk
apt install wget
echo 下载git 
apt install git-all
echo 创建spigot文件夹
mkdir spigot
cd spigot
echo 复制服务器构建地址
wget https://hub.spigotmc.org/jenkins/job/BuildTools/163/artifact/target/BuildTools.jar
echo 接下来安装构建文件数据可能有点慢耐心等待***
java -jar BuildTools.jar
#!/bin/bash

echo "请选择服务器版本："
echo "1. 1.12.2"
echo "2. 1.13.2"
echo "3. 1.14.4"
echo "4. 1.15.2"
echo "5. 1.16.5"
echo "6. 1.17.1"
echo "7. 1.18.1"
echo "8. 1.19.4"
echo "9. 1.20.1"
echo "10. 1.20.2"
echo "11. 1.20.3"
echo "12. 1.20.4"
read version

case $version in
    1)
        selected_version="1.12.2"
        ;;
    2)
        selected_version="1.13.2"
        ;;
    3)
        selected_version="1.14.4"
        ;;
    4)
        selected_version="1.15.2"
        ;;
    5)
        selected_version="1.16.5"
        ;;
    6)
        selected_version="1.17.1"
        ;;
    7)
        selected_version="1.18.1"
        ;;
    8)
        selected_version="1.19.4"
        ;;
    9)
        selected_version="1.20.1"
        ;;
    10)
        selected_version="1.20.2"
        ;;
    11)
        selected_version="1.20.3"
        ;;
    12)
        selected_version="1.20.4"
        ;;
    *)
        echo "无效的选择"
        exit 1
        ;;
esac

echo "您选择的服务器版本是：$selected_version"
case $selected_version in
    "1.12.2")
        java -jar BuildTools.jar --rev 1.12.2
        ;;
    "1.13.2")
        java -jar BuildTools.jar --rev 1.13.2
        ;;
    "1.14.4")
        java -jar BuildTools.jar --rev 1.14.4
        ;;
    "1.15.2")
        java -jar BuildTools.jar --rev 1.15.2
        ;;
    "1.16.5")
        java -jar BuildTools.jar --rev 1.16.5
        ;;
    "1.17.1")
        java -jar BuildTools.jar --rev 1.17.1
        ;;
    "1.18.1")
        java -jar BuildTools.jar --rev 1.18.1
        ;;
    "1.19.4")
        java -jar BuildTools.jar --rev 1.19.4
        ;;
    "1.20.1")
        java -jar BuildTools.jar --rev 1.20.1
        ;;
    10)
        java -jar BuildTools.jar --rev 1.20.2
        ;;    
    11)
        java -jar BuildTools.jar --rev 1.20.3
        ;;
    12)
        java -jar BuildTools.jar --rev 1.20.4
        ;;
    *)
        echo "无效的选择"
        exit 1
        ;;
esac
echo 构建完成,你可以使用这条命令:java -jar BuildTools.jar -rev 版本 来构建你想玩的版本
echo 祝你玩的开心 
echo ***如果报错请这条命令切换JDK版本:update-alternatives --config java