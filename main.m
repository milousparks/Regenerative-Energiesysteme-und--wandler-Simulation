%% VOREINSTELLUNGEN

clear all;
clc;

%% INITIALISIERUNG

% DATEIPFADE HINZUFÜGEN
addpath('./01_Parameter/', '02_Simulation\');

% PARAMETER ÖFFNEN
open('./01_Parameter\Parameter.m');

% PARAMETER ÜBERGEBEN
param = Parameter(); 

% SIMULATION ÖFFNEN UND STARTEN
mdlName = 'Solarzelle_Simulink.slx';
open('./02_Simulation/Solarzelle_Simulink.slx');
sim(mdlName);

%% GRAPHISCHE AUSWERTUNG

warning('off','all')

% AUFRUF DER SIMULATION
simOut = sim('02_Simulation\Solarzelle_Simulink','StartTime', '0','StopTime','10','FixedStep','1/1e2');

% AUSLESEN DER BENÖTIGTEN DATEN
vec_i_pv = simOut.i_pv(1,:).Data;
vec_v_pv = simOut.v_pv(1,:).Data;
vec_t = simOut.tout;

% PLOTTEN AUSGANGSSTROM ÜBER AUSGANGSSSPANNUNG
plot(vec_v_pv,vec_i_pv)
xlabel('Ausgangsspannung in V','interpreter','latex')
ylabel('Ausgangsstrom in A','interpreter','latex')
legend('$i_pv$','$v_pv$','interpreter','latex')
grid(gca,'minor')
grid on

% AUSGABE ALS PDF
pos = get(gcf,'Position');
set(gcf,'Position',pos+[0 -100 0 100])
filename = fullfile ('02_Simulation/','Modell_Solarpark.pdf');
exportgraphics(gcf,filename,'ContentType','vector')
disp('Grafik erstellt.')

