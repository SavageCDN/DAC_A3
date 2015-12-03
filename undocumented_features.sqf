/*
Undocumented features for DAC by Silola
Compiled by SavageCDN

This is a mess of various forum posts, chat posts, etc where Silola has expanded on various features not covered fully by the PDF readme.
Please note this information is not guaranteed to be accurate nor can I ensure these things work in both the Arma 2 and Arma 3 versions of DAC
*/

// HOW WAYPOINTS WORK WITHIN A ZONE
each group gets only one pool of waypoints at the beginning (after a group is generated),
and they don't move the waypoints in a row, but totaly randomized, so they can't reach any end.
 
For example, a group gets 5  of 20 waypoits: (wp2, wp7, wp11, wp13, wp17)
This group is then spawned at one of these waypoints (also random selected, if more then one waypoint generated).
 
The group is not moving along the waypoint path like: start > wp2 > wp7 > wp11 > wp13 > wp17 > end
but totaly randomized like this: start > wp7 > wp13 > wp7 > wp2 > wp17 > wp2 > wp13 > wp7 > wp2 >>>>> no end
 
Hint: A respawned group gets exactly the same waypoint pool as the killed one.
 

// SAVING GENERATED GROUPS TO AN ARRAY
To save each group within an zone (of a certain units category) into a global array you have to specify an additional array name as a string.
Example:
fun=["z1",[1,1,1,0],[1,1,3,2,"infZ1"],[],[],[],[0,0,2,0]] spawn DAC_Zone
After the initialization of DAC, all infantry groups from zone "z1" are stored in the array "infZ1".

You can do this for vehicle, armour and camp sections [1,2,50,0,100,10,"camp_array"]


// CREATING ARMOUR AND INFANTRY PATROLS
this will spawn 1 armour groups with 4 infantry which will move in formation with the armour
fun=["z1",[1,0,0],[],[],[8,[1,4,1],80,8],[],[1,1,1,1]] spawn DAC_Zone;

[1,4,1] = #of tracked?, #of inf?, #of what?


// SCRIPT VERSION

Be sure to adjust this param: DAC_Activate_Sound = false


// SIDES SHARING WAYPOINT ZONES

I know this problem, but there is a solution. Please have a look at the following example:

You have 3 zones ...

z1 (west): a zone on the left hand with 5 group of infantry with this script call:
fun=["z1",[1,0,0],[5,3,10,15],[],[],[],[1,1,1,1]] spawn DAC_Zone

z2 (east): a zone on the right hand with 5 group of infantry with this script call:
fun=["z2",[1,0,0],[5,3,10,15],[],[],[],[0,0,0,0]] spawn DAC_Zone

z3 (neutral): a zone in the middle only with waypoints with this script call:
fun=["z3",[1,0,0],[10],[],[],[],[0,0,0,0]] spawn DAC_Zone

The zones are linked together because they all use the same ID.

Each zone generates 10 waypoints. This means that for any group a total of 30 waypoints are available.

The problem is that you do not know in what zones the groups have their waypoints.
It is possible that some groups have only waypoints in their master zone and this is not optimal.

The solution in such a situation is, to move the master zones to the position of the waypoint zone,
after the DAC has created all the groups

First u move the zone z1 to the position of the waypoin zone z3.
After this action u move the zone z2 to the position of the waypoin zone z3.

init.sqf (example):

Code:
DAC_Basic_Value = 0;
waitUntil {DAC_Basic_Value > 0};

if(isServer) then
{
	[z1,(position z3),[],0,0,0] call DAC_fChangeZone;
	sleep 1;
	waituntil{DAC_NewZone == 0};
	[z2,(position z3),[],0,0,0] call DAC_fChangeZone;
};
Now, after this action, there is a common area where the units have waypoints 

All three zones overlap, and there is now an area with 30 waypoints for all groups.




// CHECKING # OF RESPAWNS LEFT IN CAMPS

Example:

There are two zones (z1 + z2) and each zone has one camp with some respawns.
Now you want to check the number of respawns in these camps,
and trigger an action when the respawns all been used up:

action for zone "z1" when all respawns been used up: [z3] call DAC_Activate
(the zone with the name "z3" will be activated)

action for zone "z2" when all respawns been used up: [z4] call DAC_Activate
(the zone with the name "z4" will be activated)

