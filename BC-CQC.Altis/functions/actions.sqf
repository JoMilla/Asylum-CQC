comment "Clear it";
removeAllActions player;

comment "Are we playing lasterag?";
if (PV_laserToggle == 1) then {
                player addAction ["<t size='3' color='#00DEFF'>LASERTAG!</t>", "functions\laser.sqf"];
        } else {
comment "Asylum Loadouts";
player addAction ["<t color='#DA0063'>MK-1 Loadout</t>", "functions\L1.sqf"];
player addAction ["<t color='#FF5733'>AK Loadout</t>", "functions\L2.sqf"];
player addAction ["<t color='#FFC300'>MK-18 Loadout</t>", "functions\L3.sqf"];
player addAction ["<t color='#9BDC25'>Katiba Loadout</t>", "functions\L4.sqf"];
};
comment "Add Bloodbags option";
player addAction ["<t color='#E31923'>Blood Transfusion Self</t>", "functions\bloodBag.sqf", true, 3, true, true, """", 'damage player > 0' ];
comment "Add Ear Buds";
player addAction ["<t color='#ffffff'>Toggle earplugs</t>", "functions\earplug.sqf"];