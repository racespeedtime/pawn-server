// ����� - ��̬����4�������Ա��ָ�����꣬��ȡ���ݿ�������û���Ϣ����ʾ������ݡ�
// ��ֵ��ӦƤ���������������ɸ�ֵ��Ӧװ�硣

#define MAX_Monument 4
#define Act_Upt 25
enum Actor_Pos {
    Float:Actor_X, // ��Ա����X
    Float:Actor_Y, // ��Ա����Y
    Float:Actor_Z, // ��Ա����Z
    Float:Actor_R, // ��Ա����R
    Actor_Skin, // ��ԱƤ��
    Text3D:Actor_LabelId, //��Ա3D����ID
    Actor_Label[256], // ��Ա3D����
};

new Actor_SpawnPos[MAX_Monument][Actor_Pos] = { // ��Ա����
    {
        -299.514648,
        1534.983642,
        75.562500,
        134.047225,
        0,
        Text3D:  - 1,
            "loading..."
    },
    {
        -301.514648,
        1534.983642,
        75.562500,
        134.047225,
        0,
        Text3D:  - 1,
        "loading..."
    },
    {
        -303.514648,
        1534.983642,
        75.562500,
        134.047225,
        0,
        Text3D:  - 1,
        "loading..."
    },
    {
        -305.514648,
        1534.983642,
        75.562500,
        134.047225,
        0,
        Text3D:  - 1,
        "loading..."
    }
};

new Actor_IdList[MAX_Monument]; // ��ԱID����
new Actor_upt_interval = 1; //��Աʱ���ʱ�������ڼ�������������


enum Actor_Rand_Anim {
    Act_Animlib[18],
        Act_Animname[18]

}

new Actor_Rand_AnimLibs[][Actor_Rand_Anim] = {
    { "ATTRACTORS", "STEPSIT_LOOP" },
    { "BAR", "BARMAN_IDLE" },
    { "PED", "IDLE_CHAT" },
    { "PED", "ENDCHAT_03" },
    { "BASEBALL", "BAT_IDLE" },
    { "BD_FIRE", "BD_GF_WAVE" },
    { "BD_FIRE", "GRLFRD_KISS_03" },
    { "BD_FIRE", "M_SMKLEAN_LOOP" },
    { "BD_FIRE", "WASH_UP" },
    { "BEACH", "PARKSIT_M_LOOP" },
    { "BEACH", "PARKSIT_W_LOOP" },
    { "BEACH", "SITNWAIT_LOOP_W" },
    { "BMX", "BMX_PEDAL" },
    { "BOMBER", "BOM_PLANT" },
    { "BSKTBALL", "BBALL_IDLELOOP" },
    { "BSKTBALL", "BBALL_JUMP_SHOT" },
    { "BSKTBALL", "BBALL_REACT_MISS" },
    { "BSKTBALL", "BBALL_REACT_SCORE" },
    { "PARK", "Tai_Chi_Loop" }
};

stock Initialize_Monument() // ��ʼ�������
{
    for (new i = 0; i < sizeof(Actor_IdList); i++) {
        setActorInfo(i);
    }
}

stock Destroy_Monument() // ���ټ����
{
    for (new i = 0; i < sizeof(Actor_IdList); i++) {
        if (IsValidDynamic3DTextLabel(Actor_SpawnPos[i][Actor_LabelId])) {
            DestroyDynamic3DTextLabel(Actor_SpawnPos[i][Actor_LabelId]);
        }
        if (IsValidDynamicActor(Actor_IdList[i])) {
            DestroyDynamicActor(Actor_IdList[i]);
            Actor_IdList[i] = -1; // ����Ĭ��ֵ
        }
    }
}

stock setActorInfo(const index) { // ����ָ���������е��±� ��ʼ����Ա��Ϣ
    if (!IsValidDynamicActor(Actor_IdList[index])) {
        Actor_IdList[index] = CreateDynamicActor(Actor_SpawnPos[index][Actor_Skin], Actor_SpawnPos[index][Actor_X], Actor_SpawnPos[index][Actor_Y], Actor_SpawnPos[index][Actor_Z], Actor_SpawnPos[index][Actor_R], true, 100.0, 0);
        Rand_Anim_Monument(Actor_IdList[index]);
    }
    // ��̬���ٺʹ���label
    if (IsValidDynamic3DTextLabel(Actor_SpawnPos[index][Actor_LabelId])) {
        DestroyDynamic3DTextLabel(Actor_SpawnPos[index][Actor_LabelId]);
    }
    Actor_SpawnPos[index][Actor_LabelId] = CreateDynamic3DTextLabel(Actor_SpawnPos[index][Actor_Label], Color_White,
        Actor_SpawnPos[index][Actor_X] + 0.85, Actor_SpawnPos[index][Actor_Y], Actor_SpawnPos[index][Actor_Z], 7, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, 0);

}