Ok, this is our plan. Now the solution to get this working:

write this into your init.sqf:

Code:
DAC_Basic_Value = 0;
waituntil{DAC_Basic_Value > 0};
if(isServer) then {[["z1","[z3] call DAC_Activate"],["z2","[z4] call DAC_Activate"]] execVM "countRespawns.sqf"};
After the DAC is initialized the script countRespawns.sqf is started with 2 parameters (arrays)

Each array contains a zone to check (sting) and an action code.
In this case an action to activate a DAC zone.

And now the script countRespawns.sqf to check the respawn count and fire up an action:

Code:
private ["_i","_z","_u","_c","_t","_zones","_action","_curZonePos","_curCampPos"];

_zones = _this;

_i = 0;_z = 0;_u = 0;_c = 0;_t = 0;
_action = count _zones;
_curZonePos = ""; 
_curCampPos = "";

while{_i < count _zones} do
{
	_curZonePos	= format[
							"%1",
							((position (call compile ((_zones select _i) select 0))) select 0) +
							((position (call compile ((_zones select _i) select 0))) select 1)
						];
	_z = 0;
	while{_z < count DAC_Spawn_CampsW} do
	{
		_curCampPos	= format[
								"%1",
								(((DAC_Spawn_CampsW select _z) select 0) select 0) +
								(((DAC_Spawn_CampsW select _z) select 0) select 1)
							];
								
		if(_curZonePos == _curCampPos) then
		{
			(_zones select _i) set [count (_zones select _i), _z];
		};
		_z = _z + 1;
	};
	_i = _i + 1;
};

sleep 1;

while{_action > 0} do
{
	_u = 0;
	while{_u < count _zones} do
	{
		if(format["%1",((_zones select _u) select 0)] != "EMPTY") then
		{
			_c = 0;_t = 2;
			while{_t < count (_zones select _u)} do
			{
				_c = _c + (((DAC_Spawn_CampsW select ((_zones select _u) select _t)) select 5) select 0);
				_t = _t + 1;
			};
			if(_c == 0) then
			{
				hint format["No respawns left in zone %1",((_zones select _u) select 0)];
				call compile ((_zones select _u) select 1);
				(_zones select _u) set[0, "EMPTY"];
				_action = _action - 1;
			};
		};
		_u = _u + 1;
	};
	sleep 1;
};



// INTEGRATING EDITOR GROUPS

It is important to wait until the DAC has finished the init phase.

init.sqf (example):

Code:
DAC_Basic_Value = 0;
waituntil{DAC_Basic_Value > 0};

if(isServer) then
{
	[group,1,[z1,z2],10,1,1,[1,1,1],0,0] spawn DAC_fInsertGroup;
};
If u want to insert more than one editor group, u can do it in such a way:

Code:
DAC_Basic_Value = 0;
waituntil{DAC_Basic_Value > 0};

_myGroups = [gr1,gr2,gr3,gr4];_i = 0;

if(isServer) then
{
	while{_i < count _myGroups} do
	{
		[(_myGroups select _i),1,[z1,z2],10,1,1,[1,1,1],0,0] spawn DAC_fInsertGroup;
		waituntil{DAC_Release_Action == 0};
		_i = _i + 1;
	};
};


// IS IT THE SAME WAY TOO RELEASE DAC_GENERATED_GROUPS?
// AND WHICH NAME DO THE DAC_GENERATED_GROUPS HAVE?


To show u how this works, I use a small example again:

You have two zones (z1 + z2) and each zone will generate 5 groups of infantry.
Now you want to release the groups from zone z2 after the DAC has created these groups.
The problem is that you don ot know the group names, which DAC has generated in the zone z2.

But there is a possibility to save the groups into an user-defined array.
You can do this for each zone and each unit category separatly:


fun=["z1",[1,0,0],[5,3,30,8],[],[],[],[1,1,1,1]] spawn DAC_Zone
This is zone z1 without saving any group name.

fun=["z2",[1,0,0],[5,3,30,8,"inf_group_z1"],[],[],[],[1,1,1,1]] spawn DAC_Zone
This is zone z2 and all generated infantry groups are stored in the user-defined array inf_group_z1


These optional parameter (string) you can enter for each unit category.
Ok, after the DAC has finished the init phase, you can do some actions with your user-defined array.
(Release DAC groups from the DAC system, for example  )

