## 介绍

### 多样化体系

涵盖自由服应有体系，完全公益，用户至上。

基于0.3.7版本，兼容0.3DL进入，支持移动端连入(2.0+)。

数据持久化存储由传统`SQLITE`转向几乎完全使用`MYSQLR41.4`。

低耦合融合各大开源模块，强化赛车系统，海量赛道，公平竞技，老玩家狂喜。

双平台运行支持，地表首家基于开源实现Linux环境下，正则匹配(含`unicode`)用户名插件，突破原有用户名限制。

- 载具系统
- 赛车系统
  - 重生系统
  - 防碰撞系统
  - 增强信息显示
  - 实时房间内排名
  - 重写个人纪录系统
  - 迁移未来世界赛车数据库
  - 地表级强化赛车反作弊系统
- 爱车系统
- 房屋系统
- 团队系统
  - 上线提示
  - 团队传送
  - 团队聊天认证
- 家具系统
- 装扮系统
- 相机系统
- 传送系统
- TV系统
  - 强化赛车信息显示
- 动作系统
- 世界系统
- 问答系统
- DM系统
- 称号系统
- 个性化系统
- 公告提示
- 私聊系统
- 广告牌系统
- 管理员系统
- 时间分系统
- 等级系统
- 邮箱系统
- 碰碰车系统
- 个性速度表
- 网络信息统计
- 玩家纪念碑
- 脏字屏蔽
- OBJ载入脚本
- 适配流光的三大高楼脚本

注: 移动端兼容性较低，支持连入和基本功能。

### 目录结构

```sh
|-- .gitignore
|-- announce
|-- announce.exe
|-- autoRestart.sh
|-- log-core.dll
|-- log-core.so
|-- libmariadb.dll
|-- LICENSE
|-- README.md
|-- samp-npc
|-- samp-npc.exe
|-- samp-server.exe
|-- samp.ban
|-- samp03svr
|-- server_linux.cfg
|-- server_win.cfg
|-- .vscode
|   |-- tasks.json
|-- filterscripts
|   |-- .gitignore
|   |-- *.amx
|   |-- *.pwn
|-- gamemodes
|   |-- racespeedtime.pwn
|   |-- *.md
|-- npcmodes
|   |-- *.amx
|   |-- recordings
|       |-- *.rec
|-- pawno
|   |-- pawnc.pdb
|   |-- pawncc.exe
|   |-- pawncc.pdb
|   |-- pawndisasm.exe
|   |-- pawndisasm.pdb
|   |-- pawno.exe
|   |-- settings.ini
|   |-- include
|       |-- *.inc
|       |-- common
|           |-- *.inc
|-- plugins
|   |-- linux
|   |   |-- *.so
|   |-- win
|       |-- *.dll
|-- scriptfiles
|   |-- .gitignore
|   |-- ASAN_Config.ini
|   |-- GPS.dat
|   |-- samp202110022151gbk.sql
|   |-- addobjects
|      |-- .gitignore
|      |-- addobjects.txt
|      |-- txt
|          |-- .gitignore
|          |-- *.txt
|   |-- Attire
|      |-- Attire.cfg
|   |-- DeathMatch
|      |-- .gitignore
|      |-- *.txt
|      |-- Maps
|          |-- .gitignore
|          |-- *.txt
|   |-- PHouse
|      |-- config.cfg
|      |-- house(空).db
|      |-- house.db
|      |-- txt
|          |-- .gitignore
|          |-- *.txt
|   |-- QA
|      |-- questionAnswer.cfg
|   |-- SAMPMailJS-master
|      |-- .gitignore
|      |-- config.json
|      |-- config.json.custom
|      |-- config.json.gmail
|      |-- LICENSE
|      |-- package-lock.json
|      |-- package.json
|      |-- README.md
|      |-- sampmail.js
|      |-- sampmailjs.inc
|      |-- sampmail_gbk.js
|      |-- templates
|          |-- *.html
|   |-- Teleport
|      |-- SysTransfer.pos
|      |-- Transfer.pos
|   |-- Users
|      |-- .gitignore
|      |-- Command
|      |   |-- .gitignore
|      |-- Text
|          |-- .gitignore
|   |-- Vehicles
|       |-- .gitignore
|       |-- *.txt
```

