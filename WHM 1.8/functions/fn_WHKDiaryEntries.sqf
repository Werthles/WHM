//executes on human clients
//produces diary info when the WHM is activated
//WHM setup parameters, changelog and WHM intro

//private variables
private ["_unitsString", "_paramString"];

//params
params [["_units",[],[[]]],["_recurrent",true,[true]],["_timeBetween",30,[30]],["_debug",false,[false]],["_advanced",false,[false]],["_startDelay",30,[30]],["_pause",3,[3]],["_report",true,[true]],["_badNames",[],[[]]]];

_unitsString = "";

//briefing descriptions
if (count _units > 0) then {_unitsString = str _units;} else {_unitsString = "All HCs";};
_paramString = format["
	WHM HCs:             %1<br/><br/>
	Repeated AI Check:    %2<br/><br/>
	Time Between Checks: %3<br/><br/>
	Debug For All:         %4<br/><br/>
	Advanced Algorithm:   %5<br/><br/>
	WHM Start Delay:     %6<br/><br/>
	WHM Syncing Pause:   %7<br/><br/>
	Show Setup Reports:   %8<br/><br/>
	Ignore Checklist:       %9",
	_unitsString,_recurrent,_timeBetween,_debug,_advanced,_startDelay,_pause,_report,_badNames
];

player createDiarySubject ["WHK","WH Module"];
//v1
player createDiaryRecord ["WHK",["Updates","<font face='PuristaBold' size=20>v1.0</font><br/><font face='PuristaBold' size=12>- First release</font>"]];
//v1.0.1
player createDiaryRecord ["WHK",["Updates","<font face='PuristaBold' size=20>v1.0.1</font><br/><font face='PuristaBold' size=12>
Fixes:<br/>
- No longer displays errors in the Arma Launcher.</font>"]];
//v1.1
player createDiaryRecord ["WHK",["Updates","<font face='PuristaBold' size=20>v1.1</font><br/><font face='PuristaBold' size=12>New Features/Improvements:<br/>
- Units can now be ignored by the transfer to HC script. Put ""ignore"" as part of the unit's name, e.g.: CSAT1ignore2. The whole group will be ignored if one unit of the group is named.<br/>
- Initial setup report added. This shows the number of units transferred to the HC after the first cycle. Can be turned off within the init.sqf file.<br/>
- Debug mode now visually improved. Also, debug is switched off by default.<br/>
- Support modules, and other modules, can be ignored by the transfer to HC script. Put ""ignore"" as part of the module's name, e.g.: Supportignore1. Required step for using support modules.<br/>
- More features demonstrated in the Headless Test Mission.<br/>
Fixes:<br/>
- Hints now display silently.<br/>
- Non-recurring mode fixed.<br/>
- Improved algorithm.</font>"]];
//v1.2
player createDiaryRecord ["WHK",["Updates","<font face='PuristaBold' size=20>v1.2</font><br/><font face='PuristaBold' size=12>New Features/Improvements:<br/>
- Units can now be ignored by the transfer script by specifying either their name, class name, group name, synced module name, vehicle name or vehicle class name. This is done in the init.sqf file. There is a new parameter for this.<br/>
- This can also be achieved by putting ""ignore"" as part of any of the above names.</font>"]];
//v2.0
player createDiaryRecord ["WHK",["Updates","<font face='PuristaBold' size=20>v2.0</font><br/><font face='PuristaBold' size=12>New Features/Improvements:<br/>
- 3D debug mode. Shows groups transfer to HCs. Gives description of where each group is local to, if not on a HC.<br/>
- Debug mode can be turned on/off while the mission is in progress, via an option on the action menu. Debug mode script parameter now relates to who can activate debug mode: everyone - true, admin/host only - false.<br/>
- Arma 3 support modules automatically compatible, no work around required. Units/groups can still be ignored using script parameter 8, as before.<br/>
Fixes:<br/>
- Small efficiencies made and improved variable naming.</font>"]];
//v2.1
player createDiaryRecord ["WHK",["Updates","<font face='PuristaBold' size=20>v2.1</font><br/><font face='PuristaBold' size=12>Fixes:<br/>
- Unit count code amended.</font>"]];
//v2.2
player createDiaryRecord ["WHK",["Updates","<font face='PuristaBold' size=20>v2.2</font><br/><font face='PuristaBold' size=12>Fixes:<br/>
- Waypoint duplication workaround no longer required. If a group is waiting for trigger activation while HC transfer occurs, the group will not ignore this trigger.</font>"]];
//v2.3
player createDiaryRecord ["WHK",["Updates","<font face='PuristaBold' size=20>v2.3</font><br/><font face='PuristaBold' size=12>New Features/Improvements:<br/>
- Rebalancing added. If one HC has control of more units than another, script will attempt to even the load. However, if a HC disconnects, trigger syncs will still be lost.<br/>
Fixes:<br/>
- More efficient code.</font>"]];
//v3
player createDiaryRecord ["WHK",["Updates","<font face='PuristaBold' size=20>v3.0</font><br/><font face='PuristaBold' size=12>New Features/Improvements:<br/>
- Modules addon released. Configure everything from the editor, with all the usual module functionality.<br/>
Fixes:<br/>
- Rebalancing debug will always display the correct HC names.<br/>
- ""ignore"" and ""Ignore"" now checked for by default (but not ""iGnOrE"", for example).<br/>
- Respawn debug error fixed.</font>"]];
player createDiaryRecord ["WHK",["Parameters","<font face='PuristaBold' size=16>Module Parameters</font><br/><br/><font face='PuristaBold' size=12>" + _paramString + "</font>"]];
player createDiaryRecord ["WHK",["Overview","<img image='\Werthles_WHK\data\iconWHMColour_ca.paa'/><br/><font face='PuristaBold' size=14 color='#2199c7'>Werthles' Headless Module</font><br/><font face='PuristaBold' size=12><br/>
The easy way to use headless clients to control AI.<br/><br/>
1) Place a WH Module and named, playable headless clients.<br/>
2) Connect Headless Clients to your server.<br/>
3) Play your mission!<br/><br/>
Please leave feedback wherever you downloaded this, and I'll check it out!</font>"]];
