function param = Parameter()

%% SOLARZELLE PARAMETER
% Temperaturkoeffizienten
    param.alpha_T = 0.06e-2;    % [1/K] Temperature coefficient for correction of output current [1,T4.5]
    param.beta_T = -0.36e-2;    % [1/K] Temperature coefficient for correction of output voltage [1,T4.5]

    param.An =  1.374;          % [] diode ideality factor in single diode model 
    param.iph_SC_STC = 9.272;   % [A] Short circuit current at STC for Vpv = 0 , see [3]
    param.is_STC = 1.1004e-7;   % [A] diode's saturation current at STC
    
% Zellenparameter
    param.Ncell_p = 1;          % [] PV cells per module connected in parallel
    param.Ncell_s = 72;         % [] PV cells per module connected in series
    param.Nmod_p = 336;         % [] number of PV modules connected in parallel
    param.Nmod_s = 27;          % [] number of PV modules connected in series
    param.Np = 336;             % [] total number of PV cells connected in parallel
    param.Ns = 1944;            % [] total number of PV cells connected in series

% Leistungparameter
    param.P_MPP = 3.045;        % [MW] total power of PV power plant at the maximumm power point at STC
    param.P_MPP_c = 4.72;       % [W] PV power of one cell at the maximum power at STC

% Strom- und Spannungsparameter
    param.v_pv_MPP = 1062.2;             % [V] terminal voltage of PV generator at STC
    param.v_pv_z = 1062.2/1944;          % [V] terminal voltage of PV cell at STC
    param.i_pv_MPP = 2902.1;             % [A] output current of PV generator at STC
    
% Eingangsparameter für Zellenmodell
    param.S_STC = 1000;         % [W/m^2] irradiation at STC
    param.Tc_STC = 298;         % [K] Cell temperature in Kelvin at standard test conditions (STC)
    param.v_OC_STC = 0.644;     % [V] PV open-circuit voltage at the STC (KORREKTUR  0.0644 [2] -> 0.644 see [3])
    param.Rh = 10.196;          % [V/A] shunt resistance 
    param.vT_STC = 25.7e-3;     % [V] thermal voltage of p-n junction at STC 

%% BUCK KONVERTER PARAMETER
    param.L = 1.83e-3;          % [H] inductance buck converter
    param.C = 17700e-6;         % [F] capacity buck converter
    param.v_dc = 900;           % [V] buck converter voltage
    param.f_PWM = 5e3;          % [Hz] PWM frequency

end