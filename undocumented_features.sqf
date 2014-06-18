Saving generated groups to an array

To save each group within an zone (of a certain units category) into a global array you have to specify an additional array name as a string.
Example:

fun=["z1",[1,1,1,0],[1,1,3,2,"infZ1"],[],[],[],[0,0,2,0]] spawn DAC_Zone

After the initialization of DAC, all infantry groups from zone "z1" are stored in the array "infZ1".


Script version:

Be sure to adjust this param: DAC_Activate_Sound = false

