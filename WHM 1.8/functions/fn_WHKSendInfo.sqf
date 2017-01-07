if !(isServer or hasInterface) then
{
	sleep (random 1);
	_counts = {local _x} count allUnits;
	_HCgroups = [];
	{
		if (local _x) then
		{
			_HCgroups append [_x];
		};
	}forEach allGroups;
	[player,_counts,_HCgroups] remoteExec ["Werthles_fnc_WHKAddHeadless",2];
	//[[player,_counts,_HCgroups],""Werthles_fnc_WHKAddHeadless"",false,false] call bis_fnc_mp;
};