//////////////////////////////
//    Dynamic-AI-Creator    //
//    Version 3.1b - 2014   //
//--------------------------//
//    DAC_Config_Camps      //
//--------------------------//
//    Script by Silola      //
//    silola@freenet.de     //
//////////////////////////////

private [
			"_CampTyp","_campBasic","_campAmmo","_campStatic","_campWall","_campObjInit",
			"_campUserObj","_campAddUnit","_campRandomObj","_Unit_Pool_C","_array"
		];

			_CampTyp = _this select 0;_array = [];

switch (_CampTyp) do
{
//-------------------------------------------------------------------------------------------------------------------------
	case 0:		// OPFOR MRAP as one static with 2 mortars
	{
		_campBasic     = ["FlagPole_F",["Land_WaterTank_F",10,10,0],["Land_Cargo_HQ_V1_F",10,0,180],["Logic",22,-22,0],0];
		_campAmmo      = [["Box_East_Support_F",10,2,0],["Box_East_AmmoOrd_F",10,0,0],["Box_East_Ammo_F",10,-2,0],["Box_East_Wps_F",10,-4,0]];
		_campStatic    = [["O_MRAP_02_hmg_F",-7,15,45,"O_crew_F"],["O_Mortar_01_F",15,-10,180,"O_crew_F"],["O_Mortar_01_F",-7,-10,180,"O_crew_F"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_LampHarbour_F",8,-8,0]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],["_x lock true"],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 1:		// BLUFOR MRAP as one static with 2 mortars
	{
		_campBasic     = ["FlagPole_F",["Land_WaterTank_F",10,10,0],["Land_Cargo_HQ_V1_F",10,0,180],["Logic",22,-22,0],0];
		_campAmmo      = [["Box_NATO_Support_F",10,2,0],["Box_NATO_AmmoOrd_F",10,0,0],["Box_NATO_Ammo_F",10,-2,0],["Box_NATO_Wps_F",10,-4,0]];
		_campStatic    = [["B_MRAP_01_hmg_F",-7,15,45,"B_crew_F"],["B_Mortar_01_F",15,-10,180,"B_crew_F"],["B_Mortar_01_F",-7,-10,180,"B_crew_F"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_LampHarbour_F",8,-8,0]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],["_x lock true"],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 2:		// IND 
	{
		_campBasic     = ["FlagPole_F",["Land_BarrelEmpty_F",8,5,0],["Land_Cargo_House_V1_F",5,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["Box_IND_Support_F",10,2,0],["Box_IND_AmmoOrd_F",10,0,0],["Box_IND_Ammo_F",10,-2,0],["Box_IND_Wps_F",10,-4,0]];
		_campStatic    = [["I_Mortar_01_F",-7,15,0,"I_crew_F"],["I_Mortar_01_F",15,15,0,"I_crew_F"],["I_Mortar_01_F",15,-10,180,"I_crew_F"],["I_Mortar_01_F",-7,-10,180,"I_crew_F"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_LampStreet_small_F",8,-3,0]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 3:		// OPFOR
	{
		_campBasic     = ["FlagPole_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_House_V1_F",5,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["Box_East_Support_F",10,2,0],["Box_East_AmmoOrd_F",10,0,0],["Box_East_Ammo_F",10,-2,0],["Box_East_Wps_F",10,-4,0]];
		_campStatic    = [["O_Mortar_01_F",-6,8,0,"O_crew_F"],["O_Mortar_01_F",6,8,0,"O_crew_F"],["O_MRAP_02_hmg_F",-7,-10,180,"O_crew_F"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_LampStreet_small_F",8,-3,0]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],["_x lock true"],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 4:		// BLUFOR  small lighthousebldg
	{
		_campBasic     = ["FlagPole_F",["Land_WaterTank_F",8,5,0],["Land_Lighthouse_small_F",9,1,180],["Logic",10,15,0],0];
		_campAmmo      = [["Box_NATO_Ammo_F",4,-4,90]];
		_campStatic    = [["B_Mortar_01_F",-8,23,0,"B_crew_F"],["B_Mortar_01_F",23,23,0,"B_crew_F"],["B_Mortar_01_F",23,-23,180,"B_crew_F"],["B_Mortar_01_F",-8,-23,180,"B_crew_F"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = ["Land_Mil_ConcreteWall_F",[-10,30],[40,56,0],[5,5,5,5],[1,0.2],[0,0]];	//["Land_Mil_ConcreteWall_F",[-10,30],[40,56,0],[5,5,5,5],[1,0.2],[0,0]];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 5:		// BLUFOR  right-side statics with VAS on ammobox
	{
		_campBasic     = ["FlagPole_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_House_V1_F",5,0,0],["Logic",10,15,0],0];
		_campAmmo      = [["Box_NATO_Support_F",10,0,90]];
		_campStatic    = [["B_Mortar_01_F",15,-10,0,"B_crew_F"],["B_Mortar_01_F",-7,-10,0,"B_crew_F"]];
		_campAddUnit   = [];
		_campUserObj   = [["Land_LampStreet_small_F",8,-3,0]];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],["_x addAction[""<t color='#ff1111'>Virtual Ammobox</t>"", ""VAS\open.sqf""]"],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 6:		// BLUFOR  small outpost using MRAP as one static
	{
		_campBasic     = ["FlagPole_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_Patrol_V1_F",5,0,180],["Logic",10,15,0],0];
		_campAmmo      = [["Box_NATO_Ammo_F",10,0,90]];
		_campStatic    = [["B_MRAP_01_hmg_F",-7,15,45,"B_crew_F"]];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],["_x lock true"],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 7:		// BLUFOR  HQ with 4 x towers 2 x mortar 	big walls closed on N side large opening S side 
	{
		_campBasic     = ["FlagPole_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [["Box_NATO_Ammo_F",7,-6,90]];
		_campStatic    = [["B_Mortar_01_F",0,12,0,"B_crew_F"],["B_Mortar_01_F",14,12,0,"B_crew_F"]]; //between HQ and houses N
		_campAddUnit   = [];
		_campUserObj   = [ //topleft, topright, bottomright, bottomleft (or clockwise from top left quadrant)
			["Land_Cargo_Patrol_V1_F",-7,26,180],["Land_Cargo_Patrol_V1_F",25,26,180],["Land_Cargo_Patrol_V1_F",24,-23,270],["Land_Cargo_Patrol_V1_F",-9,-23,90],
			["Land_Cargo_House_V1_F",2,20,0],["Land_Cargo_House_V1_F",9,20,0],
			["Land_Mil_ConcreteWall_F",-2,12,90],["Land_Mil_ConcreteWall_F",17,12,90], // beside mortars
			["Land_ClutterCutter_large_F",1,12,90],["Land_ClutterCutter_large_F",13,12,90],["Land_ClutterCutter_large_F",4,-7,0], // grasscutters
			["Box_NATO_Ammo_F",5,6,0]
		];
		_campRandomObj = [];
		_campWall      = ["Land_Mil_WallBig_4m_F",[-10,30],[40,56,0],[0,2,4,2],[1,0.1],[0,0]];
						//["Land_Mil_ConcreteWall_F",[-10,30],[40,56,0],[5,5,5,5],[1,0.2],[0,0]];
		_campObjInit   = [
			[], //campBasic
			[], //campAmmo
			[], //campStatic
			[], ////campAddUnit
			["_x allowDamage false"], //campUserObj
			[], //campRandomObj
			[] //campWall
		];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 8:		// OPFOR  HQ with 4 x towers 2 x mortar    big walls closed on N side large opening S side 
	{
		_campBasic     = ["FlagPole_F",["Land_WaterTank_F",8,5,0],["Land_Cargo_HQ_V1_F",9,1,180],["Logic",8,-36,0],0];
		_campAmmo      = [["Box_East_Wps_F",7,-6,90],["Box_East_Ammo_F",5,6,0]];
		_campStatic    = [["O_Mortar_01_F",0,12,0,"O_crew_F"],["O_Mortar_01_F",14,12,0,"O_crew_F"]];
		_campAddUnit   = [];
		_campUserObj   = [
			["Land_Cargo_Patrol_V1_F",-7,26,180],["Land_Cargo_Patrol_V1_F",25,26,180],["Land_Cargo_Patrol_V1_F",24,-23,270],["Land_Cargo_Patrol_V1_F",-9,-23,90],
			["Land_Cargo_House_V1_F",2,20,0],["Land_Cargo_House_V1_F",9,20,0],
			["Land_Mil_ConcreteWall_F",-2,12,90],["Land_Mil_ConcreteWall_F",17,12,90],
			["Land_ClutterCutter_large_F",1,12,90],["Land_ClutterCutter_large_F",13,12,90],["Land_ClutterCutter_large_F",4,-7,0]
		];
		_campRandomObj = [];
		_campWall      = ["Land_Mil_WallBig_4m_F",[-10,30],[40,56,0],[0,2,4,2],[1,0.1],[0,0]];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	case 9:
	{
		_campBasic     = ["NULL"];
		_campAmmo      = [];
		_campStatic    = [];
		_campAddUnit   = [];
		_campUserObj   = [];
		_campRandomObj = [];
		_campWall      = [];
		_campObjInit   = [[],[],[],[],[],[],[]];
	};
//-------------------------------------------------------------------------------------------------------------------------
	Default {
				if(DAC_Basic_Value != 5) then
				{
					DAC_Basic_Value = 5;publicvariable "DAC_Basic_Value";
					hintc "Error: DAC_Config_Camps > No valid config number";
				};
				if(true) exitwith {};
			};
};

_array = [_campBasic,_campAmmo,_campStatic,_campAddUnit,_campUserObj,_campRandomObj,_campWall,_campObjInit];
_array