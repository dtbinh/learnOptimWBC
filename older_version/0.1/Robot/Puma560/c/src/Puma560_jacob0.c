#include "Puma560_jacob0.h"

void Puma560_jacob0(double J0[][6], const double* input1){
 
  double q1 = input1[0];
  double q2 = input1[1];
  double q3 = input1[2];
  double q4 = input1[3];
  double q5 = input1[4];
  double q6 = input1[5];
 
                                     J0[0][0]=0;
 J0[1][0]=0;
 J0[2][0]=0;
 J0[3][0]=0;
 J0[4][0]=0;
 J0[5][0]=0;
 J0[0][1]=0;
 J0[1][1]=0;
 J0[2][1]=0;
 J0[3][1]=0;
 J0[4][1]=0;
 J0[5][1]=0;
 J0[0][2]=0;
 J0[1][2]=0;
 J0[2][2]=0;
 J0[3][2]=0;
 J0[4][2]=0;
 J0[5][2]=0;
 J0[0][3]=0;
 J0[1][3]=0;
 J0[2][3]=0;
 J0[3][3]=0;
 J0[4][3]=0;
 J0[5][3]=0;
 J0[0][4]=0;
 J0[1][4]=0;
 J0[2][4]=0;
 J0[3][4]=0;
 J0[4][4]=0;
 J0[5][4]=0;
 J0[0][5]=0;
 J0[1][5]=0;
 J0[2][5]=0;
 J0[3][5]=0;
 J0[4][5]=0;
 J0[5][5]=0;



  J0[0][0] = -(sin(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+cos(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))*(cos(q2+q3)*cos(q4)*sin(q6)*2.03E-2-sin(q2+q3)*cos(q4)*sin(q6)*4.318E-1+cos(q2)*cos(q4)*sin(q6)*4.318E-1+cos(q2+q3)*cos(q5)*cos(q6)*sin(q4)*2.03E-2-sin(q2+q3)*cos(q5)*cos(q6)*sin(q4)*4.318E-1+cos(q2)*cos(q5)*cos(q6)*sin(q4)*4.318E-1-cos(q2)*cos(q3)*sin(q4)*sin(q6)*1.5005E-1-cos(q2)*cos(q6)*sin(q3)*sin(q5)*1.5005E-1-cos(q3)*cos(q6)*sin(q2)*sin(q5)*1.5005E-1+sin(q2)*sin(q3)*sin(q4)*sin(q6)*1.5005E-1+cos(q2)*cos(q3)*cos(q4)*cos(q5)*cos(q6)*1.5005E-1-cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*1.5005E-1)-(cos(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-sin(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))*(cos(q2+q3)*cos(q4)*cos(q6)*2.03E-2-sin(q2+q3)*cos(q4)*cos(q6)*4.318E-1+cos(q2)*cos(q4)*cos(q6)*4.318E-1-cos(q2+q3)*cos(q5)*sin(q4)*sin(q6)*2.03E-2+sin(q2+q3)*cos(q5)*sin(q4)*sin(q6)*4.318E-1-cos(q2)*cos(q3)*cos(q6)*sin(q4)*1.5005E-1-cos(q2)*cos(q5)*sin(q4)*sin(q6)*4.318E-1+cos(q6)*sin(q2)*sin(q3)*sin(q4)*1.5005E-1+cos(q2)*sin(q3)*sin(q5)*sin(q6)*1.5005E-1+cos(q3)*sin(q2)*sin(q5)*sin(q6)*1.5005E-1-cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q6)*1.5005E-1+cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q6)*1.5005E-1)-(sin(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-cos(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2)))*(cos(q2)*cos(q5)*sin(q3)*1.5005E-1+cos(q3)*cos(q5)*sin(q2)*1.5005E-1+cos(q2)*sin(q4)*sin(q5)*4.318E-1+cos(q2)*cos(q3)*cos(q4)*sin(q5)*1.5005E-1+cos(q2)*cos(q3)*sin(q4)*sin(q5)*2.03E-2-cos(q2)*sin(q3)*sin(q4)*sin(q5)*4.318E-1-cos(q3)*sin(q2)*sin(q4)*sin(q5)*4.318E-1-cos(q4)*sin(q2)*sin(q3)*sin(q5)*1.5005E-1-sin(q2)*sin(q3)*sin(q4)*sin(q5)*2.03E-2);
  J0[0][1] = (sin(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q2+q3)*cos(q4)*sin(q6)*2.03E-2-sin(q2+q3)*cos(q4)*sin(q6)*4.318E-1+cos(q2)*cos(q4)*sin(q6)*4.318E-1+cos(q2+q3)*cos(q5)*cos(q6)*sin(q4)*2.03E-2-sin(q2+q3)*cos(q5)*cos(q6)*sin(q4)*4.318E-1+cos(q2)*cos(q5)*cos(q6)*sin(q4)*4.318E-1-cos(q2)*cos(q3)*sin(q4)*sin(q6)*1.5005E-1-cos(q2)*cos(q6)*sin(q3)*sin(q5)*1.5005E-1-cos(q3)*cos(q6)*sin(q2)*sin(q5)*1.5005E-1+sin(q2)*sin(q3)*sin(q4)*sin(q6)*1.5005E-1+cos(q2)*cos(q3)*cos(q4)*cos(q5)*cos(q6)*1.5005E-1-cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*1.5005E-1)+(cos(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q2+q3)*cos(q4)*cos(q6)*2.03E-2-sin(q2+q3)*cos(q4)*cos(q6)*4.318E-1+cos(q2)*cos(q4)*cos(q6)*4.318E-1-cos(q2+q3)*cos(q5)*sin(q4)*sin(q6)*2.03E-2+sin(q2+q3)*cos(q5)*sin(q4)*sin(q6)*4.318E-1-cos(q2)*cos(q3)*cos(q6)*sin(q4)*1.5005E-1-cos(q2)*cos(q5)*sin(q4)*sin(q6)*4.318E-1+cos(q6)*sin(q2)*sin(q3)*sin(q4)*1.5005E-1+cos(q2)*sin(q3)*sin(q5)*sin(q6)*1.5005E-1+cos(q3)*sin(q2)*sin(q5)*sin(q6)*1.5005E-1-cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q6)*1.5005E-1+cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q6)*1.5005E-1)+(sin(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2)))*(cos(q2)*cos(q5)*sin(q3)*1.5005E-1+cos(q3)*cos(q5)*sin(q2)*1.5005E-1+cos(q2)*sin(q4)*sin(q5)*4.318E-1+cos(q2)*cos(q3)*cos(q4)*sin(q5)*1.5005E-1+cos(q2)*cos(q3)*sin(q4)*sin(q5)*2.03E-2-cos(q2)*sin(q3)*sin(q4)*sin(q5)*4.318E-1-cos(q3)*sin(q2)*sin(q4)*sin(q5)*4.318E-1-cos(q4)*sin(q2)*sin(q3)*sin(q5)*1.5005E-1-sin(q2)*sin(q3)*sin(q4)*sin(q5)*2.03E-2);
  J0[0][2] = (cos(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))-sin(q2+q3)*sin(q4)*sin(q6))*(cos(q2+q3)*cos(q4)*sin(q6)*2.03E-2-sin(q2+q3)*cos(q4)*sin(q6)*4.318E-1+cos(q2)*cos(q4)*sin(q6)*4.318E-1+cos(q2+q3)*cos(q5)*cos(q6)*sin(q4)*2.03E-2-sin(q2+q3)*cos(q5)*cos(q6)*sin(q4)*4.318E-1+cos(q2)*cos(q5)*cos(q6)*sin(q4)*4.318E-1-cos(q2)*cos(q3)*sin(q4)*sin(q6)*1.5005E-1-cos(q2)*cos(q6)*sin(q3)*sin(q5)*1.5005E-1-cos(q3)*cos(q6)*sin(q2)*sin(q5)*1.5005E-1+sin(q2)*sin(q3)*sin(q4)*sin(q6)*1.5005E-1+cos(q2)*cos(q3)*cos(q4)*cos(q5)*cos(q6)*1.5005E-1-cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*1.5005E-1)-(sin(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))+sin(q2+q3)*cos(q6)*sin(q4))*(cos(q2+q3)*cos(q4)*cos(q6)*2.03E-2-sin(q2+q3)*cos(q4)*cos(q6)*4.318E-1+cos(q2)*cos(q4)*cos(q6)*4.318E-1-cos(q2+q3)*cos(q5)*sin(q4)*sin(q6)*2.03E-2+sin(q2+q3)*cos(q5)*sin(q4)*sin(q6)*4.318E-1-cos(q2)*cos(q3)*cos(q6)*sin(q4)*1.5005E-1-cos(q2)*cos(q5)*sin(q4)*sin(q6)*4.318E-1+cos(q6)*sin(q2)*sin(q3)*sin(q4)*1.5005E-1+cos(q2)*sin(q3)*sin(q5)*sin(q6)*1.5005E-1+cos(q3)*sin(q2)*sin(q5)*sin(q6)*1.5005E-1-cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q6)*1.5005E-1+cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q6)*1.5005E-1)-(cos(q2+q3)*cos(q5)-sin(q2+q3)*cos(q4)*sin(q5))*(cos(q2)*cos(q5)*sin(q3)*1.5005E-1+cos(q3)*cos(q5)*sin(q2)*1.5005E-1+cos(q2)*sin(q4)*sin(q5)*4.318E-1+cos(q2)*cos(q3)*cos(q4)*sin(q5)*1.5005E-1+cos(q2)*cos(q3)*sin(q4)*sin(q5)*2.03E-2-cos(q2)*sin(q3)*sin(q4)*sin(q5)*4.318E-1-cos(q3)*sin(q2)*sin(q4)*sin(q5)*4.318E-1-cos(q4)*sin(q2)*sin(q3)*sin(q5)*1.5005E-1-sin(q2)*sin(q3)*sin(q4)*sin(q5)*2.03E-2);
  J0[0][3] = (sin(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-cos(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2)))*(cos(q2)*(cos(q3)*cos(q5)-cos(q4)*sin(q3)*sin(q5))-sin(q2)*(cos(q5)*sin(q3)+cos(q3)*cos(q4)*sin(q5)))+(cos(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-sin(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))*(cos(q2)*(sin(q3)*(cos(q6)*sin(q4)+cos(q4)*cos(q5)*sin(q6))+cos(q3)*sin(q5)*sin(q6))+sin(q2)*(cos(q3)*(cos(q6)*sin(q4)+cos(q4)*cos(q5)*sin(q6))-sin(q3)*sin(q5)*sin(q6)))+(cos(q2)*(sin(q3)*(sin(q4)*sin(q6)-cos(q4)*cos(q5)*cos(q6))-cos(q3)*cos(q6)*sin(q5))+sin(q2)*(cos(q3)*(sin(q4)*sin(q6)-cos(q4)*cos(q5)*cos(q6))+cos(q6)*sin(q3)*sin(q5)))*(sin(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+cos(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))));
  J0[0][4] = -(sin(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q2)*(sin(q3)*(sin(q4)*sin(q6)-cos(q4)*cos(q5)*cos(q6))-cos(q3)*cos(q6)*sin(q5))+sin(q2)*(cos(q3)*(sin(q4)*sin(q6)-cos(q4)*cos(q5)*cos(q6))+cos(q6)*sin(q3)*sin(q5)))-(sin(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2)))*(cos(q2)*(cos(q3)*cos(q5)-cos(q4)*sin(q3)*sin(q5))-sin(q2)*(cos(q5)*sin(q3)+cos(q3)*cos(q4)*sin(q5)))-(cos(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q2)*(sin(q3)*(cos(q6)*sin(q4)+cos(q4)*cos(q5)*sin(q6))+cos(q3)*sin(q5)*sin(q6))+sin(q2)*(cos(q3)*(cos(q6)*sin(q4)+cos(q4)*cos(q5)*sin(q6))-sin(q3)*sin(q5)*sin(q6)));
  J0[0][5] = (cos(q2+q3)*cos(q5)-sin(q2+q3)*cos(q4)*sin(q5))*(cos(q2)*(cos(q3)*cos(q5)-cos(q4)*sin(q3)*sin(q5))-sin(q2)*(cos(q5)*sin(q3)+cos(q3)*cos(q4)*sin(q5)))-(cos(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))-sin(q2+q3)*sin(q4)*sin(q6))*(cos(q2)*(sin(q3)*(sin(q4)*sin(q6)-cos(q4)*cos(q5)*cos(q6))-cos(q3)*cos(q6)*sin(q5))+sin(q2)*(cos(q3)*(sin(q4)*sin(q6)-cos(q4)*cos(q5)*cos(q6))+cos(q6)*sin(q3)*sin(q5)))+(sin(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))+sin(q2+q3)*cos(q6)*sin(q4))*(cos(q2)*(sin(q3)*(cos(q6)*sin(q4)+cos(q4)*cos(q5)*sin(q6))+cos(q3)*sin(q5)*sin(q6))+sin(q2)*(cos(q3)*(cos(q6)*sin(q4)+cos(q4)*cos(q5)*sin(q6))-sin(q3)*sin(q5)*sin(q6)));
  J0[1][0] = (sin(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-cos(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2)))*(cos(q5)*2.03E-2+cos(q3)*cos(q5)*4.318E-1+cos(q4)*sin(q5)*4.318E-1-cos(q4)*sin(q3)*sin(q5)*4.318E-1)-(sin(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+cos(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))*(cos(q6)*sin(q5)*2.03E-2+sin(q4)*sin(q6)*4.318E-1-sin(q3)*sin(q4)*sin(q6)*4.318E-1-cos(q4)*cos(q5)*cos(q6)*4.318E-1+cos(q3)*cos(q6)*sin(q5)*4.318E-1+cos(q4)*cos(q5)*cos(q6)*sin(q3)*4.318E-1)+(cos(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-sin(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))*(cos(q6)*sin(q4)*(-4.318E-1)+sin(q5)*sin(q6)*2.03E-2-cos(q4)*cos(q5)*sin(q6)*4.318E-1+cos(q6)*sin(q3)*sin(q4)*4.318E-1+cos(q3)*sin(q5)*sin(q6)*4.318E-1+cos(q4)*cos(q5)*sin(q3)*sin(q6)*4.318E-1);
  J0[1][1] = -(sin(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2)))*(cos(q5)*2.03E-2+cos(q3)*cos(q5)*4.318E-1+cos(q4)*sin(q5)*4.318E-1-cos(q4)*sin(q3)*sin(q5)*4.318E-1)+(sin(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q6)*sin(q5)*2.03E-2+sin(q4)*sin(q6)*4.318E-1-sin(q3)*sin(q4)*sin(q6)*4.318E-1-cos(q4)*cos(q5)*cos(q6)*4.318E-1+cos(q3)*cos(q6)*sin(q5)*4.318E-1+cos(q4)*cos(q5)*cos(q6)*sin(q3)*4.318E-1)-(cos(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q6)*sin(q4)*(-4.318E-1)+sin(q5)*sin(q6)*2.03E-2-cos(q4)*cos(q5)*sin(q6)*4.318E-1+cos(q6)*sin(q3)*sin(q4)*4.318E-1+cos(q3)*sin(q5)*sin(q6)*4.318E-1+cos(q4)*cos(q5)*sin(q3)*sin(q6)*4.318E-1);
  J0[1][2] = (cos(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))-sin(q2+q3)*sin(q4)*sin(q6))*(cos(q6)*sin(q5)*2.03E-2+sin(q4)*sin(q6)*4.318E-1-sin(q3)*sin(q4)*sin(q6)*4.318E-1-cos(q4)*cos(q5)*cos(q6)*4.318E-1+cos(q3)*cos(q6)*sin(q5)*4.318E-1+cos(q4)*cos(q5)*cos(q6)*sin(q3)*4.318E-1)+(cos(q2+q3)*cos(q5)-sin(q2+q3)*cos(q4)*sin(q5))*(cos(q5)*2.03E-2+cos(q3)*cos(q5)*4.318E-1+cos(q4)*sin(q5)*4.318E-1-cos(q4)*sin(q3)*sin(q5)*4.318E-1)+(sin(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))+sin(q2+q3)*cos(q6)*sin(q4))*(cos(q6)*sin(q4)*(-4.318E-1)+sin(q5)*sin(q6)*2.03E-2-cos(q4)*cos(q5)*sin(q6)*4.318E-1+cos(q6)*sin(q3)*sin(q4)*4.318E-1+cos(q3)*sin(q5)*sin(q6)*4.318E-1+cos(q4)*cos(q5)*sin(q3)*sin(q6)*4.318E-1);
  J0[1][3] = (cos(q4)*sin(q6)+cos(q5)*cos(q6)*sin(q4))*(sin(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+cos(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))+(cos(q4)*cos(q6)-cos(q5)*sin(q4)*sin(q6))*(cos(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-sin(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))+sin(q4)*sin(q5)*(sin(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-cos(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2)));
  J0[1][4] = -(sin(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q4)*sin(q6)+cos(q5)*cos(q6)*sin(q4))-(cos(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q4)*cos(q6)-cos(q5)*sin(q4)*sin(q6))-sin(q4)*sin(q5)*(sin(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2)));
  J0[1][5] = -(cos(q4)*sin(q6)+cos(q5)*cos(q6)*sin(q4))*(cos(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))-sin(q2+q3)*sin(q4)*sin(q6))+(cos(q4)*cos(q6)-cos(q5)*sin(q4)*sin(q6))*(sin(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))+sin(q2+q3)*cos(q6)*sin(q4))+sin(q4)*sin(q5)*(cos(q2+q3)*cos(q5)-sin(q2+q3)*cos(q4)*sin(q5));
  J0[2][0] = (sin(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-cos(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2)))*(cos(q5)*2.03E-2+cos(q4)*sin(q5)*4.318E-1)-(sin(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+cos(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))*(cos(q6)*sin(q5)*2.03E-2+sin(q4)*sin(q6)*4.318E-1-cos(q4)*cos(q5)*cos(q6)*4.318E-1)-(cos(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-sin(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))*(cos(q6)*sin(q4)*4.318E-1-sin(q5)*sin(q6)*2.03E-2+cos(q4)*cos(q5)*sin(q6)*4.318E-1);
  J0[2][1] = -(sin(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2)))*(cos(q5)*2.03E-2+cos(q4)*sin(q5)*4.318E-1)+(sin(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q6)*sin(q5)*2.03E-2+sin(q4)*sin(q6)*4.318E-1-cos(q4)*cos(q5)*cos(q6)*4.318E-1)+(cos(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q6)*sin(q4)*4.318E-1-sin(q5)*sin(q6)*2.03E-2+cos(q4)*cos(q5)*sin(q6)*4.318E-1);
  J0[2][2] = (cos(q2+q3)*cos(q5)-sin(q2+q3)*cos(q4)*sin(q5))*(cos(q5)*2.03E-2+cos(q4)*sin(q5)*4.318E-1)+(cos(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))-sin(q2+q3)*sin(q4)*sin(q6))*(cos(q6)*sin(q5)*2.03E-2+sin(q4)*sin(q6)*4.318E-1-cos(q4)*cos(q5)*cos(q6)*4.318E-1)-(sin(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))+sin(q2+q3)*cos(q6)*sin(q4))*(cos(q6)*sin(q4)*4.318E-1-sin(q5)*sin(q6)*2.03E-2+cos(q4)*cos(q5)*sin(q6)*4.318E-1);
  J0[2][3] = (cos(q4)*sin(q6)+cos(q5)*cos(q6)*sin(q4))*(sin(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+cos(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))+(cos(q4)*cos(q6)-cos(q5)*sin(q4)*sin(q6))*(cos(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-sin(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))+sin(q4)*sin(q5)*(sin(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-cos(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2)));
  J0[2][4] = -(sin(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q4)*sin(q6)+cos(q5)*cos(q6)*sin(q4))-(cos(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))*(cos(q4)*cos(q6)-cos(q5)*sin(q4)*sin(q6))-sin(q4)*sin(q5)*(sin(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2)));
  J0[2][5] = -(cos(q4)*sin(q6)+cos(q5)*cos(q6)*sin(q4))*(cos(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))-sin(q2+q3)*sin(q4)*sin(q6))+(cos(q4)*cos(q6)-cos(q5)*sin(q4)*sin(q6))*(sin(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))+sin(q2+q3)*cos(q6)*sin(q4))+sin(q4)*sin(q5)*(cos(q2+q3)*cos(q5)-sin(q2+q3)*cos(q4)*sin(q5));
  J0[3][3] = cos(q5)*(sin(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-cos(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2)))-cos(q6)*sin(q5)*(sin(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+cos(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))+sin(q5)*sin(q6)*(cos(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-sin(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))));
  J0[3][4] = -cos(q5)*(sin(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2)))+cos(q6)*sin(q5)*(sin(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))-sin(q5)*sin(q6)*(cos(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))));
  J0[3][5] = cos(q5)*(cos(q2+q3)*cos(q5)-sin(q2+q3)*cos(q4)*sin(q5))+cos(q6)*sin(q5)*(cos(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))-sin(q2+q3)*sin(q4)*sin(q6))+sin(q5)*sin(q6)*(sin(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))+sin(q2+q3)*cos(q6)*sin(q4));
  J0[4][3] = cos(q6)*(cos(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-sin(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))))+sin(q6)*(sin(q6)*(cos(q4)*sin(q1)+sin(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+cos(q6)*(cos(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))+sin(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2))));
  J0[4][4] = -cos(q6)*(cos(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))))-sin(q6)*(sin(q6)*(cos(q1)*cos(q4)+sin(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))+cos(q6)*(cos(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-sin(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2))));
  J0[4][5] = cos(q6)*(sin(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))+sin(q2+q3)*cos(q6)*sin(q4))-sin(q6)*(cos(q6)*(cos(q2+q3)*sin(q5)+sin(q2+q3)*cos(q4)*cos(q5))-sin(q2+q3)*sin(q4)*sin(q6));
  J0[5][3] = sin(q5)*(sin(q1)*sin(q4)-cos(q4)*(cos(q1)*cos(q2)*cos(q3)-cos(q1)*sin(q2)*sin(q3)))-cos(q5)*(cos(q1)*cos(q2)*sin(q3)+cos(q1)*cos(q3)*sin(q2));
  J0[5][4] = -sin(q5)*(cos(q1)*sin(q4)-cos(q4)*(sin(q1)*sin(q2)*sin(q3)-cos(q2)*cos(q3)*sin(q1)))-cos(q5)*(cos(q2)*sin(q1)*sin(q3)+cos(q3)*sin(q1)*sin(q2));
  J0[5][5] = cos(q2+q3)*cos(q5)-sin(q2+q3)*cos(q4)*sin(q5);
}
 

