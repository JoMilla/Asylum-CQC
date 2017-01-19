comment "Add init scripts";
[] execVM "anticheat.sqf";
//[] execVM "AdminMenu.sqf";
//[] execVM "functions\fn_hudSetup.sqf";


comment "give me a map on spawn atleast";
player linkItem "ItemMap";
player linkItem "ItemGPS";

comment "Lasertag stuff";
if (isNil "PV_laserToggle") then {     //if the PublicVariable does not yet exist, then we'll create a local copy. But if it DOES, we won't.
    PV_laserToggle = 0; 
    if (isServer) then {publicVariable "PV_laserToggle";}; // make the server propogate the value to all clients, clients should keep local copies until the propogation happens.
};
    



