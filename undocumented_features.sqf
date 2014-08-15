// Saving generated groups to an array
To save each group within an zone (of a certain units category) into a global array you have to specify an additional array name as a string.
Example:
fun=["z1",[1,1,1,0],[1,1,3,2,"infZ1"],[],[],[],[0,0,2,0]] spawn DAC_Zone
After the initialization of DAC, all infantry groups from zone "z1" are stored in the array "infZ1".

You can do this for vehicle, armour and camp sections [1,2,50,0,100,10,"camp_array"]

// TO BE COMPLETED
// Creating armour and infantry patrols
under armour section in DAC call instead of [2,3,20,12] use [2, (3,1,2), 20,12] (is this right???)
this will spawn 2 armour groups with x infantry which will move in formation with the armour


// Script version:

Be sure to adjust this param: DAC_Activate_Sound = false

