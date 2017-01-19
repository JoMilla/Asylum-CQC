comment "clear stuff";
waitUntil {!isNull player};
comment "Remove player items";
removeAllItems player;
removeAllAssignedItems player;


comment "Add unifom, based on side";

        if (side player == east) then {
                player forceAddUniform "U_I_HeliPilotCoveralls";
				player addHeadgear "H_Booniehat_tan";
        };
		if (side player == west) then {
                player forceAddUniform "U_B_HeliPilotCoveralls";
				player addHeadgear "H_Booniehat_oli";
        };



comment "Add Vest and Stuff";
for "_i" from 1 to 3 do {player addItemToUniform "FirstAidKit";};
player addVest "V_PlateCarrier1_blk";
player addItemToVest "SmokeShellOrange";
player addItemToVest "SmokeShellPurple";
player addItemToVest "SmokeShellRed";
player addItemToVest "SmokeShellYellow";

comment "REMOVED backpack";
//player addBackpack "B_Kitbag_mcamo";
//for "_i" from 1 to 4 do {player addItemToBackpack "FirstAidKit";};

comment "Add basic items";
player linkItem "ItemMap";
player linkItem "ItemCompass";
player linkItem "ItemWatch";
player linkItem "ItemRadio";
player linkItem "ItemGPS";