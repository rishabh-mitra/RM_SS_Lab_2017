%ardat1.m

clc;clear all;
global Ir Ea

Ra = .615          %armature resistance
La = 4.5e-3        %leakage inductance of armature
Jm = 0.068         %moment of inertia of rotor
Bm = 0.83e-3       %damping constant
Ki = 1.0712        %torque constant
Kb = Ki            %back emf constant
Tl = 20            %rated torque
Ir = 19            %rated current
Ea = 230           %rated voltage