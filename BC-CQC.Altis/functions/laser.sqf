//execVM "functions\laser.sqf";
//skipTime 12;
//1 setFog 0.8;
comment "Add Scroll option, until removed";
//removeAllActions player; 
//player addAction ["<t color='#00DEFF'>LASERTAG!</t>", "functions\laser.sqf"];




comment "clear stuff";
waitUntil {!isNull player};
comment "Remove player items";
removeAllItems player;
removeAllAssignedItems player;


comment "Add unifom, based on side";

        if (side player == east) then {
                player forceAddUniform "U_B_Protagonist_VR";
				player addHeadgear "H_CrewHelmetHeli_O";
        };
		if (side player == west) then {
                player forceAddUniform "U_O_Protagonist_VR";
				player addHeadgear "H_CrewHelmetHeli_I";
        };

comment "Add Vest and Stuff";

for "_i" from 1 to 3 do {player addItemToUniform "FirstAidKit";};
player addVest "V_PlateCarrier1_blk";



comment "REMOVED backpack";
player addBackpack "B_ViperHarness_blk_F";
for "_i" from 1 to 6 do {player addItemToBackpack "B_IR_Grenade";};
for "_i" from 1 to 4 do {player addItemToBackpack "Chemlight_green";};

comment "Add basic items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "ItemGPS";
player linkItem "O_NVGoggles_hex_F";

comment "Add to Uniform and Vest";
player addItemToUniform "100Rnd_580x42_Mag_Tracer_F";
for "_i" from 1 to 6 do {player addItemToVest "100Rnd_580x42_Mag_Tracer_F";};

comment "Add Backpack REMOVED";
for "_i" from 1 to 5 do {player addItemToBackpack "100Rnd_580x42_Mag_Tracer_F";};

comment "Add Specific Gun and Optic";
player addWeapon "arifle_CTARS_blk_Pointer_F";
player addPrimaryWeaponItem "optic_Holosight_blk_F";
player addPrimaryWeaponItem "muzzle_snds_58_blk_F";
player enableGunLights "forceon";

comment "say done";
["TaskSucceeded",["","Laser Tag!"]] call BIS_fnc_showNotification;