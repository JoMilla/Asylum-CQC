private ["_obj","_caller","_id","_params","_FerDelay","_OtherObj","_PubVar"];

_obj = _this select 0;               // E.g. ActionBarrel
_caller = _this select 1;            // E.g. Player
_id = _this select 2;                // ID of action
_params = _this select 3;            // Params passed to this script.

_FerDelay = _params select 0;        // Delay (seconds)
_OtherObj = _params select 1;        // Dummy object to replace this object (object)
_PubVar = _params select 2;          // name of Public Variable to update (string)
                                     //            -- ASSUMES PUBLIC VARIABLE IS DEFAULT 0, INCREMENTING TO 1 THEN 2

//_caller SideChat format ["PV_MyToggle = %1", PV_MyToggle];        // Debug (PV_MyToggle is directly referenced PublicVariable)
//_caller SideChat format ["Public Variable is called: %1", _PubVar];        // Debug (PV_MyToggle is directly referenced PublicVariable)

_OtherObj setPos (getPos _obj);                                    //Replace object with dummy (so if player JIPs, they don't get to fire the event again; also prevents action from being called mulitple times whilst the wait is running)
_obj setPos [-200,-200];                                           //Move object to nether regions
_obj removeAction _id;                                             //Remove the action from this client once it is activated (not useful; will only remove action from this client and we're moving the object away anyway)

call compile format ["%1 = 1;",_PubVar];                           //Set value
publicVariable _PubVar;                                            //Broadcast to all clients
//_caller SideChat format ["PV_MyToggle = %1", PV_MyToggle];       // Debug (PV_MyToggle is directly referenced PublicVariable)

sleep _FerDelay;                                                //Wait

call compile format ["%1 = 2;",_PubVar];                           //Set second value
publicVariable _PubVar;                                            //Broadcast to all clients
//_caller SideChat format ["PV_MyToggle = %1", PV_MyToggle];       // Debug (PV_MyToggle is directly referenced PublicVariable)