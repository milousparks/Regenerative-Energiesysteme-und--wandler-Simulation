function p = Parameter()
  
    
%Temperaturkoeffizienten
    p.alpha_T = 0.06e-2;    % [1/K] Temperature coefficient for correction of output current [1,T4.5]
    p.beta_T = -0.36e-2;    % [1/K] Temperature coefficient for correction of output voltage [1,T4.5]

    p.An =  1.374;          % [] diode ideality factor in single diode model 
    p.iph_SC_STC = 9.272;   % [A] Short circuit current at STC for Vpv = 0 , see [3]
    p.is_STC = 1.1004e-7;   % [A] diode's saturation current at STC
    
%Zellenparameter
    p.Ncell_p = 1;          % [] PV cells per module connected in parallel
    p.Ncell_s = 72;           % [] PV cells per module connected in series
    p.Nmod_p = 336;         % [] number of PV modules connected in parallel
    p.Nmod_s = 27;          % [] number of PV modules connected in series
    p.Np = 336;             % [] total number of PV cells connected in parallel
    p.Ns = 1944;            % [] total number of PV cells connected in series

%Leistungparameter
    p.P_MPP = 3.045;        % [MW] total power of PV power plant at the maximumm power point at STC
    p.P_MPP_c = 4.72;       % [W] PV power of one cell at the maximum power at STC

%Strom- und Spannungsparameter
    p.v_pv_MPP = 1062.2;    % [V] terminal voltage of PV generator at STC
    p.v_pv_z = 1062.2/(27*72);

    p.i_pv_MPP = 2902.1;    % [A] output current of PV generator at STC
    
%Eingangsparameter für Zellenmodell
    p.S_STC = 1000;         % [W/m^2] irradiation at STC
    p.Tc_STC = 298;         % [K] Cell temperature in Kelvin at standard test conditions (STC)
    p.Tc = 298;             % [K] Cell temperature under operating conditions
    p.v_OC_STC = 0.644;     % [V] PV open-circuit voltage at the STC (KORREKTUR  0.0644 [2] -> 0.644 see [3])
    p.Rh = 10.196;          % [V/A] shunt resistance 
    p.vT_STC = 25.7e-3;     % [V] thermal voltage of p-n junction at STC 


end