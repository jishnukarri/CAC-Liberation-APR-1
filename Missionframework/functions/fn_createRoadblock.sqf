/*
	File: fn_createRoadblock.sqf
	Author: Phantom
	Date: 2024-04-09
	Last Update: 2024-04-09
	License: MIT License - http://www.opensource.org/licenses/MIT

	Description:
		Spawns up to 10 random roadblocks at server startup
		Roadblocks are spawned at random positions on roads within a given radius of the FOB and OPFOR Military bases.
		Includes fallbacks if no FOBs or active sectors exist.

	Parameter(s):
		None

	Returns:
		Nothing
*/

private _maxRoadblocks = 10;
private _spawnRadius = 3000; // Radius around FOBs and OPFOR bases
private _roadblockPositions = [];

// Get FOB and OPFOR sector positions
private _FOBSectors = if (count KPLIB_sectors_fob > 0) then { KPLIB_sectors_fob } else { [] };
private _OPPFORSectors = if (count KPLIB_sectors_opfor > 0) then { KPLIB_sectors_opfor } else { [] };
private _activeSectors = if (count KPLIB_sectors_active > 0) then { KPLIB_sectors_active } else { [] };

// Combine FOB and OPFOR positions, fallback to active sectors if none exist
private _basePositions = [];
if (count (_FOBSectors + _OPPFORSectors) > 0) then {
	{
		_basePositions pushBack (getPos _x);
	} forEach (_FOBSectors + _OPPFORSectors);
} else {
	{
		_basePositions pushBack (getPos _x);
	} forEach _activeSectors;
};

// Function to generate random positions on roads within a radius
private _generateRandomRoadPosition = {
	params ["_center", "_radius"];
	private _pos = [];
	private _valid = false;
	private _attempts = 0;
	
	while {!_valid && _attempts < 50} do {
		_attempts = _attempts + 1;
		private _randomPos = [_center, 0, _radius, 10, 0, 0.7, 0] call BIS_fnc_findSafePos;
		private _roads = _randomPos nearRoads 100;
		
		if (count _roads > 0) then {
			private _road = selectRandom _roads;
			_pos = getPos _road;
			_valid = {(_pos distance2D _x) > 500} count _roadblockPositions == count _roadblockPositions;
		};
	};
	
	if (_valid) then { _pos } else { [] };
};

// Spawn roadblocks
for "_i" from 1 to _maxRoadblocks do {
	if (count _basePositions == 0) exitWith {
		diag_log "No valid positions found for roadblocks";
	};
	
	private _basePosition = selectRandom _basePositions;
	private _roadblockPosition = [_basePosition, _spawnRadius] call _generateRandomRoadPosition;
	
	if (_roadblockPosition isEqualTo []) then {
		diag_log format ["Could not find valid road position near %1", _basePosition];
		continue;
	};
	
	_roadblockPositions pushBack _roadblockPosition;
	
	// Use only the Land_BagBunker_Small_F configuration from KPLIB_staticsConfigs
	private _roadblockConfig = [];
	{
		if (_x select 0 == "Land_BagBunker_Small_F") then {
			_roadblockConfig = _x;
			break;
		};
	} forEach KPLIB_staticsConfigs;
	
	// Create the base structure
	private _baseObject = createVehicle [_roadblockConfig select 0, _roadblockPosition, [], 0, "NONE"];
	_baseObject setDir (random 360);
	
	// Create static weapons based on the config
	{
		private _staticTypes = _x select 0;
		private _relativePos = _x select 1;
		private _direction = _x select 2;
		
		// For RAISED-HMG, use KPLIB_o_turrets_HMG
		if ("RAISED-HMG" in _staticTypes) then {
			private _staticPos = _baseObject modelToWorld _relativePos;
			private _static = createVehicle [selectRandom KPLIB_o_turrets_HMG, _staticPos, [], 0, "NONE"];
			_static setDir (getDir _baseObject + _direction);
			_static setPos _staticPos;
			
			// Create crew for the static weapon
			private _group = createGroup [KPLIB_side_enemy, true];
			private _unit = _group createUnit [KPLIB_o_rifleman, _staticPos, [], 0, "NONE"];
			_unit moveInGunner _static;
		};
	} forEach (_roadblockConfig select 1);
	
	// Add some additional defensive elements
	private _defenseObjects = [
		["Land_BagFence_Long_F", [-3, 0, 0], 90],
		["Land_BagFence_Long_F", [3, 0, 0], 90],
		["Land_BagFence_Round_F", [-3, -2, 0], 180],
		["Land_BagFence_Round_F", [3, -2, 0], 0]
	];
	
	{
		_x params ["_class", "_offset", "_dir"];
		private _pos = _baseObject modelToWorld _offset;
		private _obj = createVehicle [_class, _pos, [], 0, "NONE"];
		_obj setDir (getDir _baseObject + _dir);
	} forEach _defenseObjects;
	
	// Create infantry group using KPLIB_o_roadblock units
	private _infantryGroup = createGroup [KPLIB_side_enemy, true];
	private _infantryPositions = [
		[-5, -3, 0],
		[5, -3, 0],
		[-2, -5, 0],
		[2, -5, 0],
		[0, 5, 0],
		[-4, 2, 0],
		[4, 2, 0]
	];
	
	// Select random units from KPLIB_o_roadblock (up to 7 units)
	private _unitCount = 3 + floor(random 4); // 3-7 units
	private _selectedPositions = _infantryPositions call BIS_fnc_arrayShuffle;
	_selectedPositions resize _unitCount;
	
	{
		private _unitClass = selectRandom KPLIB_o_roadblock;
		private _unitPos = _baseObject modelToWorld _x;
		private _unit = _infantryGroup createUnit [_unitClass, _unitPos, [], 0, "NONE"];
		
		// Give unit random direction facing outward
		private _dir = (_baseObject getDir _unitPos) + 180;
		_unit setDir _dir;
		
		// Set unit stance and behavior
		_unit setUnitPos selectRandom ["UP", "MIDDLE"];
		
	} forEach _selectedPositions;
	
	// Set group behavior
	[_infantryGroup] call KPLIB_fnc_setCombatMode;
	
	// Add a patrol waypoint
	[_infantryGroup, _roadblockPosition, 50] call bis_fnc_taskPatrol;
};

// Debug: Log roadblock positions
diag_log format ["Roadblocks created at positions: %1", _roadblockPositions];