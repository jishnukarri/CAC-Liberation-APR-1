if (isDedicated) exitWith {};

params ["_notif_id", ["_pos", getpos player]];

if (KPLIB_civinfo_debug > 0) then {[format ["civinfo_notifications called on: %1 - Parameters: [%2, %3]", debug_source, _notif_id, _pos], "CIVINFO"] remoteExecCall ["KPLIB_fnc_log", 2];};

switch (_notif_id) do {
    case 0: {
        ["lib_civ_informant_start", [markertext ([10000, _pos] call KPLIB_fnc_getNearestSector)]] call BIS_fnc_showNotification;
        private _informant_marker = createMarkerLocal ["informantmarker", _pos];
        _informant_marker setMarkerColorLocal "ColorCIV";
        _informant_marker setMarkerTypeLocal "mil_warning_noShadow";
    };
    case 1: {
        ["lib_civ_informant_success"] call BIS_fnc_showNotification;
        deleteMarkerLocal "informantmarker";
    };
    case 2: {
        ["lib_civ_informant_fail"] call BIS_fnc_showNotification;
        deleteMarkerLocal "informantmarker";
    };
    case 3: {
        ["lib_civ_informant_death"] call BIS_fnc_showNotification;
        deleteMarkerLocal "informantmarker";
    };
    case 4: {
        ["lib_civ_hvt_start", [markertext ([10000, _pos] call KPLIB_fnc_getNearestSector)]] call BIS_fnc_showNotification;
        private _marker = createMarker ["HVT_marker", _pos];
        _marker setMarkerColor KPLIB_color_enemyActive;
        _marker setMarkerType "hd_unknown";

        private _marker_zone = createMarker ["HVT_zone", _pos];
        _marker_zone setMarkerColor KPLIB_color_enemyActive;
        _marker_zone setMarkerShape "ELLIPSE";
        _marker_zone setMarkerBrush "FDiagonal";
        _marker_zone setMarkerSize [300,300];
    };
    case 5: {
        ["lib_civ_hvt_success"] call BIS_fnc_showNotification;
        deleteMarkerLocal "HVT_marker";
        deleteMarkerLocal "HVT_zone";
    };
    case 6: {
        ["lib_civ_hvt_fail"] call BIS_fnc_showNotification;
        deleteMarkerLocal "HVT_marker";
        deleteMarkerLocal "HVT_zone";
    };
    default {[format ["civinfo_notifications.sqf -> no valid value for _notif_id: %1", _notif_id], "ERROR"] remoteExecCall ["KPLIB_fnc_log", 2];};
};
