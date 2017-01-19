comment "Add uniform loadout";
#include "Loadout.sqf";

comment "Add to Uniform and Vest";
player addItemToUniform "20Rnd_762x51_Mag";
for "_i" from 1 to 10 do {player addItemToVest "20Rnd_762x51_Mag";};

comment "Add Backpack REMOVED";
//for "_i" from 1 to 13 do {player addItemToBackpack "20Rnd_762x51_Mag";};

comment "Add Specific Gun and Optic";
player addWeapon "srifle_DMR_03_khaki_F";
player addPrimaryWeaponItem "optic_Arco_blk_F";

comment "say done";
["TaskSucceeded",["","MK1 Master Race"]] call BIS_fnc_showNotification;