diag_log format ["[EuroForce] [MISSIONSTART] Missionfile: %1 - World Name: %2 ",(localize "STR_MISSION_TITLE"), worldName];

while { true } do 
{
    diag_log format [ "[EuroForce] [STAT TRACKER] Time: %1 - FPS: %2 [STAT TRACKER] [EuroForce]", time, diag_fps];
    sleep 60;
};