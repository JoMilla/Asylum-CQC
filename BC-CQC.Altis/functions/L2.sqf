comment "Add uniform loadout";
#include "Loadout.sqf";

comment "Add to Uniform and Vest";
player addItemToUniform "30Rnd_762x39_Mag_F";
for "_i" from 1 to 12 do {player addItemToVest "30Rnd_762x39_Mag_F";};

comment "Add Backpack REMOVED";
//for "_i" from 1 to 13 do {player addItemToBackpack "30Rnd_762x39_Mag_F";};

comment "Add Specific Gun and Optic";
player addWeapon "arifle_AK12_F";
player addPrimaryWeaponItem "optic_Arco_blk_F";

comment "say done";
["TaskSucceeded",["","OP12 Lets go."]] call BIS_fnc_showNotification;