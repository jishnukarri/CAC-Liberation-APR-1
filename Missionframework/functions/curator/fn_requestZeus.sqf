/*
    File: fn_requestZeus.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2020-08-07
    Last Update: 2025-02-19
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Request Curator functionality from server.

    Parameter(s):
        _player - Player requesting Curator functionality [OBJECT, defaults to player]

    Returns:
        Function reached the end [BOOL]
*/

params [
    ["_player", player, [objNull]]
];

if (!isNull _player) then {
    [true, "KPLIB_createZeus", [_player, KPLIB_param_zeusLimited]] remoteExecCall ["BIS_fnc_callScriptedEventHandler", 2];
};

true