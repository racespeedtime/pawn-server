/*
 /\\\\\\\\\\     /\\\\\\\\\\ /\\\\\\\\\\\\
 \/\\\____/\\\  /\\\_______/ \/___/\\\___/
  \/\\\   \/\\\ \/\\\             \/\\\
   \/\\\\\\\\/   \/\\\\\\\\\\      \/\\\
    \/\\\  \/\\\  \/_______/\\\     \/\\\
     \/\\\   \/\\\         \/\\\     \/\\\
      \/\\\   \/\\\  /\\\\\\\\\/      \/\\\
       \/_/    \/_/  \/_______/        \/_/

       检测玩家是否为非PC端，便于GameMode进行适配。
       其他服务器如果需要使用本套源码，需自行修改适配mysql等
       此脚本相关函数必须依赖filterscript，无法在gamemode中直接使用
*/

#include <a_samp>
#include <a_mysql>
// 引入mysql等服务配置信息
#include <common/services/connect>


new MySQL:g_Android;

// 定义过滤器脚本
#define FILTERSCRIPT

public OnFilterScriptInit() {
    print("---------------------------------------------------");
    print("Android Adapter Scripts By RaceSpeedTime,loading...");
    print("---------------------------------------------------");
    // 链接安卓适配数据库
    g_Android = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASS, MYSQL_DB);
    new errno = mysql_errno(g_Android);
    if(g_Android == MYSQL_INVALID_HANDLE || errno != 0) {
        new error[100];
        new rand = random(89999) + 10000;
        new string[64];

        mysql_error(error, sizeof(error), g_Android);
        printf("[ERROR] #%d '%s'", errno, error);
        print("[MySQL]无法连接到MYSQL服务器");

        format(string, sizeof(string), "password %d", rand);
        SendRconCommand(string);
        SendRconCommand("hostname [错误]RaceSpeedTime数据库加载失败,请联系管理员");
        SetGameModeText("Error - 适配移动端异常");
        return 1;
    }
    return 1;
}

public OnFilterScriptExit() {
    mysql_close(g_Android);
    print("---------------------------------------------------");
    print("Android Adapter Scripts By RaceSpeedTime,unloading...");
    print("---------------------------------------------------");
    return 1;
}


public OnPlayerConnect(playerid) {
    // 如果是NPC不处理
    if(IsPlayerNPC(playerid)) return 1;
    // 玩家连接时发送检测
    SendClientCheck(playerid, 0x48, 0, 0, 2);
    return 1;
}

public OnClientCheckResponse(playerid, actionid, memaddr, retndata) {
    printf("%d %d", playerid, actionid);
    if(actionid != 0x48) {
        // 安卓或其他移动端
        new query[96];
        mysql_format(g_Android, query, sizeof(query), "INSERT INTO `compat_android` VALUES (%d)", playerid);
        mysql_pquery(g_Android, query);
        return 1;
    }
    return 1;
}


public OnPlayerDisconnect(playerid) {
    // 如果是NPC不处理
    if(IsPlayerNPC(playerid)) return 1;
    // 玩家下线时清空他的安卓数据
    new query[96];
    mysql_format(g_Android, query, sizeof(query), "DELETE FROM `compat_android` WHERE `pid` = %d", playerid);
    mysql_pquery(g_Android, query);
    return 1;
}