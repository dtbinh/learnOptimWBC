#include "LBR4pSimple_coriolis_row_6.h"

void LBR4pSimple_coriolis_row_6(double C_row_6[][1], const double* input1, const double* input2){
 
  double q1 = input1[0];
  double q2 = input1[1];
  double q3 = input1[2];
  double q4 = input1[3];
  double q5 = input1[4];
  double q6 = input1[5];
  double q7 = input1[6];
  double qd1 = input2[0];
  double qd2 = input2[1];
  double qd3 = input2[2];
  double qd4 = input2[3];
  double qd5 = input2[4];
  double qd6 = input2[5];
  double qd7 = input2[6];
 
        C_row_6[0][0]=0;
 C_row_6[1][0]=0;
 C_row_6[2][0]=0;
 C_row_6[3][0]=0;
 C_row_6[4][0]=0;
 C_row_6[5][0]=0;
 C_row_6[6][0]=0;



  C_row_6[0][0] = qd1*sin(q6*2.0)*3.456486E-3+qd1*sin(q6)*1.77606E-2+qd1*cos(q4)*sin(q6)*1.8216E-2+qd3*cos(q2)*sin(q6)*1.77606E-2-qd1*pow(cos(q3),2.0)*sin(q6)*1.77606E-2+qd1*pow(cos(q2),2.0)*pow(cos(q3),2.0)*sin(q6)*1.77606E-2-qd1*pow(cos(q2),2.0)*pow(cos(q4),2.0)*sin(q6)*1.77606E-2+qd1*pow(cos(q3),2.0)*pow(cos(q4),2.0)*sin(q6)*1.77606E-2+qd2*cos(q2)*cos(q5)*sin(q3)*1.96912972E-1+qd3*cos(q3)*cos(q5)*sin(q2)*(1.9E1/1.0E2)+qd4*cos(q2)*cos(q4)*sin(q5)*(1.9E1/1.0E2)+qd1*cos(q5)*cos(q6)*sin(q4)*1.8216E-2+qd5*cos(q2)*cos(q5)*sin(q4)*1.96912972E-1+qd7*cos(q2)*cos(q4)*sin(q6)*(3.0/1.0E2)-qd2*sin(q2)*sin(q4)*sin(q5)*1.96912972E-1+qd4*sin(q2)*sin(q3)*sin(q6)*1.77606E-2-qd5*sin(q2)*sin(q3)*sin(q5)*1.96912972E-1-qd1*pow(cos(q2),2.0)*cos(q4)*sin(q6)*1.8216E-2-qd1*pow(cos(q2),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd3*cos(q2)*pow(cos(q4),2.0)*sin(q6)*1.77606E-2-qd1*pow(cos(q3),2.0)*cos(q6)*sin(q6)*1.3825944E-2-qd1*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd1*cos(q2)*cos(q3)*cos(q5)*sin(q2)*6.912972E-3+qd2*cos(q2)*cos(q3)*cos(q4)*sin(q5)*(1.9E1/1.0E2)+qd2*cos(q2)*cos(q3)*cos(q6)*sin(q5)*1.8216E-2+qd3*cos(q2)*cos(q4)*cos(q5)*sin(q4)*6.912972E-3+qd3*cos(q3)*cos(q5)*cos(q6)*sin(q2)*1.77606E-2+qd5*cos(q3)*cos(q4)*cos(q5)*sin(q2)*1.96912972E-1+qd4*cos(q2)*cos(q4)*cos(q6)*sin(q5)*1.77606E-2-qd5*cos(q2)*cos(q4)*cos(q6)*sin(q6)*6.912972E-3+qd7*cos(q2)*cos(q5)*cos(q6)*sin(q4)*(3.0/1.0E2)-qd1*pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*sin(q6)*1.77606E-2+qd1*cos(q3)*sin(q3)*sin(q4)*sin(q5)*6.912972E-3+qd2*cos(q3)*sin(q2)*sin(q3)*sin(q6)*1.77606E-2-qd2*cos(q2)*sin(q3)*sin(q4)*sin(q6)*1.8216E-2-qd3*cos(q4)*sin(q2)*sin(q3)*sin(q5)*1.96912972E-1-qd4*cos(q3)*sin(q2)*sin(q4)*sin(q5)*(1.9E1/1.0E2)+qd4*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3-qd7*cos(q3)*sin(q2)*sin(q4)*sin(q6)*(3.0/1.0E2)-qd7*cos(q6)*sin(q2)*sin(q3)*sin(q5)*(3.0/1.0E2)+qd1*pow(cos(q2),2.0)*cos(q4)*cos(q5)*sin(q4)*6.912972E-3-qd2*cos(q2)*pow(cos(q4),2.0)*cos(q5)*sin(q3)*6.912972E-3-qd1*pow(cos(q3),2.0)*cos(q4)*cos(q5)*sin(q4)*6.912972E-3+qd3*cos(q3)*pow(cos(q4),2.0)*cos(q5)*sin(q2)*6.912972E-3-qd1*pow(cos(q2),2.0)*cos(q5)*cos(q6)*sin(q4)*1.8216E-2-qd2*cos(q2)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*6.912972E-3+qd3*cos(q3)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*6.912972E-3-qd3*cos(q2)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd4*cos(q2)*cos(q4)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3+qd3*cos(q2)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd5*cos(q2)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*6.912972E-3+qd2*pow(cos(q3),2.0)*sin(q2)*sin(q4)*sin(q5)*6.912972E-3+qd2*pow(cos(q6),2.0)*sin(q2)*sin(q4)*sin(q5)*6.912972E-3+qd5*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q5)*6.912972E-3+qd1*pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q6)*sin(q6)*1.3825944E-2-qd1*pow(cos(q2),2.0)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd1*pow(cos(q2),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*1.3825944E-2+qd1*pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd1*pow(cos(q3),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd1*cos(q2)*cos(q3)*cos(q5)*cos(q6)*sin(q2)*1.77606E-2+qd2*cos(q2)*cos(q3)*cos(q4)*cos(q6)*sin(q5)*1.77606E-2+qd2*cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q3)*1.8216E-2-qd3*cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*1.77606E-2+qd7*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*(3.0/1.0E2)-qd1*pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd1*pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd1*pow(cos(q2),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd1*pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd1*cos(q2)*cos(q4)*sin(q2)*sin(q3)*sin(q5)*6.912972E-3+qd1*cos(q2)*cos(q3)*sin(q2)*sin(q4)*sin(q6)*1.8216E-2+qd1*cos(q2)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*1.8216E-2-qd2*cos(q2)*cos(q4)*sin(q3)*sin(q4)*sin(q6)*1.77606E-2-qd1*cos(q3)*cos(q6)*sin(q3)*sin(q4)*sin(q5)*1.77606E-2+qd2*cos(q3)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*1.3825944E-2+qd3*cos(q3)*cos(q4)*sin(q2)*sin(q4)*sin(q6)*1.77606E-2-qd4*cos(q3)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*1.77606E-2+qd5*cos(q3)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*6.912972E-3+qd1*cos(q2)*cos(q3)*pow(cos(q4),2.0)*cos(q5)*sin(q2)*1.3825944E-2+qd1*cos(q2)*cos(q3)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*1.3825944E-2-qd1*pow(cos(q2),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*1.77606E-2+qd2*cos(q2)*cos(q3)*cos(q4)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3+qd2*cos(q2)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q3)*1.77606E-2+qd1*pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*1.77606E-2-qd3*cos(q3)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q2)*1.77606E-2-qd3*cos(q2)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*1.3825944E-2-qd5*cos(q3)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*6.912972E-3-qd1*pow(cos(q2),2.0)*cos(q3)*sin(q3)*sin(q4)*sin(q5)*6.912972E-3-qd2*cos(q3)*pow(cos(q4),2.0)*sin(q2)*sin(q3)*sin(q6)*1.77606E-2-qd1*cos(q3)*pow(cos(q6),2.0)*sin(q3)*sin(q4)*sin(q5)*1.3825944E-2-qd2*pow(cos(q3),2.0)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*1.77606E-2+qd3*cos(q4)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q5)*6.912972E-3-qd4*cos(q3)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*sin(q5)*6.912972E-3-qd4*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3+qd1*pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*cos(q5)*sin(q4)*6.912972E-3-qd1*pow(cos(q2),2.0)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*1.3825944E-2+qd2*cos(q2)*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*1.3825944E-2+qd1*pow(cos(q3),2.0)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*1.3825944E-2-qd3*cos(q3)*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*1.3825944E-2-qd3*cos(q2)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd2*pow(cos(q3),2.0)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*sin(q5)*1.3825944E-2-qd1*cos(q2)*cos(q3)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q2)*3.55212E-2-qd1*pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd1*cos(q2)*cos(q4)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q5)*1.3825944E-2+qd1*pow(cos(q2),2.0)*cos(q3)*cos(q6)*sin(q3)*sin(q4)*sin(q5)*1.77606E-2-qd2*cos(q3)*pow(cos(q4),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3-qd2*cos(q3)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3-qd1*cos(q2)*cos(q3)*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*2.7651888E-2-qd1*pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*1.77606E-2+qd1*pow(cos(q2),2.0)*cos(q3)*pow(cos(q6),2.0)*sin(q3)*sin(q4)*sin(q5)*1.3825944E-2-qd1*cos(q2)*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*1.8216E-2-qd1*pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*1.3825944E-2+qd1*cos(q2)*cos(q3)*cos(q4)*sin(q2)*sin(q4)*sin(q6)*3.55212E-2+qd1*cos(q2)*cos(q4)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*1.77606E-2+qd2*cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q4)*6.912972E-3-qd2*cos(q2)*cos(q4)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3+qd3*cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*6.912972E-3+qd2*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q5)*sin(q6)*6.912972E-3-qd4*cos(q2)*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3-qd2*cos(q3)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q4)*1.3825944E-2-qd2*cos(q2)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3-qd2*pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q5)*sin(q6)*1.3825944E-2+qd3*cos(q3)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*6.912972E-3-qd2*cos(q3)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3+qd1*cos(q2)*cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*1.3825944E-2-qd2*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*1.77606E-2-qd1*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q3)*sin(q5)*sin(q6)*1.3825944E-2-qd2*cos(q2)*cos(q3)*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3-qd4*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q5)*sin(q6)*6.912972E-3-qd3*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3+qd1*cos(q2)*cos(q3)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*1.3825944E-2+qd1*pow(cos(q2),2.0)*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q3)*sin(q5)*sin(q6)*1.3825944E-2-qd1*cos(q2)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*1.3825944E-2;
  C_row_6[1][0] = qd2*sin(q6*2.0)*(-3.456486E-3)-qd3*cos(q5)*sin(q3)*(1.9E1/1.0E2)+qd2*cos(q4)*sin(q6)*1.8216E-2+qd4*cos(q3)*sin(q6)*1.77606E-2-qd5*cos(q3)*sin(q5)*1.96912972E-1+qd2*pow(cos(q3),2.0)*sin(q6)*1.77606E-2+qd2*pow(cos(q4),2.0)*sin(q6)*1.77606E-2-qd2*pow(cos(q3),2.0)*pow(cos(q4),2.0)*sin(q6)*1.77606E-2+qd1*cos(q2)*cos(q5)*sin(q3)*1.96912972E-1-qd2*cos(q4)*cos(q5)*sin(q4)*6.912972E-3-qd3*cos(q3)*cos(q4)*sin(q5)*1.96912972E-1+qd2*cos(q5)*cos(q6)*sin(q4)*1.8216E-2-qd3*cos(q5)*cos(q6)*sin(q3)*1.77606E-2-qd5*cos(q4)*cos(q5)*sin(q3)*1.96912972E-1+qd4*cos(q3)*cos(q6)*sin(q6)*6.912972E-3-qd7*cos(q3)*cos(q6)*sin(q5)*(3.0/1.0E2)-qd1*sin(q2)*sin(q4)*sin(q5)*1.96912972E-1+qd4*sin(q3)*sin(q4)*sin(q5)*(1.9E1/1.0E2)+qd7*sin(q3)*sin(q4)*sin(q6)*(3.0/1.0E2)-qd3*pow(cos(q4),2.0)*cos(q5)*sin(q3)*6.912972E-3+qd2*pow(cos(q3),2.0)*cos(q6)*sin(q6)*1.3825944E-2-qd3*cos(q5)*pow(cos(q6),2.0)*sin(q3)*6.912972E-3+qd2*pow(cos(q4),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd5*cos(q3)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3+qd1*cos(q2)*cos(q3)*cos(q4)*sin(q5)*(1.9E1/1.0E2)+qd1*cos(q2)*cos(q3)*cos(q6)*sin(q5)*1.8216E-2+qd2*cos(q4)*cos(q5)*cos(q6)*sin(q4)*1.77606E-2-qd7*cos(q4)*cos(q5)*cos(q6)*sin(q3)*(3.0/1.0E2)+qd1*cos(q3)*sin(q2)*sin(q3)*sin(q6)*1.77606E-2-qd1*cos(q2)*sin(q3)*sin(q4)*sin(q6)*1.8216E-2-qd2*cos(q3)*sin(q3)*sin(q4)*sin(q5)*6.912972E-3-qd3*cos(q4)*sin(q3)*sin(q4)*sin(q6)*1.77606E-2+qd4*cos(q6)*sin(q3)*sin(q4)*sin(q5)*1.77606E-2-qd5*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3-qd1*cos(q2)*pow(cos(q4),2.0)*cos(q5)*sin(q3)*6.912972E-3-qd1*cos(q2)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*6.912972E-3+qd2*pow(cos(q3),2.0)*cos(q4)*cos(q5)*sin(q4)*6.912972E-3+qd2*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*1.3825944E-2+qd3*cos(q3)*cos(q4)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3+qd3*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q3)*1.77606E-2+qd5*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*6.912972E-3-qd4*cos(q3)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd1*pow(cos(q3),2.0)*sin(q2)*sin(q4)*sin(q5)*6.912972E-3+qd1*pow(cos(q6),2.0)*sin(q2)*sin(q4)*sin(q5)*6.912972E-3+qd4*pow(cos(q6),2.0)*sin(q3)*sin(q4)*sin(q5)*6.912972E-3-qd2*pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd3*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*1.3825944E-2-qd2*pow(cos(q3),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd2*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd1*cos(q2)*cos(q3)*cos(q4)*cos(q6)*sin(q5)*1.77606E-2+qd1*cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q3)*1.8216E-2-qd2*pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd1*cos(q2)*cos(q4)*sin(q3)*sin(q4)*sin(q6)*1.77606E-2+qd1*cos(q3)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*1.3825944E-2+qd2*cos(q3)*cos(q6)*sin(q3)*sin(q4)*sin(q5)*1.77606E-2-qd3*cos(q4)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3+qd1*cos(q2)*cos(q3)*cos(q4)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3+qd1*cos(q2)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q3)*1.77606E-2-qd2*pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*1.77606E-2-qd1*cos(q3)*pow(cos(q4),2.0)*sin(q2)*sin(q3)*sin(q6)*1.77606E-2-qd1*pow(cos(q3),2.0)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*1.77606E-2+qd2*cos(q3)*pow(cos(q6),2.0)*sin(q3)*sin(q4)*sin(q5)*1.3825944E-2+qd1*cos(q2)*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*1.3825944E-2-qd2*pow(cos(q3),2.0)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*1.3825944E-2-qd1*pow(cos(q3),2.0)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*sin(q5)*1.3825944E-2-qd1*cos(q3)*pow(cos(q4),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3-qd1*cos(q3)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3-qd3*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3+qd1*cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q4)*6.912972E-3-qd1*cos(q2)*cos(q4)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3+qd1*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q5)*sin(q6)*6.912972E-3-qd3*cos(q3)*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3+qd4*cos(q4)*cos(q5)*cos(q6)*sin(q3)*sin(q5)*sin(q6)*6.912972E-3-qd1*cos(q3)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q4)*1.3825944E-2-qd1*cos(q2)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3-qd1*pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q5)*sin(q6)*1.3825944E-2-qd1*cos(q3)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3-qd1*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*1.77606E-2-qd1*cos(q2)*cos(q3)*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3+qd2*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q3)*sin(q5)*sin(q6)*1.3825944E-2;
  C_row_6[2][0] = qd3*sin(q6)*1.77606E-2+qd1*cos(q2)*sin(q6)*1.77606E-2-qd2*cos(q5)*sin(q3)*(1.9E1/1.0E2)+qd4*cos(q4)*sin(q5)*(1.9E1/1.0E2)+qd5*cos(q5)*sin(q4)*1.96912972E-1+qd7*cos(q4)*sin(q6)*(3.0/1.0E2)-qd3*pow(cos(q4),2.0)*sin(q6)*1.77606E-2+qd1*cos(q3)*cos(q5)*sin(q2)*(1.9E1/1.0E2)-qd2*cos(q3)*cos(q4)*sin(q5)*1.96912972E-1-qd2*cos(q5)*cos(q6)*sin(q3)*1.77606E-2+qd3*cos(q4)*cos(q5)*sin(q4)*6.912972E-3+qd4*cos(q4)*cos(q6)*sin(q5)*1.77606E-2-qd5*cos(q4)*cos(q6)*sin(q6)*6.912972E-3+qd7*cos(q5)*cos(q6)*sin(q4)*(3.0/1.0E2)-qd1*cos(q2)*pow(cos(q4),2.0)*sin(q6)*1.77606E-2-qd2*pow(cos(q4),2.0)*cos(q5)*sin(q3)*6.912972E-3-qd2*cos(q5)*pow(cos(q6),2.0)*sin(q3)*6.912972E-3-qd3*pow(cos(q4),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd4*cos(q4)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3+qd3*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd5*cos(q5)*pow(cos(q6),2.0)*sin(q4)*6.912972E-3+qd1*cos(q2)*cos(q4)*cos(q5)*sin(q4)*6.912972E-3+qd1*cos(q3)*cos(q5)*cos(q6)*sin(q2)*1.77606E-2-qd3*cos(q4)*cos(q5)*cos(q6)*sin(q4)*1.77606E-2-qd1*cos(q4)*sin(q2)*sin(q3)*sin(q5)*1.96912972E-1-qd2*cos(q4)*sin(q3)*sin(q4)*sin(q6)*1.77606E-2+qd1*cos(q3)*pow(cos(q4),2.0)*cos(q5)*sin(q2)*6.912972E-3+qd1*cos(q3)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*6.912972E-3-qd1*cos(q2)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd1*cos(q2)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd2*cos(q3)*cos(q4)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3+qd2*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q3)*1.77606E-2-qd3*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*1.3825944E-2+qd2*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*1.3825944E-2-qd3*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd1*cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*1.77606E-2+qd1*cos(q3)*cos(q4)*sin(q2)*sin(q4)*sin(q6)*1.77606E-2-qd2*cos(q4)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3-qd4*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3-qd1*cos(q3)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q2)*1.77606E-2-qd1*cos(q2)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*1.3825944E-2+qd1*cos(q4)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q5)*6.912972E-3-qd1*cos(q3)*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*1.3825944E-2-qd1*cos(q2)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3-qd2*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3+qd1*cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*6.912972E-3-qd2*cos(q3)*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3+qd1*cos(q3)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*6.912972E-3-qd1*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3;
  C_row_6[3][0] = qd4*sin(q6*2.0)*3.456486E-3+qd4*sin(q6)*1.77606E-2-qd5*sin(q5)*1.96912972E-1+qd2*cos(q3)*sin(q6)*1.77606E-2+qd3*cos(q4)*sin(q5)*(1.9E1/1.0E2)-qd7*cos(q6)*sin(q5)*(3.0/1.0E2)+qd5*pow(cos(q6),2.0)*sin(q5)*6.912972E-3+qd1*cos(q2)*cos(q4)*sin(q5)*(1.9E1/1.0E2)+qd2*cos(q3)*cos(q6)*sin(q6)*6.912972E-3+qd3*cos(q4)*cos(q6)*sin(q5)*1.77606E-2+qd1*sin(q2)*sin(q3)*sin(q6)*1.77606E-2+qd2*sin(q3)*sin(q4)*sin(q5)*(1.9E1/1.0E2)+qd3*cos(q4)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3-qd4*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd1*cos(q2)*cos(q4)*cos(q6)*sin(q5)*1.77606E-2-qd1*cos(q3)*sin(q2)*sin(q4)*sin(q5)*(1.9E1/1.0E2)+qd1*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3+qd2*cos(q6)*sin(q3)*sin(q4)*sin(q5)*1.77606E-2+qd1*cos(q2)*cos(q4)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3-qd2*cos(q3)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*6.912972E-3+qd2*pow(cos(q6),2.0)*sin(q3)*sin(q4)*sin(q5)*6.912972E-3-qd1*cos(q3)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*1.77606E-2-qd3*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3-qd1*cos(q3)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*sin(q5)*6.912972E-3-qd1*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*6.912972E-3-qd1*cos(q2)*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*6.912972E-3+qd2*cos(q4)*cos(q5)*cos(q6)*sin(q3)*sin(q5)*sin(q6)*6.912972E-3-qd1*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q5)*sin(q6)*6.912972E-3;
  C_row_6[4][0] = qd5*sin(q6*2.0)*(-3.456486E-3)-qd4*sin(q5)*1.96912972E-1+qd7*sin(q6)*(3.0/1.0E2)-qd2*cos(q3)*sin(q5)*1.96912972E-1+qd3*cos(q5)*sin(q4)*1.96912972E-1+qd4*pow(cos(q6),2.0)*sin(q5)*6.912972E-3+qd1*cos(q2)*cos(q5)*sin(q4)*1.96912972E-1-qd2*cos(q4)*cos(q5)*sin(q3)*1.96912972E-1-qd3*cos(q4)*cos(q6)*sin(q6)*6.912972E-3-qd1*sin(q2)*sin(q3)*sin(q5)*1.96912972E-1+qd2*cos(q3)*pow(cos(q6),2.0)*sin(q5)*6.912972E-3-qd3*cos(q5)*pow(cos(q6),2.0)*sin(q4)*6.912972E-3+qd1*cos(q3)*cos(q4)*cos(q5)*sin(q2)*1.96912972E-1-qd1*cos(q2)*cos(q4)*cos(q6)*sin(q6)*6.912972E-3-qd2*cos(q6)*sin(q3)*sin(q4)*sin(q6)*6.912972E-3-qd1*cos(q2)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*6.912972E-3+qd2*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*6.912972E-3+qd1*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q5)*6.912972E-3+qd1*cos(q3)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*6.912972E-3-qd1*cos(q3)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*6.912972E-3;
  C_row_6[6][0] = qd5*sin(q6)*(3.0/1.0E2)+qd3*cos(q4)*sin(q6)*(3.0/1.0E2)-qd4*cos(q6)*sin(q5)*(3.0/1.0E2)+qd1*cos(q2)*cos(q4)*sin(q6)*(3.0/1.0E2)-qd2*cos(q3)*cos(q6)*sin(q5)*(3.0/1.0E2)+qd3*cos(q5)*cos(q6)*sin(q4)*(3.0/1.0E2)+qd2*sin(q3)*sin(q4)*sin(q6)*(3.0/1.0E2)+qd1*cos(q2)*cos(q5)*cos(q6)*sin(q4)*(3.0/1.0E2)-qd2*cos(q4)*cos(q5)*cos(q6)*sin(q3)*(3.0/1.0E2)-qd1*cos(q3)*sin(q2)*sin(q4)*sin(q6)*(3.0/1.0E2)-qd1*cos(q6)*sin(q2)*sin(q3)*sin(q5)*(3.0/1.0E2)+qd1*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*(3.0/1.0E2);
}
 

