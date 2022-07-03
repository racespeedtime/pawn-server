#define MAX_TRANSFER    100000 // 最大传送点数量


enum maketype {
    mbuff,
    Float:mx,
    Float:my,
    Float:mz,
    Float:ma,
    mname[128]
};

enum makesystype {
    mbuff,
    Float:mx,
    Float:my,
    Float:mz,
    Float:ma,
    mname[128],
    tdescribe[48]
};

new vmake[MAX_TRANSFER][maketype], TransferColor = 0xFFFF00FF;
new vsysmake[MAX_TRANSFER][makesystype];
new TelePage[MAX_PLAYERS];

stock GetPlayerFacingAngleEx(const playerid, & Float:ang) {
    if(GetPlayerVehicleID(playerid) == 0) {
        GetPlayerFacingAngle(playerid, ang);
    } else {
        GetVehicleZAngle(GetPlayerVehicleID(playerid), ang);
    }
}
stock pVmakePos(const playerid, const id, const text[]) {
    new str[128];
    format(str, sizeof(str), "[传送] 你创建了一个'//%s'的传送点", text);
    SendClientMessage(playerid, TransferColor, str);
    format(vmake[id][mname], 128, "%s", text);
    vmake[id][mbuff] = 1;
    GetPlayerPos(playerid, vmake[id][mx], vmake[id][my], vmake[id][mz]);
    GetPlayerFacingAngleEx(playerid, vmake[id][ma]);
    new File:m = fopen("Teleport/Transfer.pos", io_append), info[1024];
    format(info, 1024, "%s %f %f %f %f\r\n", vmake[id][mname], vmake[id][mx], vmake[id][my], vmake[id][mz], vmake[id][ma]);
    make_fwrite(m, info);
    fclose(m);
    return 1;
}
stock pVmakeSysPos(const playerid, const id, const text[], const describe[]) {
    new str[128];
    format(str, sizeof(str), "[传送] 你创建了一个'/%s'的系统传送点", text);
    SendClientMessage(playerid, TransferColor, str);
    format(vsysmake[id][mname], 128, "%s", text);
    vsysmake[id][mbuff] = 1;
    GetPlayerPos(playerid, vsysmake[id][mx], vsysmake[id][my], vsysmake[id][mz]);
    GetPlayerFacingAngleEx(playerid, vsysmake[id][ma]);
    format(vsysmake[id][tdescribe], 48, "%s", describe);
    new File:m = fopen("Teleport/SysTransfer.pos", io_append), info[1024];
    format(info, 1024, "%s %f %f %f %f %s\r\n", vsysmake[id][mname], vsysmake[id][mx], vsysmake[id][my], vsysmake[id][mz], vsysmake[id][ma], vsysmake[id][tdescribe]);
    make_fwrite(m, info); //有问题在把\r\n换到最后
    fclose(m);
    format(str, sizeof(str), "您现在位于%s 指令/%s\n坐标%f,%f,%f", vsysmake[id][tdescribe], vsysmake[id][mname], vsysmake[id][mx], vsysmake[id][my], vsysmake[id][mz]);
    CreateDynamic3DTextLabel(str, 0x2BA2D5C8, vsysmake[id][mx], vsysmake[id][my], vsysmake[id][mz], 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, -1, -1, STREAMER_3D_TEXT_LABEL_SD, -1, 0);
    return 1;
}
stock Initialize_Transfer() {
    print("[提示]加载玩家传送");
    if(fexist("Teleport/Transfer.pos") == 1) {
        new File:mk = fopen("Teleport/Transfer.pos", io_read), mid, makeinfo[1024], name[128], idx = 0, loads = 0;
        while (fread(mk, makeinfo)) {
            format(name, 128, "%s", strtok(makeinfo, idx));
            mid = make_getindex();
            if(mid == -1) {
                printf("[提示]玩家自制传送点载入[%s]错误,没有空余makeid.", name);
            } else {
                format(vmake[mid][mname], 128, "%s", name);
                vmake[mid][mx] = floatstr(strtok(makeinfo, idx));
                vmake[mid][my] = floatstr(strtok(makeinfo, idx));
                vmake[mid][mz] = floatstr(strtok(makeinfo, idx));
                vmake[mid][ma] = floatstr(strtok(makeinfo, idx));
                vmake[mid][mbuff] = 1;
                loads++;
            }
            idx = 0;
        }
        fclose(mk);
        printf("[提示]读取传送[%d]个,剩余可用传送[%d]个", loads, MAX_TRANSFER - loads);
    }
    return 1;
}
stock Initialize_SysTransfer() {
    print("[提示]加载系统传送");
    if(fexist("Teleport/SysTransfer.pos") == 1) {
        new File:mk = fopen("Teleport/SysTransfer.pos", io_read), mid, makeinfo[1024], name[128], idx = 0, loads = 0;
        while (fread(mk, makeinfo)) {
            format(name, 128, "%s", strtok(makeinfo, idx));
            mid = make_sysgetindex();
            if(mid == -1) {
                printf("[警告]系统自制传送点载入[%s]错误,已达上限. ", name);
            } else {
                format(vsysmake[mid][mname], 128, "%s", name);
                vsysmake[mid][mx] = floatstr(strtok(makeinfo, idx));
                vsysmake[mid][my] = floatstr(strtok(makeinfo, idx));
                vsysmake[mid][mz] = floatstr(strtok(makeinfo, idx));
                vsysmake[mid][ma] = floatstr(strtok(makeinfo, idx));
                //创建地图上的3D显示
                format(vsysmake[mid][tdescribe], 48, "%s", strtok(makeinfo, idx));
                vsysmake[mid][mbuff] = 1;
                loads++;
                new str[128] = "";
                //2020.2.4新增 大世界 世界ID0 显示3D文字
                format(str, sizeof(str), "您现在位于%s 指令/%s\n坐标%f,%f,%f", vsysmake[mid][tdescribe], vsysmake[mid][mname], vsysmake[mid][mx], vsysmake[mid][my], vsysmake[mid][mz]);
                // Create3DTextLabel(str, 0x1EA7E1C8, vsysmake[mid][mx], vsysmake[mid][my], vsysmake[mid][mz], 40.0, 0, 0);
                //改用流光创建3D文字
                CreateDynamic3DTextLabel(str, 0x2BA2D5C8, vsysmake[mid][mx], vsysmake[mid][my], vsysmake[mid][mz], 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0, -1, -1, STREAMER_3D_TEXT_LABEL_SD, -1, 0);
            }
            idx = 0;
        }
        fclose(mk);
        printf("[提示]读取系统传送[%d]个,剩余可用传送[%d]个 <<<<<<", loads, MAX_TRANSFER - loads);
    }
    return 1;
}
stock make_fwrite(File:handle, const text[]) {
    new l = strlen(text);
    for (new i = 0; i < l; i++) {
        fputchar(handle, text[i], false);
    }
}
stock make_getindex() {
    new s = -1;
    for (new i = 0; i < MAX_TRANSFER; i++) {
        if(vmake[i][mbuff] == 0) {
            s = i;
            i = MAX_TRANSFER + 1;
        }
    }
    return s;
}
stock make_sysgetindex() {
    new s = -1;
    for (new i = 0; i < MAX_TRANSFER; i++) {
        if(vsysmake[i][mbuff] == 0) {
            s = i;
            i = MAX_TRANSFER + 1;
        }
    }
    return s;
}
stock make_findgo(const name[]) {
    new s = -1;
    for (new i = 0; i < MAX_TRANSFER; i++) {
        if(vmake[i][mbuff] == 1) {
            if(strcmp(vmake[i][mname], name, true) == 0) {
                s = i;
                i = MAX_TRANSFER + 1;
            }
        }
    }
    return s;
}
stock make_Sysfindgo(const name[]) {
    new s = -1;
    for (new i = 0; i < MAX_TRANSFER; i++) {
        if(vsysmake[i][mbuff] == 1) {
            if(strcmp(vsysmake[i][mname], name, true) == 0) {
                s = i;
                i = MAX_TRANSFER + 1;
            }
        }
    }
    return s;
}