init.sqf (example):

Code:
DAC_Basic_Value = 0;
waituntil{DAC_Basic_Value > 0};

if(isServer) then
{
	{[_x] spawn DAC_fReleaseGroup}foreach inf_group_z1;
};



// SORRY, BUT THERE IS A SMALL MISTAKE WITHIN THE README 

The readme says (example):
Code:
[group,1,[z1,z2],10,1,1,[1,1,1],0,0] spawn DAC_fInsertGroup

but the following code is correct:
Code:
[group,1,[z1,z2],10,1,1,[1,1,1],0,false] spawn DAC_fInsertGroup

The last parameter must be true/false

true: if u want to save the editor-placed waypoints of the editor-placed group

The code for your mission could look like this now:

init.sqf (example):

Code:
DAC_Basic_Value = 0;_i = 0;
waituntil{DAC_Basic_Value > 0};

_myGroups = [[gr1,0],[gr2,1],[gr3,1]];

if(isServer) then
{
	[z1,(position z3),[],0,0,0] call DAC_fChangeZone;
	sleep 1;
	waituntil{DAC_NewZone == 0};
	[z2,(position z3),[],0,0,0] call DAC_fChangeZone;
	waituntil{DAC_NewZone == 0};
        sleep 1;
	while{_i < count _myGroups} do
	{
		[((_myGroups select _i) select 0),1,[z1,z2],10,((_myGroups select _i) select 1),1,[1,1,1],0,false] spawn DAC_fInsertGroup;
		waituntil{DAC_Release_Action == 0};
		_i = _i + 1;
	};

};

As u can see I have made a small change inside the script:

Code:
_myGroups = [[gr1,0],[gr2,1],[gr3,1]];

and

Code:
[((_myGroups select _i) select 0),1,[z1,z2],10,((_myGroups select _i) select 1),1,[1,1,1],0,false] spawn DAC_fInsertGroup;
Because u want to insert west and east groups, it is better to set an additional value to determine the correct side.



// CAN WE CREATE A WATER ZONE AND USE SHIPS AS A VEHICLE? 

This is restricted feasible.
For such an action, you need an additional entry within the Config_Unit ...

example:

Code:
case 9:
{
	_Unit_Pool_S = 	["USMC_Soldier_SL","USMC_Soldier_SL","USMC_Soldier_SL","USMC_Soldier_SL"];
	_Unit_Pool_V = 	[];
	_Unit_Pool_T = 	["RHIB"];
	_Unit_Pool_A = 	[];
};
Next, you need a special script call (example):

Code:
nul=["z4",[4,0,0],[],[],[3,1,15,5],[],[1,9,1,1,3]] spawn DAC_Zone
The unit config ID 9 is loaded
The waypoint config ID 3 is used

With this waypoint config DAC can generate waypoints in water only.
You can read this also in the readme on page 8 (lower section) 

But as I say before, this possibility is restricted.
You can generate boats only as category "tracked vehicle", otherwise the group will try to patrol the area if they reach a waypoint
and that iss not optimal on water 


// MORE DEBUG

You can make the following small test with this mission, to get the info about all generated vehicles during the init phase:

Open the file \DAC\DAC_Config_Events.sqf
Search for the first "_Events_Unit_T" entry and insert this code into its first array: "player sidechat format[""%1"",typeof _vehc]"

Now after this small action, the changed part of the file looks like this:

Code:
_Events_Unit_T =	[
				["player sidechat format[""%1"",typeof _vehc]"],
				[],
				[],
				[]
			];

And the last step: activate this event for the zone inside the script call:

fun=["z1",[1,0,1],[10,3,50,8],[],[3,1,20,8],[],[1,1,1,1]] spawn DAC_Zone
From now on, you will get the info about each generated vehicle during the DAC init,
and you can check if DAC is generated the right vehicle count.


// GROUND SUPPORT

There are four different global settings related to ground support, which I have 
unfortunately not described ... sorry 

The standard settings are:

1. DAC_Radio_Dist = "((1000 * DAC_AI_Level) * _skillgroup)";
2. DAC_Alert_Dist = "(100 + (100 * DAC_AI_Level))";
3. DAC_Radio_Time = "((15 / DAC_AI_Level) / ((skill (leader _group)) + 0.1))"
4. DAC_Radio_Count = "DAC_AI_Level" 