stock seconds_Monument_Act() // ÿָ����������һ�μ����
{
    if (++Actor_upt_interval == Act_Upt) {
        Actor_upt_interval = 0;
        new query[256]; //��ѯSQL
        mysql_format(g_Sql, query, sizeof query, "SELECT a.`ID`,a.`Name`,a.`Skin`,a.`Score`,a.`Cash`,a.`RegDate`,a.`LastLogin`,a.`exp`,a.`pLevel`,a.`BanTime`,COUNT(b.`uid`) AS `raceNumber` \
            FROM `users` \
            a LEFT JOIN `race_record` \
            b ON b. \
            `uid` = a. \
            `ID`\
            GROUP BY a. \
            `ID` \
            ORDER BY RAND() LIMIT % d", MAX_Monument);
        mysql_pquery(g_Sql, query, "update_Monument_Act");
    }
}

function update_Monument_Act() { // ��ȡ��������Ϣ
    if (cache_num_rows() > 0) {
        Destroy_Monument(); // ���������Ϣ
        for (new i = 0; i < cache_num_rows(); i++) {
            new Act_Id, Act_Name[MAX_PLAYER_NAME], Act_Skin, Act_Score, Act_Cash, Act_RegDate;
            new Act_LastLogin, Act_Exp, Act_Level, Act_BanTime, Act_BanStatus[20], Act_RaceNumber;
            new reg_year, reg_month, reg_day, reg_hour, reg_minute, reg_second;
            new login_year, login_month, login_day, login_hour, login_minute, login_second;
            cache_get_value_name_int(i, "ID", Act_Id);
            cache_get_value_name(i, "Name", Act_Name);
            cache_get_value_name_int(i, "Skin", Actor_SpawnPos[i][Actor_Skin]);
            cache_get_value_name_int(i, "Score", Act_Score);
            cache_get_value_name_int(i, "Cash", Act_Cash);
            cache_get_value_name_int(i, "RegDate", Act_RegDate);
            cache_get_value_name_int(i, "LastLogin", Act_LastLogin);
            cache_get_value_name_int(i, "exp", Act_Exp);
            cache_get_value_name_int(i, "pLevel", Act_Level);
            cache_get_value_name_int(i, "BanTime", Act_BanTime);
            cache_get_value_name_int(i, "raceNumber", Act_RaceNumber);
            TimestampToDate(Act_RegDate, reg_year, reg_month, reg_day, reg_hour, reg_minute, reg_second, 8);
            TimestampToDate(Act_LastLogin, login_year, login_month, login_day, login_hour, login_minute, login_second, 8);
            if (Act_BanTime != 0) format(Act_BanStatus, sizeof(Act_BanStatus), "{FF0000}�����");
            else format(Act_BanStatus, sizeof Act_BanStatus, "{00FF00}����");
            format(Actor_SpawnPos[i][Actor_Label], 256, "%s(UID:%d)\nƤ��:%d\nʱ���:%d\n�ֽ�:%d\n�ȼ�:%d(exp:%d)\nע������:%d-%d-%d %02d:%02d:%02d\n�ϴε�¼:%d-%d-%d %02d:%02d:%02d\n��������(������):%d\n���״̬:%s", Act_Name, Act_Id, Act_Skin, Act_Score, Act_Cash, Act_Level, Act_Exp, reg_year, reg_month, reg_day, reg_hour, reg_minute, reg_second, login_year, login_month, login_day, login_hour, login_minute, login_second, Act_RaceNumber, Act_BanStatus);
            setActorInfo(i); // ������Ϣ������Ա
        }
        // �������
    }
}

stock Rand_Anim_Monument(const act_id) // �������
{
    new Act_anim_index = random(sizeof(Actor_Rand_AnimLibs));
    ApplyDynamicActorAnimation(act_id, Actor_Rand_AnimLibs[Act_anim_index][Act_Animlib], Actor_Rand_AnimLibs[Act_anim_index][Act_Animname], 4.1, 1, 0, 0, 0, 0);
    // printf("act_id:%d, animlib:%s,animname:%s, rand:%d", act_id, Actor_Rand_AnimLibs[Act_anim_index][Act_Animlib], Actor_Rand_AnimLibs[Act_anim_index][Act_Animname],Act_anim_index);
}