## 运行

双平台对于环境的共同需求：`MySQL`, `Node.js`，如果没有安装请先自行搜索教程安装

### 导入数据库

例：上文目录结构中`scriptfiles`下存在`samp202110022151gbk.sql`文件，用记事本软件打开可看到**默认创建的数据库名为**`samp`，如果想修改则自行修改。

进入`mysql` 终端，执行命令`source 你的服务器文件夹路径\scriptfiles\备份数据库文件名.sql` 

例`source d:\rst\scriptfiles\samp202110022151gbk.sql;`

### Win

1. 删除为`linux`部署提供的文件，注意：注意文件后缀，例`samp-npc`是不带`.exe`的

- `samp-npc`
- `samp03svr`
- `announce`
- `log-core.so`
- `server_linux.cfg`
- `plugins\linux`

2. 移动`plugins\win`文件夹下所有文件到`plugins`下，之后删除`plugins\win`文件夹

3. 配置如下文件中以下几处数据库和邮箱系统的端口及密码。

   注：**如果不需要用到邮箱系统可以跳过以下的邮箱部分的步骤**，邮箱系统主要是实现用户绑定邮箱，找回密码等操作。

   `pawno\include\common\main.inc`
   
   ```c
   #define MYSQL_USER	"root" // 改成你的MYSQL用户名
   #define MYSQL_PASS 	"123456"// 改成你的MYSQL服务密码
   #define MYSQL_DB	"samp"// 改成你自己的数据库名
   
   #define SAMPMAILJS_PASSWORD "1234567"  // 改成你的邮箱系统密码（不是邮箱密码）
   ```
   `scriptfiles\SAMPMailJS-master\config.json`
   
   ```json
   {
     "machineIp": "127.0.0.1",
     "listenPort": 9008,
     "httpPassword": "1234567", // 改成你的邮箱系统密码，和上方1234567一样，并删除这行注释
     "enableDebug": true,
     "smtp": {
       "host": "smtp.163.com", // 修改为你的邮箱系统提供商smtp服务，并删除这行注释
       "port": 465, // 修改为你的邮箱系统提供商smtp服务的端口，并删除这行注释
       "secure": true,
       "auth": {
         "user": "username@163.com",  // 修改为你的邮箱账号，并删除这行注释
         "pass": "passwd" // 修改为你的邮箱密码，并删除这行注释
       },
       "tls": {
         "rejectUnauthorized": false
       }
     }
   }
   
   ```
   
4. 重命名`server_win.cfg` 为`server.cfg`

5. 配置`server.cfg`中的`rcon`默认密码为你想要的密码，这里默认是`changeme`，**不修改无法启动服务器！**

   ```
   rcon_password changeme
   ```

6. 运行`pawno\pawno.exe`，编译`gamemodes\racespeedtime.pwn`，出现`gamemodes\racespeedtime.amx`即编译成功，如果编译有报错请自行根据提示修复问题

