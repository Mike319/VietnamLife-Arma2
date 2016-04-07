/*
	File: welcomecredits.sqf
	Author: HellsGate
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 2; //<-- How long is the text on the screen for ? Recommended: 1

sleep 3; //Wait in seconds before the credits start after player is in-game
playSound "hello"; // This calls the code inside of description.ext //

_role1 = "What up you cunts its just Banter";
_role1names = ["The Banter Federation  Altis Life"];
_role2 = "Version:";
_role2names = ["Banter Altis Life RPG"];
_role3 = "Owners:";
_role3names = ["James","Kiika"];
_role4 = "Developer:";
_role4names = ["Rory Flanniagn"];
_role5 = "Admins:";
_role5names = ["Aaron","Nick","Galahad"];
_role6 = "Moderators:";
_role6names = ["Domo","Riley Skye"];
_role7 = "Website:";
_role7names = ["http://thebanterfederation.ipbhost.com/"];
_role8 = "TeamSpeak:";
_role8names = ["tsgb1.vilayer.com:10051"];
_role9 = "Restarts:";
_role9names = ["Restarts every 4 hours"];
_role10 = "Updates:";
_role10names = ["Custom Kavala"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.65' color='##ff0000' align='center'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.60' color='#FFFFFF' align='center'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 1.7,1], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 1,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
//The list below should have exactly the same amount of roles as the list above
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names],
[_role7, _role7names],
[_role8, _role8names],
[_role9, _role9names],
[_role10, _role10names]
];