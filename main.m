% VOREINSTELLUNGEN
clear;
clc;

% DATEIPFADE HINZUFÜGEN
addpath('./01_Parameter/', '02_Simulation\');

%PARAMETER öffnen
open('./01_Parameter\Parameter.m');

% PARAMETER übergeben
param = Parameter(); 

% SIMULATION ÖFFNEN UND STARTEN
mdlName = 'Solarzelle_Simulink.slx';
open('./02_Simulation/Solarzelle_Simulink.slx');
sim(mdlName);

%%
for i=1:52
    c200(i)=out.i_pv.get.Data(1,1,:)
end
%%
plot(out.v_pv.Data,c200)
grid on