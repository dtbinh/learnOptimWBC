% TEST CONNECTION WITH VREP

clear all
close all
clc



v = VAREP();
arm = VAREP_arm(v, 'LBR4p','fmt','%s_joint%d');
arm.teach();

    