comment "Add uniform loadout";
#include "Loadout.sqf";

comment "Add to Uniform and Vest";
player addItemToUniform "30Rnd_65x39_caseless_green";
for "_i" from 1 to 12 do {player addItemToVest "30Rnd_65x39_caseless_green";};

comment "Add Backpack REMOVED";
//for "_i" from 1 to 13 do {player addItemToBackpack "30Rnd_65x39_caseless_green";};

comment "Add Specific Gun and Optic";
player addWeapon "arifle_Katiba_F";
player addPrimaryWeaponItem "optic_Arco_blk_F";

comment "say done";
["TaskSucceeded",["","Coldwater: Best Katiba NA"]] call BIS_fnc_showNotification;