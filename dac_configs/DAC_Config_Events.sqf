// Adds DAC spawned units to the list of curator objects
// Credit to Magnetar for this file

// Needs merging with proper events file

case 1:
{
_Events_Unit_S = [
["{_x addCuratorEditableObjects [(units _group),true]} forEach allCurators"],  // Executes during creation.
[],  // Executes when reaching waypoing.
[],  // Executes when group is eliminated.
[],  // Executes when unit is eliminated
[],  // Executes before group is reduced.
["{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators"],  // Executes after group is reduced.
[]   // Executes when enemy is detected.
];
_Events_Unit_V =  [
["{vehicleGen = vehicle _x} forEach units _group; {_x addCuratorEditableObjects [[vehicleGen],true]} forEach allCurators; {_x addCuratorEditableObjects [(units _group),true]} forEach allCurators"],
[],
[],
[],
[],
["{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators"],
[]
];
_Events_Unit_T =  [
["{vehicleGen = vehicle _x} forEach units _group; {_x addCuratorEditableObjects [[vehicleGen],true]} forEach allCurators; {_x addCuratorEditableObjects [(units _group),true]} forEach allCurators"],
[],
[],
[]
];
_Events_Unit_A =  [
["{vehicleGen = vehicle _x} forEach units _group; {_x addCuratorEditableObjects [[vehicleGen],true]} forEach allCurators; {_x addCuratorEditableObjects [(units _group),true]} forEach allCurators"],
[],
[],
[]
];
_Events_Unit_C =  [
["{_x addCuratorEditableObjects [(units _group),true]} forEach allCurators"],
[],
[],
[],
[],
["{_x addCuratorEditableObjects [[_unit],true]} forEach allCurators"]
];
_Events_Unit_H =  [
["{_x addCuratorEditableObjects [(units _group),true]} forEach allCurators"],
[],
[],
[]
];
_Events_Vehicle = [
["{_x addCuratorEditableObjects [[_vehc],true]} forEach allCurators"],
[],
[]
];
};
