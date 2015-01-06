
ALPHA_MULTILAYER

start_Model Version
	1	
end_Model Version

start_Model Parms
	2	0	
	-0.2994016454118609	T	-5.0	5.0	F	'Angle Offset'	F	F	0.0	0.0	100000.0	F	100.0	
	T	
	216.25741823739196	T	-200.0	500.0	F	'Roughness'	F	F	0.0	0.0	100000.0	F	100.0	
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
	1.9775714447803712	T	0.0	5.0	F	'# Back Reflections'	F	F	0.0	0.0	100000.0	F	100.0	
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
		2524.6377008437303	T	-10.0	100000.0	F	'Thickness # 1'	F	F	0.0	0.0	100000.0	F	100.0	
		'Layer'	'ITO parameterized'	'GENOSC'	''	'ITO parameterized'	
		start_ITO parameterized Misc Parms
			1	T	
			
		end_ITO parameterized Misc Parms
		
		start_ITO parameterized Fit Parms
			2	2.9044130682400158	T	0.0	10.0	F	'Einf'	F	F	0.0	0.0	100000.0	F	100.0	
			'Harmonic'	
			14.916036659641522	T	-100.0	1000.0	F	'Amp'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'iAmp'	F	F	0.0	0.0	100000.0	F	100.0	
			0.2993717846879854	T	0.0	100.0	F	'Br'	F	F	0.0	0.0	100000.0	F	100.0	
			5.019380625094181	T	1.0E-8	15.0	F	'En'	F	F	0.0	0.0	100000.0	F	100.0	
			'Drude(RT)'	
			2.1618546189268957E-4	T	0.0	1000.0	F	'Resistivity (Ohm·cm)'	F	F	0.0	0.0	100000.0	F	100.0	
			8.270812139900439	T	0.0	1000.0	F	'Scat. Time (fs)'	F	F	0.0	0.0	100000.0	F	100.0	
			
		end_ITO parameterized Fit Parms
		
		start_ITO parameterized Grade Parms
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
			
		end_ITO parameterized Grade Parms
		
		start_ITO parameterized Permanent Poles
			0.0	F	-1000.0	1000.0	F	'UV Pole Amp.'	F	F	0.0	0.0	100000.0	F	100.0	
			11.0	F	1.0E-8	15.0	F	'UV Pole En.'	F	F	0.0	0.0	100000.0	F	100.0	
			0.0	F	-1000.0	1000.0	F	'IR Pole Amp.'	F	F	0.0	0.0	100000.0	F	100.0	
			
		end_ITO parameterized Permanent Poles
		
		start_SL Parms
			0	1	
			
		end_SL Parms
		
	end_Layer1
	
end_Model Structure