7. 运行`samp-server.exe`
   - 如果提示数据库连接失败，请回到3重新配置数据库信息

   - 如果控制台出现`Run time error 19: "File or function is not found"`，请安装[Microsoft Visual C++2015](https://www.microsoft.com/zh-CN/download/details.aspx?id=48145)的`x64`和`x86`环境。

     如果已经有环境请先全部卸载该环境后重新安装。

   - 如果正常进入服务器并见到注册登录对话框代表运行成功

8. 如果使用邮箱系统请通过终端，在`scriptfiles\SAMPMailJS-master`文件夹下（首次请先执行`npm install`）执行`node sampmail.js`

### Linux

**注意：Linux下运行需要系统底层GCC版本>=8.2.0**

查看`gcc`版本`gcc -v`，如果低于8.2.0请先更新至8.2.0版本，**满足则跳过该步**。

**以下以CentOS7为例**

#### 升级GCC到8.2.0

1. 安装依赖

```sh
yum -y install gcc gcc-c++ kernel-devel yum -y install libgcc.i686 glibc-devel.i686
wget http://mirror.hust.edu.cn/gnu/gcc/gcc-8.2.0/gcc-8.2.0.tar.gz tar xvf gcc-8.2.0.tar.gz
cd gcc-8.2.0 ./contrib/download_prerequisites
mkdir build cd build …/configure --enable-languages=c,c++ --enable-checking=release --enable-multilib
```

2. 根据CPU核数，例如4核，执行编译 `make -j4`

3. 安装`make install`

4. 重启`reboot`

5. 查看动态库版本`strings /usr/lib64/libstdc++.so.6 | grep GLIBCXX` 

   `Centos7` 搭配`GCC`4.8.5，最新的`GLIBCXX`版本是3.4.19

6. 查找 `libstdc++.so.6*` 库文件 `find / -name libstdc++.so.6*`
7. 软链接`glibc`库
   - 64位
     - 把文件复制到lib64下 `cp /usr/local/lib64/libstdc++.so.6.0.25 /usr/lib64/libstdc++.so.6.0.25`
     - 进入lib64目录`cd /usr/lib64`
     - 删除旧的链接文件`rm -f libstdc++.so.6`
     - 创建新的链接文件`ln -s libstdc++.so.6.0.25 libstdc++.so.6`
   - 32位
     - 把文件复制到lib下`cp /usr/local/lib/libstdc++.so.6.0.25 /usr/lib/libstdc++.so.6.0.25`
     - 进入lib目录`cd /usr/lib`
     - 删除旧的链接文件`rm -f libstdc++.so.6`
     - 创建新的链接文件`ln -s libstdc++.so.6.0.25 libstdc++.so.6`
     - 再次查看动态库版本 `strings /usr/lib64/libstdc++.so.6 | grep GLIBCXX`，出现`3.4.25 GLIBCXX` 成功!

#### 部署

0. 安装必要环境后，运行时可能会出现`libmysqlclient.so.18`类似的提示，原因是缺少i386,i686的环境配置，比较耗费时间精力，尝试安装以下依赖或降低`Mysql`版本为`5.7`左右，再次安装。

   ```sh
   yum install mysql-community-libs
   yum install mysql-community-libs.i386
   yum install mysql-community-libs.i686
   ```

1. 提前在Win系统运行`pawno\pawno.exe`，编译`gamemodes\racespeedtime.pwn`，出现`gamemodes\racespeedtime.amx`即编译成功，如果编译有报错请自行根据提示修复问题，把编译后的文件上传至服务器

2. 删除为`Win`部署提供的文件

- `samp-npc.exe`
- `samp-server.exe`
- `announce.exe`
- `server_win.cfg`
- `libmariadb.dll`
- `log-core.dll`
- `plugins\win`

3. 移动`plugins\linux`文件夹下所有文件到`plugins`下，之后删除`plugins\linux`文件夹

4. 配置数据库邮箱文件同`Win`配置3

5. 重命名`server_linux.cfg` 为`server.cfg`

6. 配置`server.cfg`中的`rcon`默认密码同`Win`配置5

7. 通过`screen` 实现退出`ssh`保持运行，`screen`教程请自行学习
   - 新建一个`screen`用于运行服务器, 进入文件夹下 `./autoRestart.sh &`
   - 如果提示数据库连接失败，请回到4重新配置数据库信息
   - 如果正常进入服务器并见到注册登录对话框代表运行成功

8. 如果使用邮箱系统请通过终端，再新建一个`screen`用于运行邮箱系统，进入对应`scriptfiles\SAMPMailJS-master`文件夹下，（首次请先执行`npm install`）执行`node sampmail.js`