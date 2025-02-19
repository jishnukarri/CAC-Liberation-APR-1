/*
    File: fn_initCuratorHandlers.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2020-08-07
    Last Update: 2025-02-19
    License: MIT License - http://www.opensource.org/licenses/MIT

    Description:
        Initialize curator handlers.

    Parameter(s):
        NONE

    Returns:
        Function reached the end [BOOL]
*/
#define ZEUSVAR(var) (format ["KPLIB_zeus_%1", var])

if (isServer) then {
    deleteVehicle zm1;

    [true, "KPLIB_createZeus", {
        params [
            ["_player", objNull, [objNull]],
            ["_limited", false, [true]]
        ];

        if (isNull _player) exitWith {};
        private _uid = getPlayerUID _player;

        private _oldManagedZeus = missionNamespace getVariable [ZEUSVAR(_uid), objNull];
        if (!isNull _oldManagedZeus && {_limited isEqualTo (_oldManagedZeus getVariable ["KPLIB_limited", -1])}) exitWith {
            _player assignCurator _oldManagedZeus;
            [true, "KPLIB_zeusAssigned", [_oldManagedZeus]] remoteExecCall ["BIS_fnc_callScriptedEventHandler", _player];
        };

        private _oldZeus = getAssignedCuratorLogic _player;
        unassignCurator _oldZeus;
        deleteVehicle _oldZeus;

        private _group = createGroup [sideLogic, true];
        private _zeus = _group createUnit ["ModuleCurator_F", [-7580, -7580, 0], [], 0, "NONE"];
        missionNamespace setVariable [ZEUSVAR(_uid), _zeus];

        _zeus setVariable ["Addons", 3, true];
        _zeus setVariable ["BIS_fnc_initModules_disableAutoActivation", false];

        _zeus setCuratorCoef ["edit", 0];
        _zeus setCuratorCoef ["place", 0];
        _zeus setCuratorCoef ["synchronize", 0];
        _zeus setCuratorCoef ["delete", 0];
        _zeus setCuratorCoef ["destroy", 0];

        _zeus setVariable ["KPLIB_limited", _limited];
        _player assignCurator _zeus;

        // Gather all addon names from CfgPatches
        private _allAddons = [];
        {
            _allAddons pushBack configName _x;
        } forEach (configClasses (configFile >> "CfgPatches"));
        _zeus addCuratorAddons _allAddons;

        [true, "KPLIB_zeusAssigned", [_zeus, _limited]] remoteExecCall ["BIS_fnc_callScriptedEventHandler", _player];
    }] call BIS_fnc_addScriptedEventHandler;

    [true, "KPLIB_activateZeusAddons", {
        params [
            ["_zeus", objNull, [objNull]],
            ["_addons", [], [[]]]
        ];

        _zeus addCuratorAddons _addons;
    }] call BIS_fnc_addScriptedEventHandler;

    addMissionEventHandler ["HandleDisconnect", {
        params ["", "", "_uid"];
        private _zeus = missionNamespace getVariable ZEUSVAR(_uid);
        if (!isNil "_zeus") then {
            deleteVehicle _zeus;
            missionNamespace setVariable [ZEUSVAR(_uid), nil];
        };
    }];
};

if (hasInterface) then {
    [true, "KPLIB_zeusAssigned", {
        params [
            ["_zeus", objNull, [objNull]],
            ["_limited", false, [true]]
        ];

        if !(_zeus getVariable ["KPLIB_drawCuratorLocations", false]) then {
            _zeus setVariable ["KPLIB_drawCuratorLocations", true];
            [_zeus] call BIS_fnc_drawCuratorLocations;
        };

        private _allAddons = [];
        {
            _allAddons pushBack configName _x;
        } forEach (configClasses (configFile >> "CfgPatches"));
        [true, "KPLIB_activateZeusAddons", [_zeus, _allAddons]] remoteExecCall ["BIS_fnc_callScriptedEventHandler", 2];
    }] call BIS_fnc_addScriptedEventHandler;
};

true