stock Tele_OnPlayerLogin(const playerid){
	TelePage[playerid] = 1;
}

stock Tele_ShowListDialog(const playerid, const page) //为指定玩家显示赛道选择菜单,page表示赛道页数
{
    new title[64], msg[1024], maxpage;
    maxpage = make_sysgetindex() / 10;
	if(maxpage % 10 != 0) maxpage++;
    format(title, 64, "系统传送 - %i/%i", page, maxpage);
    format(msg, sizeof(msg), "传送点\t描述\tID\n", msg);
    if(page > 1 && page == maxpage) format(msg, sizeof(msg), "%s\n上一页", msg);
    if(page == 1 && page != maxpage) format(msg, sizeof(msg), "%s\n下一页\n", msg);
    if(page > 1 && page < maxpage) format(msg, sizeof(msg), "%s\n上一页\n下一页", msg);
    for (new i = (page - 1) * 10; i < page * 10; i++) {
        if(vsysmake[i][mbuff] == 1) { //如果存在的话
    	format(msg, sizeof(msg), "%s\n%s\t%s\t%d\n", msg, vsysmake[i][mname], vsysmake[i][tdescribe], i + 1);
        }
    }
    Dialog_Show(playerid, TeleListDialog, DIALOG_STYLE_TABLIST_HEADERS, title, msg, "传送", "关闭");
    return 1;
}

Dialog:TeleListDialog(playerid, response, listitem, inputtext[]) {
    if(response == 1) {
        new msg[128], idx;
        msg = strtok(inputtext, idx);
        if(strcmp(msg, "上一页") == 0) {
            TelePage[playerid]--;
            Tele_ShowListDialog(playerid, TelePage[playerid]);
            return 1;
        }
        if(strcmp(msg, "下一页") == 0) {
            TelePage[playerid]++;
            Tele_ShowListDialog(playerid, TelePage[playerid]);
            return 1;
        }
        format(msg, sizeof msg, "/%s", inputtext);
        AntiCommand[playerid] = 0;
        CallRemoteFunction("OnPlayerCommandText", "is", playerid, msg);
        // OnPlayerCommandText(playerid, msg);
        return 1;
    }
    return 1;
}