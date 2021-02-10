// #if !defined DISABLE_CARTROLL
// #include <yuki\AntiCheat\CarTroll>//Anti car trolls - Rogue //这个太慢了 会影响刷车等机制
// #endif
#include <yuki\AntiCheat\FakeKill> //Anti fake kill -Rogue
// #include <yuki\AntiCheat\CarSpam> //Anti fake kill -Rogue
#if defined _AC_SYSTEM_
   #endinput
#endif
#define _AC_SYSTEM_
#if !defined AC_MESSAGE_COLOR
	#define AC_MESSAGE_COLOR -1
#endif
public OnPlayerFakeKill(playerid, spoofedid, spoofedreason, faketype)
{
    FuckAnitCheat(playerid, "Fakekilling",7);
	return 1;
}
// public OnPlayerSpamCars(playerid, number)
// {
//     FuckAnitCheat(playerid, "Carspam",8);
// 	return 1;
// }
// public OnPlayerCarTroll(playerid, vehicleid, trolledid, trolltype)
// {
//     FuckAnitCheat(playerid, "Car troll",14);
// 	return 1;
// }

