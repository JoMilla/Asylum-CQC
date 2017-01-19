_pos = (position player); // teleport all to you
// or _pos = [x,y]; for a custom position
{
	if (isPlayer _x && _x != player) then {
		_x setPos _pos;
	};
} forEach entities "CAManBase";