1. The "DAC_Radio_Dist" is the max range in which a group leader can reach groups for support (that what you mean).

Example: If u play your mission with DAC_AI_Level 3 and the average strength of the group (the group wich requesting support)
is 0.6 then the value for the "DAC_Radio_Dist" is: ((1000 * 3) * 0.6) = 1.800m

2. The "DAC_Alert_Dist" is the maximum distance, in which the groups provide support, without they being called for support.

3. The "Radio Time" is the time interval in which a leader tries to reach a group for ground support (sending a radio message).
The calculation with the above values would be: ((15 / 3) / (0.6 + 0.1)) = ~ 7 sec.

That means, the group leader will send each 7 sec. a support request to another DAC-group, within the "DAC_Radio_Dist", but nor each request is a hit ;-)

4. The "DAC_Radio_Count" specifies the maximum number of support groups that each group leader can request.

Maybe it is better to reduce this value (example): DAC_Radio_Count = "(DAC_AI_Level / 2)"

If u want to change one of the settings, write the new code into the init line of the DAC-logic, for example:

DAC_Radio_Dist = "((500 * DAC_AI_Level) * _skillgroup)";


// RANDOMIZATION

One of the things I like to do is increase the randomisation even more, by randomising how many groups will spawn. So the code snippet:
Code:
[10,1,10,5]
will produce 10 patrols each time.

But if you change it with the random command to look like this:
Code:
[(ceil (random 10)+8),1,10,5]
Then you will get a random nuber of patrols, anything from 9 to 18


// LIST OF DAC VARIABLES

Please be advised, most of these (if not all) are NOT synced to clients on a dedicated server which is both good and bad. 
The upside is any updates do not need to be network propogated / synced! 
Downside is code is limited to serverside execution only (otherwise you will end up with blank names).

DAC_Zones                                      
DAC_StartDummy                                                                      
DAC_All_Groups                                 
DAC_Res_Side                                   
DAC_No_Support                                 
DAC_GroupNull                                  
DAC_Code                                       
DAC_Obj_Init                                   
DAC_STRPlayers                                 
DAC_Sectors                                    
DAC_Min_Groups                                 
DAC_Point_Air                                  
DAC_Point_Camp                                 
DAC_InitText                                   
DAC_Init_Group                                 
DAC_InSpawn                                    
DAC_InSpawn                                    
DAC_All_Groups                                 
DAC_Camp_Pool                                  
DAC_Init_Group                                 
DAC_Init_WP                                    
DAC_Init_Unit                                  
DAC_East_Units                                 
DAC_WP_Pool_S                                  
DAC_GroupPoolE                                 
DAC_Arti_West                                  
DAC_Arti_Array                                 
DAC_Debug                                      
DAC_AI_Path                                    
DAC_NewZone                                    
DAC_CheckZones                                 
DAC_Arti_Veh                                   
DAC_Static                                     
DAC_Weather                                    
DAC_Rain                                       
DAC_Com_Values                                 
DAC_NewZone                                    
DAC_Fire_Pos                                   
DAC_Players                                    
DAC_Marker                                     
DAC_Marker_Val                                 
DAC_Unit_Pool_A                                
getVariable "DAC_ZoneLoc"                      
DAC_Unit_Pool_B                                
DAC_Unit_Pool_C                                
DAC_Unit_Pool_D                                
DAC_Player_SupGroup                            
DAC_Unit_Pool_H                                
DAC_Unit_Pool_O                                
DAC_Unit_Pool_S                                
DAC_Unit_Pool_T                                
DAC_VehicleForUse                              
DAC_Unit_Pool_V                                
DAC_Marker_Array                               
DAC_Point_Vehicle                              
DAC_Camps_InUse                                
DAC_Init_Counter                               
DAC_In_Building                                
DAC_Support_Logic getVariable "support_groups" 
DAC_ChangeWeather                              
DAC_Player_Arti                                
DAC_Point_Soldier                              
DAC_WPCount_Init                               
DAC_Check_Radio                                
DAC_Inactive_Zones                             
DAC_Activate_Sound                             
DAC_Arti_Player                                
DAC_Init_Values                                
DAC_Spawn_CampsE                               
DAC_Spawn_CampsW                               
DAC_Buildg_InUse                               
DAC_Master_Init                                
DAC_Release_Action                             
DAC_AI_Behaviour
