%ardat2.m

clc;clear all;
global Ir Ea

Ra = 16.105          %armature resistance
La = 0.4549        %leakage inductance of armature
Jm = 0.00286         %moment of inertia of rotor
Bm = 0.83e-3       %damping constant
Ki = 1.42857        %torque constant
Kb = Ki            %back emf constant
Tl = 2            %rated torque
Ir = 1.4            %rated current
Ea = 200           %rated voltage