﻿
ALPHA_MULTILAYER

start_Model Version
	1	
end_Model Version

start_Model Parms
	2	0	
	-0.05976589766556405	F	-5.0	5.0	F	'Angle Offset'	F	F	0.0	0.0	100000.0	F	100.0	
	T	
	1.2149830553409076	F	-200.0	500.0	F	'Roughness'	F	F	0.0	0.0	100000.0	F	100.0	
	F	
	20	
	'(none)'	
	1.3	
	5.0	
	20	
	
	'(none)'	
	0.0	
	0.5	
	3	
	
	'(none)'	
	0.0	
	0.0	
	0	
	
	T	
	20.0	F	0.0	20.0	F	'# Back Reflections'	F	F	0.0	0.0	100000.0	F	100.0	
	100.0	F	0.0	100.0	F	'% 1st Reflection'	F	F	0.0	0.0	100000.0	F	100.0	
	
	F	
	3700.0	9000.0	
	T	
	'N,C,S'	
	F	
	F	
	20	
	0.0	F	0.0	50.0	F	'Bandwidth (eV)'	F	F	0.0	0.0	100000.0	F	100.0	
	9	
	F	
	T	
	T	
	T	
	6000.0	50000.0	
	F	
	5	
	F	
	F	
	'Ideal'	
	0.0	F	0.0	100.0	F	'% Thickness Non-uniformity'	F	F	0.0	0.0	100000.0	F	100.0	
	0.0	F	0.0	30.0	F	'Bandwidth (nm)'	F	F	0.0	0.0	100000.0	F	100.0	
	F	
	F	
	'All'	
	100.0	
	
	start_Ambient
		F	
		'(Not Specified)'	
		
	end_Ambient
	
	start_ScatteringFactor
		F	
		'(Not Specified)'	
		
	end_ScatteringFactor
	F	
	F	
	100.0	
	100.0	
	0.0	F	-5.0	5.0	F	'Wvl. Shift (nm)'	F	F	0.0	0.0	100000.0	F	100.0	
	1.0E-4	
	
	start_Simulation
		250.0	1000.0	5.0	45.0	75.0	10.0	100.0	F	0.5	
		F	
		1	
		0.0	F	0.0	10.0	F	'Angular Spread'	F	F	0.0	0.0	100000.0	F	100.0	
		'None'	
		0.0	F	-20.0	20.0	F	'#1'	F	F	0.0	0.0	100000.0	F	100.0	
		0.0	F	-20.0	20.0	F	'#2'	F	F	0.0	0.0	100000.0	F	100.0	
		0.0	F	-20.0	20.0	F	'#3'	F	F	0.0	0.0	100000.0	F	100.0	
		0.0	F	-20.0	20.0	F	'#4'	F	F	0.0	0.0	100000.0	F	100.0	
		0.0	F	-180.0	180.0	F	'Source Rot.'	F	F	0.0	0.0	100000.0	F	100.0	
		0.0	F	-180.0	180.0	F	'Receiver Rot.'	F	F	0.0	0.0	100000.0	F	100.0	
		F	
	end_Simulation
	
	start_MultiSamp
		0	0	
		
		start_DS Weighting
			
		end_DS Weighting
		
	end_MultiSamp
	
	start_ParmCoupling
		0	
		
		start_ParmCouplingFitParms
			0	
		end_ParmCouplingFitParms
		
	end_ParmCoupling
	100.0	
	'Standard Ellipsometric'	
	0	
	50	
	F	
	'(none)'	
	5	
	0.0	F	0.0	1000.0	F	'Smear Width'	F	F	0.0	0.0	100000.0	F	100.0	
	F	
	0	
	
	start_BW Conv
		'Gaussian'	
		0.0	F	0.0	1.0	F	'Exp. Relative Amp.'	F	F	0.0	0.0	100000.0	F	100.0	
		1.0	F	0.0	50.0	F	'Exp. Relative Width'	F	F	0.0	0.0	100000.0	F	100.0	
		F	
		0.0	F	0.0	30.0	F	'Bandwidth (nm) IR'	F	F	0.0	0.0	100000.0	F	100.0	
		1000.0	
		
	end_BW Conv
	
	start_Patterning
		F	
		0	
		0.0	F	0.0	100.0	F	'% Patterned'	F	F	0.0	0.0	100000.0	F	100.0	
		
	end_Patterning
	
	start_Color Calc
		F	
		346	163	512	307	
		0	1	2	'0'	
	end_Color Calc
	'(none)'	
	5	
	0.0	F	0.0	1000.0	F	'Smear Width #2'	F	F	0.0	0.0	100000.0	F	100.0	
	'(none)'	
	5	
	0.0	F	0.0	1000.0	F	'Smear Width #3'	F	F	0.0	0.0	100000.0	F	100.0	
	
	start_MultiModel
		0	2	
		
		50.0	F	0.0	100.0	F	'mWt1'	F	F	0.0	0.0	100000.0	F	100.0	
		50.0	F	0.0	100.0	F	'mWt2'	F	F	0.0	0.0	100000.0	F	100.0	
		
	end_MultiModel
	
end_Model Parms

