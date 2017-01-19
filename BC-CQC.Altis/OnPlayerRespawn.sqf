comment "the Basics";
player enableStamina false;
player enableFatigue false;
Player setCustomAimCoef 0.1;


comment "Add map so admin can teleport without selecting loadout";
player linkItem "ItemMap";
player linkItem "ItemGPS";

comment "Add Actions to Menu";
execVM "functions\actions.sqf";

Comment "Add Hud IN DEV";
//[] execVM "functions/fn_hudSetup.sqf";
//[] execVM "functions/fn_hudUpdate.sqf";