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