start_Derived Parms
	T	
	
end_Derived Parms

start_Derived Parms 2
	'n'	1	6328.0	0.0	0.0	F	
	'k'	1	6328.0	0.0	0.0	F	
	
end_Derived Parms 2

start_Previous Results
	F	
	''	
	
end_Previous Results

start_Selected Options
	
	start_Options_Model Options
		F	
		F	
		F	
		F	
		F	
		F	
		F	
		F	
		F	
		F	
		F	
		F	
		
	end_Options_Model Options
	
	start_Options_Fit Options
		T	
		F	
		F	
		F	
		F	
		
	end_Options_Fit Options
	
	start_Options_Other Options
		F	
		F	
		F	
		
	end_Options_Other Options
	
end_Selected Options

start_Model Structure
	
	start_Layer0
		1.0E7	F	-0.0	100000.0	F	'Substrate Thickness'	F	F	0.0	0.0	100000.0	F	100.0	
		'Layer'	'7059_Cauchy'	'CAUCHY'	''	'7059_Cauchy'	
		start_7059_Cauchy Fit Parms
			1.4851954680715305	F	0.1	10.0	F	'A'	F	F	0.0	0.0	100000.0	F	100.0	
			0.004664018860009812	F	-2.0	2.0	F	'B'	F	F	0.0	0.0	100000.0	F	100.0	
			1.1929999264241398E-5	F	-1.0	1.0	F	'C'	F	F	0.0	0.0	100000.0	F	100.0	
			1.2579538244566643E-5	F	0.0	10.0	F	'k Amplitude'	F	F	0.0	0.0	100000.0	F	100.0	
			3.375853822137589	F	0.0	10.0	F	'Exponent'	F	F	0.0	0.0	100000.0	F	100.0	
			3000.0	
			
		end_7059_Cauchy Fit Parms
		
		start_SL Parms
			0	1	
			
		end_SL Parms
		
	end_Layer0
	
	start_Layer1
		0.0	F	-10.0	100000.0	F	'Thickness # 1'	F	F	0.0	0.0	100000.0	F	100.0	
		'Layer'	'ZTO'	'GENOSC'	''	'ZTO'	
		start_ZTO Misc Parms
			1	T	
			
		end_ZTO Misc Parms
		
		start_ZTO Fit Parms
			1	0.0011966144481566927	F	0.0	10.0	F	'Einf'	F	F	0.0	0.0	100000.0	F	100.0	
			'PSemi-M0'	
			1.5807745818745584	F	1.0E-4	1000.0	F	'Amp'	F	F	0.0	0.0	100000.0	F	100.0	
			0.7870400221006646	F	0.0	10.0	F	'Br'	F	F	0.0	0.0	100000.0	F	100.0	
			4.1	F	1.0E-4	15.0	F	'Eo'	F	F	0.0	0.0	100000.0	F	100.0	
			48.35824361221998	F	1.0E-4	100.0	F	'WR'	F	F	0.0	0.0	100000.0	F	100.0	
			0.02986356246930514	F	0.0010	0.999	F	'PR'	F	F	0.0	0.0	100000.0	F	100.0	
			0.002999458565522538	F	0.0010	5.0	F	'AR'	F	F	0.0	0.0	100000.0	F	100.0	
			2.2491444545608377	F	-1.0	1.0	F	'O2R'	F	F	0.0	0.0	100000.0	F	100.0	
			
		end_ZTO Fit Parms
		
		start_ZTO Grade Parms
			F	
			0.0	F	-1000.0	1000.0	F	'Grade 1'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'Grade 2'	F	F	0.0	0.0	100000.0	F	100.0	
			F	
			0.0	F	-1000.0	1000.0	F	'Grade 1'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'Grade 2'	F	F	0.0	0.0	100000.0	F	100.0	
			F	
			0.0	F	-1000.0	1000.0	F	'Grade 1'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'Grade 2'	F	F	0.0	0.0	100000.0	F	100.0	
			F	
			0.0	F	-1000.0	1000.0	F	'Grade 1'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'Grade 2'	F	F	0.0	0.0	100000.0	F	100.0	
			F	
			0.0	F	-1000.0	1000.0	F	'Grade 1'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'Grade 2'	F	F	0.0	0.0	100000.0	F	100.0	
			F	
			0.0	F	-1000.0	1000.0	F	'Grade 1'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'Grade 2'	F	F	0.0	0.0	100000.0	F	100.0	
			F	
			0.0	F	-1000.0	1000.0	F	'Grade 1'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'Grade 2'	F	F	0.0	0.0	100000.0	F	100.0	
			
		end_ZTO Grade Parms
		
		start_ZTO Permanent Poles
			0.0	F	-1000.0	1000.0	F	'UV Pole Amp.'	F	F	0.0	0.0	100000.0	F	100.0	
			11.0	F	1.0E-8	15.0	F	'UV Pole En.'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'IR Pole Amp.'	F	F	0.0	0.0	100000.0	F	100.0	
			
		end_ZTO Permanent Poles
		
		start_SL Parms
			0	1	
			
		end_SL Parms
		
	end_Layer1
	
end_Model Structure
