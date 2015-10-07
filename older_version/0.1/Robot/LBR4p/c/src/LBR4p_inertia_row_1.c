#include "LBR4p_inertia_row_1.h"

void LBR4p_inertia_row_1(double I_row_1[][1], const double* input1){
 
  double q1 = input1[0];
  double q2 = input1[1];
  double q3 = input1[2];
  double q4 = input1[3];
  double q5 = input1[4];
  double q6 = input1[5];
  double q7 = input1[6];
 
        I_row_1[0][0]=0;
 I_row_1[1][0]=0;
 I_row_1[2][0]=0;
 I_row_1[3][0]=0;
 I_row_1[4][0]=0;
 I_row_1[5][0]=0;
 I_row_1[6][0]=0;



  I_row_1[0][0] = sin(q2*2.0)*3.1455122754E-4+sin(q3*2.0)*9.5572395613E-5-sin(q5*2.0)*4.4745983428E-5-sin(q6*2.0)*2.323533766E-6+cos(q4)*1.46464232+cos(q6)*2.6344656E-2+sin(q4)*2.8944E-3+sin(q6)*3.23232E-4+cos(q4)*cos(q6)*2.702016E-2+cos(q5)*sin(q4)*1.35048E-3+cos(q4)*sin(q6)*3.3152E-4-sin(q4)*sin(q5)*4.428656E-2-pow(cos(q2),2.0)*1.30704327815266-pow(cos(q3),2.0)*7.45432166218239E-1+pow(cos(q5),2.0)*3.545792124604E-3+pow(cos(q6),2.0)*5.550945674023E-3-pow(cos(q2),2.0)*cos(q4)*1.46464232-pow(cos(q3),2.0)*cos(q6)*2.6344656E-2-pow(cos(q2),2.0)*sin(q4)*2.8944E-3-pow(cos(q3),2.0)*sin(q6)*3.23232E-4+pow(cos(q2),2.0)*pow(cos(q3),2.0)*7.45432166218239E-1-pow(cos(q2),2.0)*pow(cos(q4),2.0)*7.53015620259051E-1-pow(cos(q2),2.0)*pow(cos(q5),2.0)*7.091584249207999E-3+pow(cos(q3),2.0)*pow(cos(q4),2.0)*7.53015620259051E-1-pow(cos(q2),2.0)*pow(cos(q6),2.0)*5.550945674023E-3-pow(cos(q3),2.0)*pow(cos(q5),2.0)*3.545792124604E-3-pow(cos(q3),2.0)*pow(cos(q6),2.0)*1.1101891348046E-2-pow(cos(q5),2.0)*pow(cos(q6),2.0)*5.550945674023E-3-pow(cos(q2),2.0)*cos(q4)*cos(q6)*2.702016E-2-pow(cos(q2),2.0)*cos(q3)*sin(q3)*1.91144791226E-4-pow(cos(q2),2.0)*cos(q4)*sin(q4)*6.29101572142E-4-pow(cos(q2),2.0)*cos(q5)*sin(q4)*1.35048E-3+pow(cos(q3),2.0)*cos(q4)*sin(q4)*6.29101572142E-4-pow(cos(q2),2.0)*cos(q4)*sin(q6)*3.3152E-4+pow(cos(q2),2.0)*cos(q5)*sin(q5)*1.78983933712E-4+pow(cos(q3),2.0)*cos(q5)*sin(q5)*8.949196685599999E-5+pow(cos(q2),2.0)*cos(q6)*sin(q6)*4.647067532E-6+pow(cos(q3),2.0)*cos(q6)*sin(q6)*9.294135064E-6+pow(cos(q5),2.0)*cos(q6)*sin(q6)*4.647067532E-6+pow(cos(q2),2.0)*sin(q4)*sin(q5)*4.428656E-2+pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q6)*2.6344656E-2-pow(cos(q2),2.0)*pow(cos(q4),2.0)*cos(q6)*2.6344656E-2+pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q6)*2.6344656E-2+pow(cos(q2),2.0)*pow(cos(q3),2.0)*sin(q6)*3.23232E-4-pow(cos(q2),2.0)*pow(cos(q4),2.0)*sin(q6)*3.23232E-4+pow(cos(q3),2.0)*pow(cos(q4),2.0)*sin(q6)*3.23232E-4-cos(q2)*cos(q3)*sin(q2)*1.636194132042E-3-cos(q3)*cos(q4)*sin(q3)*2.77802345908E-4+cos(q5)*cos(q6)*sin(q4)*3.3152E-4-cos(q5)*cos(q6)*sin(q5)*4.92625214E-6-pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*7.53015620259051E-1+pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q5),2.0)*3.545792124604E-3+pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q6),2.0)*1.1101891348046E-2+pow(cos(q2),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*3.545792124604E-3-pow(cos(q2),2.0)*pow(cos(q4),2.0)*pow(cos(q6),2.0)*5.550945674023E-3-pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*3.545792124604E-3+pow(cos(q2),2.0)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*1.1101891348046E-2+pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q6),2.0)*5.550945674023E-3+pow(cos(q3),2.0)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*5.550945674023E-3-cos(q2)*sin(q2)*sin(q3)*5.362041448321999E-3+cos(q3)*sin(q3)*sin(q4)*1.9494298303678E-2-cos(q5)*sin(q4)*sin(q6)*2.702016E-2-cos(q5)*sin(q5)*sin(q6)*1.40161777574E-4-cos(q2)*cos(q3)*pow(cos(q4),2.0)*sin(q2)*1.258203144284E-3+pow(cos(q2),2.0)*cos(q3)*cos(q4)*sin(q3)*2.77802345908E-4+cos(q3)*cos(q4)*pow(cos(q5),2.0)*sin(q3)*1.78983933712E-4-pow(cos(q2),2.0)*cos(q4)*cos(q5)*sin(q4)*1.700977760442E-3+pow(cos(q3),2.0)*cos(q4)*cos(q5)*sin(q4)*1.700977760442E-3-pow(cos(q2),2.0)*cos(q5)*cos(q6)*sin(q4)*3.3152E-4+pow(cos(q2),2.0)*cos(q5)*cos(q6)*sin(q5)*9.852504280000001E-6+pow(cos(q3),2.0)*cos(q5)*cos(q6)*sin(q5)*4.92625214E-6+pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*3.545792124604E-3-pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q6),2.0)*5.550945674023E-3-pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*5.550945674023E-3-pow(cos(q2),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*5.550945674023E-3+pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*5.550945674023E-3-pow(cos(q2),2.0)*cos(q3)*sin(q3)*sin(q4)*1.9494298303678E-2+pow(cos(q2),2.0)*cos(q4)*sin(q4)*sin(q5)*4.7225038034602E-2-pow(cos(q3),2.0)*cos(q4)*sin(q4)*sin(q5)*4.7225038034602E-2+pow(cos(q2),2.0)*cos(q5)*sin(q4)*sin(q6)*2.702016E-2+pow(cos(q2),2.0)*cos(q5)*sin(q5)*sin(q6)*2.80323555148E-4+pow(cos(q3),2.0)*cos(q5)*sin(q5)*sin(q6)*1.40161777574E-4-pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*sin(q4)*6.29101572142E-4-pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q5)*sin(q5)*8.949196685599999E-5-pow(cos(q2),2.0)*pow(cos(q4),2.0)*cos(q5)*sin(q5)*8.949196685599999E-5-pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q6)*sin(q6)*9.294135064E-6+pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q5)*sin(q5)*8.949196685599999E-5+pow(cos(q2),2.0)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*4.647067532E-6-pow(cos(q2),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*9.294135064E-6-pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*4.647067532E-6-pow(cos(q3),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*4.647067532E-6-cos(q2)*cos(q3)*cos(q4)*sin(q2)*2.8944E-3+cos(q2)*cos(q3)*cos(q5)*sin(q2)*1.700977760442E-3-cos(q3)*cos(q4)*cos(q6)*sin(q3)*4.92625214E-6-pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q6)*2.6344656E-2+cos(q2)*cos(q3)*sin(q2)*sin(q4)*1.46464232-cos(q2)*cos(q4)*sin(q2)*sin(q3)*1.9494298303678E-2-cos(q2)*cos(q3)*sin(q2)*sin(q5)*4.7225038034602E-2+cos(q2)*cos(q5)*sin(q2)*sin(q3)*4.428656E-2-cos(q3)*cos(q5)*sin(q3)*sin(q4)*4.7225038034602E-2-cos(q3)*cos(q4)*sin(q3)*sin(q6)*1.40161777574E-4-pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*sin(q6)*3.23232E-4-cos(q2)*sin(q2)*sin(q3)*sin(q4)*2.77802345908E-4+cos(q2)*sin(q2)*sin(q3)*sin(q5)*1.35048E-3-cos(q3)*sin(q3)*sin(q4)*sin(q5)*1.700977760442E-3+cos(q2)*cos(q3)*pow(cos(q4),2.0)*sin(q2)*sin(q5)*9.4450076069204E-2+pow(cos(q2),2.0)*cos(q3)*cos(q5)*sin(q3)*sin(q4)*4.7225038034602E-2+pow(cos(q2),2.0)*cos(q3)*cos(q4)*sin(q3)*sin(q6)*1.40161777574E-4+cos(q3)*cos(q4)*pow(cos(q5),2.0)*sin(q3)*sin(q6)*2.80323555148E-4+pow(cos(q2),2.0)*cos(q4)*cos(q5)*sin(q4)*sin(q6)*2.6344656E-2-pow(cos(q2),2.0)*cos(q4)*cos(q6)*sin(q4)*sin(q5)*1.40161777574E-4-pow(cos(q3),2.0)*cos(q4)*cos(q5)*sin(q4)*sin(q6)*2.6344656E-2+pow(cos(q3),2.0)*cos(q4)*cos(q6)*sin(q4)*sin(q5)*1.40161777574E-4+cos(q2)*pow(cos(q5),2.0)*sin(q2)*sin(q3)*sin(q4)*1.78983933712E-4+pow(cos(q2),2.0)*cos(q3)*sin(q3)*sin(q4)*sin(q5)*1.700977760442E-3+cos(q3)*pow(cos(q6),2.0)*sin(q3)*sin(q4)*sin(q5)*9.294135064E-6+pow(cos(q2),2.0)*cos(q4)*sin(q4)*sin(q5)*sin(q6)*4.92625214E-6-pow(cos(q3),2.0)*cos(q4)*sin(q4)*sin(q5)*sin(q6)*4.92625214E-6-pow(cos(q2),2.0)*cos(q3)*cos(q4)*pow(cos(q5),2.0)*sin(q3)*1.78983933712E-4-pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*cos(q5)*sin(q4)*1.700977760442E-3+pow(cos(q2),2.0)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*9.294135064E-6-pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q5)*cos(q6)*sin(q5)*4.92625214E-6-pow(cos(q2),2.0)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q5)*4.92625214E-6-pow(cos(q3),2.0)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*9.294135064E-6+pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q5)*4.92625214E-6-pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*5.550945674023E-3+pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*sin(q4)*sin(q5)*4.7225038034602E-2-pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q5)*sin(q5)*sin(q6)*1.40161777574E-4-pow(cos(q2),2.0)*pow(cos(q4),2.0)*cos(q5)*sin(q5)*sin(q6)*1.40161777574E-4+pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q5)*sin(q5)*sin(q6)*1.40161777574E-4-cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q2)*1.35048E-3+cos(q2)*cos(q3)*cos(q5)*cos(q6)*sin(q2)*3.23232E-4+cos(q2)*cos(q3)*cos(q4)*sin(q2)*sin(q4)*1.506031240518102+cos(q2)*cos(q3)*cos(q4)*sin(q2)*sin(q5)*4.428656E-2+cos(q2)*cos(q4)*cos(q5)*sin(q2)*sin(q3)*4.7225038034602E-2+cos(q2)*cos(q3)*cos(q6)*sin(q2)*sin(q4)*2.702016E-2-cos(q2)*cos(q3)*cos(q5)*sin(q2)*sin(q6)*2.6344656E-2+cos(q2)*cos(q3)*cos(q6)*sin(q2)*sin(q5)*1.40161777574E-4+cos(q3)*cos(q4)*cos(q5)*sin(q3)*sin(q5)*7.091584249207999E-3+cos(q3)*cos(q5)*cos(q6)*sin(q3)*sin(q4)*1.40161777574E-4-pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q5)*sin(q5)*8.949196685599999E-5+pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*4.647067532E-6+pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*4.647067532E-6+pow(cos(q2),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*4.647067532E-6-pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*4.647067532E-6+cos(q2)*cos(q4)*sin(q2)*sin(q3)*sin(q5)*1.700977760442E-3+cos(q2)*cos(q3)*sin(q2)*sin(q4)*sin(q6)*3.3152E-4-cos(q2)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*4.92625214E-6-cos(q2)*cos(q3)*sin(q2)*sin(q5)*sin(q6)*4.92625214E-6+cos(q2)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*3.3152E-4-cos(q3)*cos(q5)*sin(q3)*sin(q4)*sin(q6)*4.92625214E-6-cos(q3)*cos(q6)*sin(q3)*sin(q4)*sin(q5)*3.23232E-4-cos(q2)*sin(q2)*sin(q3)*sin(q4)*sin(q6)*1.40161777574E-4-cos(q2)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*2.702016E-2+cos(q3)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*2.6344656E-2-cos(q2)*cos(q3)*pow(cos(q4),2.0)*cos(q5)*sin(q2)*3.401955520884E-3-cos(q2)*cos(q3)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*9.294135064E-6+pow(cos(q2),2.0)*cos(q3)*cos(q4)*cos(q6)*sin(q3)*4.92625214E-6+cos(q3)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q3)*9.852504280000001E-6-pow(cos(q2),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*3.23232E-4+pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*3.23232E-4+cos(q2)*cos(q3)*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*1.8588270128E-5-pow(cos(q2),2.0)*cos(q3)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q3)*9.852504280000001E-6-pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*3.23232E-4-pow(cos(q2),2.0)*cos(q3)*cos(q4)*pow(cos(q5),2.0)*sin(q3)*sin(q6)*2.80323555148E-4+pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*cos(q5)*sin(q4)*sin(q6)*2.6344656E-2-pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*cos(q6)*sin(q4)*sin(q5)*1.40161777574E-4-pow(cos(q2),2.0)*cos(q3)*pow(cos(q6),2.0)*sin(q3)*sin(q4)*sin(q5)*9.294135064E-6+pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*sin(q4)*sin(q5)*sin(q6)*4.92625214E-6-cos(q2)*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*3.3152E-4+cos(q2)*cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q4)*5.2689312E-2+cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q6)*2.702016E-2-cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*1.40161777574E-4-cos(q2)*cos(q3)*cos(q5)*cos(q6)*sin(q2)*sin(q6)*1.1101891348046E-2+pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*9.294135064E-6-pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q5)*4.92625214E-6+cos(q2)*cos(q3)*cos(q4)*sin(q2)*sin(q4)*sin(q6)*6.46464E-4+cos(q2)*cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q6)*4.92625214E-6+cos(q2)*cos(q4)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*3.23232E-4-pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*cos(q5)*sin(q5)*sin(q6)*1.40161777574E-4+cos(q2)*cos(q5)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*7.091584249207999E-3-cos(q2)*cos(q4)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*2.6344656E-2+cos(q3)*cos(q6)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*1.1101891348046E-2-cos(q2)*cos(q3)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q2)*6.46464E-4-cos(q2)*cos(q3)*cos(q4)*pow(cos(q5),2.0)*sin(q2)*sin(q4)*7.091584249207999E-3+cos(q2)*cos(q3)*cos(q4)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*1.1101891348046E-2+cos(q2)*cos(q3)*pow(cos(q4),2.0)*cos(q5)*sin(q2)*sin(q6)*5.2689312E-2-cos(q2)*cos(q3)*pow(cos(q4),2.0)*cos(q6)*sin(q2)*sin(q5)*2.80323555148E-4-pow(cos(q2),2.0)*cos(q3)*cos(q4)*cos(q5)*sin(q3)*sin(q5)*7.091584249207999E-3-pow(cos(q2),2.0)*cos(q3)*cos(q5)*cos(q6)*sin(q3)*sin(q4)*1.40161777574E-4-cos(q3)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*sin(q5)*1.1101891348046E-2+pow(cos(q2),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*sin(q6)*1.1101891348046E-2-pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*sin(q6)*1.1101891348046E-2+pow(cos(q2),2.0)*pow(cos(q3),2.0)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*4.647067532E-6+cos(q2)*cos(q3)*pow(cos(q4),2.0)*sin(q2)*sin(q5)*sin(q6)*9.852504280000001E-6-cos(q2)*cos(q4)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q5)*9.294135064E-6+cos(q2)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*9.852504280000001E-6+pow(cos(q2),2.0)*cos(q3)*cos(q5)*sin(q3)*sin(q4)*sin(q6)*4.92625214E-6+pow(cos(q2),2.0)*cos(q3)*cos(q6)*sin(q3)*sin(q4)*sin(q5)*3.23232E-4+cos(q2)*pow(cos(q5),2.0)*sin(q2)*sin(q3)*sin(q4)*sin(q6)*2.80323555148E-4-pow(cos(q2),2.0)*cos(q3)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*2.6344656E-2+cos(q2)*cos(q3)*cos(q4)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*1.1101891348046E-2+pow(cos(q2),2.0)*cos(q3)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*sin(q5)*1.1101891348046E-2+pow(cos(q2),2.0)*pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*sin(q6)*1.1101891348046E-2+cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q4)*sin(q5)*1.78983933712E-4-cos(q2)*cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*9.294135064E-6+cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q3)*sin(q5)*sin(q6)*9.294135064E-6-cos(q2)*cos(q4)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*1.1101891348046E-2+cos(q2)*cos(q3)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q2)*sin(q6)*2.2203782696092E-2-cos(q2)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*1.1101891348046E-2-pow(cos(q2),2.0)*cos(q3)*cos(q6)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*1.1101891348046E-2+cos(q2)*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*9.852504280000001E-6+cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q4)*sin(q5)*sin(q6)*2.80323555148E-4+cos(q2)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*9.294135064E-6-cos(q2)*cos(q3)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*9.294135064E-6-pow(cos(q2),2.0)*cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q3)*sin(q5)*sin(q6)*9.294135064E-6+2.88576275734553;
  I_row_1[1][0] = cos(q2)*9.747314908806E-3-sin(q2)*1.89727618809E-4-cos(q2)*cos(q3)*2.681020724160999E-3+cos(q2)*sin(q3)*8.18097066021E-4+cos(q4)*sin(q2)*1.38901172954E-4-sin(q2)*sin(q4)*9.747149151839E-3+pow(cos(q3),2.0)*sin(q2)*1.91144791226E-4+sin(q2)*sin(q4)*sin(q5)*8.50488880221E-4+cos(q2)*pow(cos(q4),2.0)*sin(q3)*6.29101572142E-4-pow(cos(q3),2.0)*cos(q4)*sin(q2)*2.77802345908E-4-cos(q4)*pow(cos(q5),2.0)*sin(q2)*8.949196685599999E-5+pow(cos(q3),2.0)*sin(q2)*sin(q4)*1.9494298303678E-2-cos(q2)*cos(q3)*cos(q4)*9.747149151839E-3+cos(q2)*cos(q3)*cos(q5)*2.214328E-2-cos(q2)*cos(q3)*sin(q4)*1.38901172954E-4+cos(q2)*cos(q4)*sin(q3)*1.4472E-3+cos(q2)*cos(q3)*sin(q5)*6.7524E-4-cos(q2)*cos(q5)*sin(q3)*8.50488880221E-4+cos(q4)*cos(q6)*sin(q2)*2.46312607E-6+cos(q3)*sin(q2)*sin(q3)*7.45432166218239E-1-cos(q2)*sin(q3)*sin(q4)*7.3232116E-1+cos(q2)*sin(q3)*sin(q5)*2.3612519017301E-2+cos(q5)*sin(q2)*sin(q4)*2.3612519017301E-2+cos(q4)*sin(q2)*sin(q6)*7.0080888787E-5+cos(q2)*cos(q3)*pow(cos(q5),2.0)*sin(q4)*8.949196685599999E-5+cos(q2)*pow(cos(q4),2.0)*cos(q5)*sin(q3)*1.700977760442E-3-pow(cos(q3),2.0)*cos(q4)*cos(q6)*sin(q2)*4.92625214E-6+cos(q2)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*4.647067532E-6-cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*4.92625214E-6-cos(q3)*pow(cos(q4),2.0)*sin(q2)*sin(q3)*7.53015620259051E-1+cos(q3)*pow(cos(q5),2.0)*sin(q2)*sin(q3)*3.545792124604E-3-cos(q2)*pow(cos(q4),2.0)*sin(q3)*sin(q5)*4.7225038034602E-2+cos(q3)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*1.1101891348046E-2-pow(cos(q3),2.0)*cos(q5)*sin(q2)*sin(q4)*4.7225038034602E-2-pow(cos(q3),2.0)*cos(q4)*sin(q2)*sin(q6)*1.40161777574E-4-cos(q4)*pow(cos(q5),2.0)*sin(q2)*sin(q6)*1.40161777574E-4-pow(cos(q3),2.0)*sin(q2)*sin(q4)*sin(q5)*1.700977760442E-3-pow(cos(q6),2.0)*sin(q2)*sin(q4)*sin(q5)*4.647067532E-6+pow(cos(q3),2.0)*cos(q4)*pow(cos(q5),2.0)*sin(q2)*1.78983933712E-4+cos(q2)*cos(q3)*cos(q4)*cos(q5)*2.3612519017301E-2+cos(q2)*cos(q3)*cos(q4)*sin(q5)*8.50488880221E-4+cos(q2)*cos(q4)*cos(q5)*sin(q3)*6.7524E-4-cos(q2)*cos(q3)*cos(q6)*sin(q4)*2.46312607E-6+cos(q2)*cos(q3)*cos(q6)*sin(q5)*1.6576E-4-cos(q2)*cos(q5)*cos(q6)*sin(q3)*1.61616E-4-cos(q2)*cos(q4)*sin(q3)*sin(q4)*7.53015620259051E-1-cos(q2)*cos(q4)*sin(q3)*sin(q5)*2.214328E-2+cos(q3)*cos(q6)*sin(q2)*sin(q3)*2.6344656E-2-cos(q2)*cos(q3)*sin(q4)*sin(q6)*7.0080888787E-5-cos(q2)*cos(q6)*sin(q3)*sin(q4)*1.351008E-2-cos(q2)*cos(q3)*sin(q5)*sin(q6)*1.351008E-2+cos(q2)*cos(q5)*sin(q3)*sin(q6)*1.3172328E-2-cos(q2)*cos(q6)*sin(q3)*sin(q5)*7.0080888787E-5-cos(q4)*cos(q5)*sin(q2)*sin(q5)*3.545792124604E-3-cos(q5)*cos(q6)*sin(q2)*sin(q4)*7.0080888787E-5+cos(q3)*sin(q2)*sin(q3)*sin(q6)*3.23232E-4-cos(q2)*sin(q3)*sin(q4)*sin(q6)*1.6576E-4+cos(q2)*sin(q3)*sin(q5)*sin(q6)*2.46312607E-6+cos(q5)*sin(q2)*sin(q4)*sin(q6)*2.46312607E-6+cos(q6)*sin(q2)*sin(q4)*sin(q5)*1.61616E-4-sin(q2)*sin(q4)*sin(q5)*sin(q6)*1.3172328E-2+cos(q2)*cos(q4)*pow(cos(q5),2.0)*sin(q3)*sin(q4)*3.545792124604E-3-cos(q3)*pow(cos(q4),2.0)*cos(q6)*sin(q2)*sin(q3)*2.6344656E-2-cos(q2)*cos(q4)*pow(cos(q6),2.0)*sin(q3)*sin(q4)*5.550945674023E-3+pow(cos(q3),2.0)*cos(q4)*cos(q5)*sin(q2)*sin(q5)*7.091584249207999E-3+cos(q2)*cos(q3)*pow(cos(q5),2.0)*sin(q4)*sin(q6)*1.40161777574E-4-cos(q2)*pow(cos(q4),2.0)*cos(q5)*sin(q3)*sin(q6)*2.6344656E-2+cos(q2)*pow(cos(q4),2.0)*cos(q6)*sin(q3)*sin(q5)*1.40161777574E-4+pow(cos(q3),2.0)*cos(q5)*cos(q6)*sin(q2)*sin(q4)*1.40161777574E-4+cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*sin(q5)*5.550945674023E-3-cos(q3)*pow(cos(q4),2.0)*sin(q2)*sin(q3)*sin(q6)*3.23232E-4-cos(q2)*pow(cos(q4),2.0)*sin(q3)*sin(q5)*sin(q6)*4.92625214E-6-pow(cos(q3),2.0)*cos(q5)*sin(q2)*sin(q4)*sin(q6)*4.92625214E-6-pow(cos(q3),2.0)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*3.23232E-4+pow(cos(q3),2.0)*sin(q2)*sin(q4)*sin(q5)*sin(q6)*2.6344656E-2-cos(q2)*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q3)*9.294135064E-6+pow(cos(q3),2.0)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*9.852504280000001E-6+cos(q3)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*sin(q2)*sin(q3)*3.545792124604E-3-cos(q3)*pow(cos(q4),2.0)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*5.550945674023E-3-cos(q3)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*5.550945674023E-3+pow(cos(q3),2.0)*cos(q4)*pow(cos(q5),2.0)*sin(q2)*sin(q6)*2.80323555148E-4+pow(cos(q3),2.0)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*sin(q5)*9.294135064E-6-cos(q2)*cos(q3)*cos(q4)*cos(q5)*cos(q6)*7.0080888787E-5+cos(q2)*cos(q3)*cos(q4)*cos(q5)*sin(q6)*2.46312607E-6+cos(q2)*cos(q3)*cos(q4)*cos(q6)*sin(q5)*1.61616E-4+cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q3)*1.6576E-4+cos(q2)*cos(q3)*cos(q5)*sin(q4)*sin(q5)*3.545792124604E-3-cos(q2)*cos(q4)*cos(q6)*sin(q3)*sin(q4)*2.6344656E-2-cos(q2)*cos(q3)*cos(q4)*sin(q5)*sin(q6)*1.3172328E-2-cos(q2)*cos(q4)*cos(q5)*sin(q3)*sin(q6)*1.351008E-2+cos(q2)*cos(q5)*cos(q6)*sin(q3)*sin(q6)*5.550945674023E-3-cos(q3)*cos(q4)*sin(q2)*sin(q3)*sin(q4)*6.29101572142E-4-cos(q3)*cos(q5)*sin(q2)*sin(q3)*sin(q5)*8.949196685599999E-5-cos(q2)*cos(q4)*sin(q3)*sin(q4)*sin(q6)*3.23232E-4-cos(q3)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*9.294135064E-6-cos(q6)*sin(q2)*sin(q4)*sin(q5)*sin(q6)*5.550945674023E-3-cos(q2)*cos(q3)*cos(q4)*pow(cos(q6),2.0)*sin(q5)*4.647067532E-6+cos(q2)*cos(q3)*pow(cos(q5),2.0)*cos(q6)*sin(q4)*4.92625214E-6+cos(q2)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q3)*3.23232E-4-cos(q2)*cos(q4)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*sin(q3)*sin(q4)*5.550945674023E-3-pow(cos(q3),2.0)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*sin(q5)*1.1101891348046E-2-cos(q2)*cos(q3)*cos(q4)*cos(q6)*sin(q5)*sin(q6)*5.550945674023E-3-cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q4)*1.700977760442E-3-cos(q2)*cos(q4)*cos(q5)*sin(q3)*sin(q4)*sin(q5)*8.949196685599999E-5-cos(q3)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*4.92625214E-6+cos(q2)*cos(q4)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*4.647067532E-6-cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q5)*sin(q6)*4.647067532E-6-cos(q3)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*5.550945674023E-3+cos(q3)*cos(q4)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*4.7225038034602E-2-cos(q3)*cos(q5)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*1.40161777574E-4-cos(q2)*cos(q3)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*sin(q5)*5.550945674023E-3-cos(q2)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q3)*sin(q6)*1.1101891348046E-2-cos(q3)*pow(cos(q4),2.0)*cos(q5)*sin(q2)*sin(q3)*sin(q5)*8.949196685599999E-5+cos(q3)*pow(cos(q4),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*4.647067532E-6+cos(q3)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*4.647067532E-6+pow(cos(q3),2.0)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*sin(q6)*1.1101891348046E-2+cos(q3)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*4.647067532E-6-cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*3.23232E-4-cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q3)*sin(q4)*sin(q5)*4.92625214E-6+cos(q2)*cos(q3)*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*4.647067532E-6+cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q4)*sin(q6)*2.6344656E-2-cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*1.40161777574E-4-cos(q2)*cos(q4)*cos(q5)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*1.40161777574E-4+cos(q3)*cos(q4)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*4.92625214E-6+cos(q3)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q4)*9.294135064E-6-cos(q3)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*4.92625214E-6+cos(q2)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q3)*sin(q4)*sin(q6)*4.647067532E-6+pow(cos(q3),2.0)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q5)*sin(q6)*9.294135064E-6-cos(q3)*pow(cos(q4),2.0)*cos(q5)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*1.40161777574E-4+cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*sin(q6)*1.1101891348046E-2;
  I_row_1[2][0] = cos(q2)*7.80915116128121E-1+cos(q2)*cos(q6)*2.6344656E-2-cos(q3)*sin(q2)*8.18097066021E-4+cos(q2)*sin(q6)*3.23232E-4-sin(q2)*sin(q3)*2.681020724160999E-3-cos(q2)*pow(cos(q4),2.0)*7.53015620259051E-1-cos(q2)*pow(cos(q5),2.0)*3.545792124604E-3-sin(q2)*sin(q3)*sin(q4)*1.38901172954E-4+sin(q2)*sin(q3)*sin(q5)*6.7524E-4-cos(q2)*pow(cos(q4),2.0)*cos(q6)*2.6344656E-2-cos(q3)*pow(cos(q4),2.0)*sin(q2)*6.29101572142E-4-cos(q2)*pow(cos(q4),2.0)*sin(q6)*3.23232E-4+cos(q2)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*3.545792124604E-3-cos(q2)*pow(cos(q4),2.0)*pow(cos(q6),2.0)*5.550945674023E-3+cos(q2)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*5.550945674023E-3-cos(q3)*cos(q4)*sin(q2)*1.4472E-3-cos(q2)*cos(q4)*sin(q4)*6.29101572142E-4+cos(q3)*cos(q5)*sin(q2)*8.50488880221E-4+cos(q2)*cos(q5)*sin(q5)*8.949196685599999E-5+cos(q3)*sin(q2)*sin(q4)*7.3232116E-1-cos(q4)*sin(q2)*sin(q3)*9.747149151839E-3-cos(q3)*sin(q2)*sin(q5)*2.3612519017301E-2+cos(q5)*sin(q2)*sin(q3)*2.214328E-2-cos(q3)*pow(cos(q4),2.0)*cos(q5)*sin(q2)*1.700977760442E-3-cos(q2)*pow(cos(q4),2.0)*cos(q5)*sin(q5)*8.949196685599999E-5-cos(q3)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*4.647067532E-6+cos(q2)*pow(cos(q4),2.0)*cos(q6)*sin(q6)*4.647067532E-6-cos(q2)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*4.647067532E-6+cos(q3)*pow(cos(q4),2.0)*sin(q2)*sin(q5)*4.7225038034602E-2+pow(cos(q5),2.0)*sin(q2)*sin(q3)*sin(q4)*8.949196685599999E-5-cos(q3)*cos(q4)*cos(q5)*sin(q2)*6.7524E-4-cos(q2)*cos(q4)*cos(q5)*sin(q4)*1.700977760442E-3+cos(q3)*cos(q5)*cos(q6)*sin(q2)*1.61616E-4+cos(q2)*cos(q5)*cos(q6)*sin(q5)*4.92625214E-6-cos(q2)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*5.550945674023E-3+cos(q3)*cos(q4)*sin(q2)*sin(q4)*7.53015620259051E-1+cos(q3)*cos(q4)*sin(q2)*sin(q5)*2.214328E-2+cos(q4)*cos(q5)*sin(q2)*sin(q3)*2.3612519017301E-2+cos(q2)*cos(q4)*sin(q4)*sin(q5)*4.7225038034602E-2+cos(q3)*cos(q6)*sin(q2)*sin(q4)*1.351008E-2-cos(q3)*cos(q5)*sin(q2)*sin(q6)*1.3172328E-2+cos(q3)*cos(q6)*sin(q2)*sin(q5)*7.0080888787E-5+cos(q2)*cos(q5)*sin(q5)*sin(q6)*1.40161777574E-4+cos(q4)*sin(q2)*sin(q3)*sin(q5)*8.50488880221E-4+cos(q3)*sin(q2)*sin(q4)*sin(q6)*1.6576E-4-cos(q6)*sin(q2)*sin(q3)*sin(q4)*2.46312607E-6-cos(q3)*sin(q2)*sin(q5)*sin(q6)*2.46312607E-6+cos(q6)*sin(q2)*sin(q3)*sin(q5)*1.6576E-4-sin(q2)*sin(q3)*sin(q4)*sin(q6)*7.0080888787E-5-sin(q2)*sin(q3)*sin(q5)*sin(q6)*1.351008E-2-cos(q3)*cos(q4)*pow(cos(q5),2.0)*sin(q2)*sin(q4)*3.545792124604E-3+cos(q3)*cos(q4)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*5.550945674023E-3+cos(q3)*pow(cos(q4),2.0)*cos(q5)*sin(q2)*sin(q6)*2.6344656E-2-cos(q3)*pow(cos(q4),2.0)*cos(q6)*sin(q2)*sin(q5)*1.40161777574E-4-cos(q2)*pow(cos(q4),2.0)*cos(q5)*sin(q5)*sin(q6)*1.40161777574E-4+cos(q3)*pow(cos(q4),2.0)*sin(q2)*sin(q5)*sin(q6)*4.92625214E-6-cos(q4)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q5)*4.647067532E-6+pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*4.92625214E-6+pow(cos(q5),2.0)*sin(q2)*sin(q3)*sin(q4)*sin(q6)*1.40161777574E-4+cos(q3)*pow(cos(q4),2.0)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*9.294135064E-6+cos(q2)*pow(cos(q4),2.0)*pow(cos(q5),2.0)*cos(q6)*sin(q6)*4.647067532E-6-cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*1.6576E-4-cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*3.23232E-4+cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q4)*2.6344656E-2+cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q6)*1.351008E-2-cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*7.0080888787E-5+cos(q2)*cos(q4)*cos(q5)*sin(q4)*sin(q6)*2.6344656E-2-cos(q2)*cos(q4)*cos(q6)*sin(q4)*sin(q5)*1.40161777574E-4-cos(q3)*cos(q5)*cos(q6)*sin(q2)*sin(q6)*5.550945674023E-3+cos(q3)*cos(q4)*sin(q2)*sin(q4)*sin(q6)*3.23232E-4+cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q6)*2.46312607E-6+cos(q4)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*1.61616E-4+cos(q2)*cos(q4)*sin(q4)*sin(q5)*sin(q6)*4.92625214E-6+cos(q5)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*3.545792124604E-3-cos(q4)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*1.3172328E-2-cos(q3)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q2)*3.23232E-4+cos(q2)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*9.294135064E-6-cos(q2)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q5)*4.92625214E-6+cos(q3)*cos(q4)*pow(cos(q5),2.0)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*5.550945674023E-3+cos(q2)*cos(q4)*cos(q5)*cos(q6)*sin(q4)*sin(q6)*1.1101891348046E-2+cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q4)*sin(q5)*8.949196685599999E-5-cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*4.647067532E-6-cos(q4)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*5.550945674023E-3+cos(q3)*pow(cos(q4),2.0)*cos(q5)*cos(q6)*sin(q2)*sin(q6)*1.1101891348046E-2-cos(q5)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*5.550945674023E-3+cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*4.92625214E-6+cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q4)*sin(q5)*sin(q6)*1.40161777574E-4+cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*sin(q5)*sin(q6)*4.647067532E-6-cos(q3)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*4.647067532E-6;
  I_row_1[3][0] = cos(q2)*cos(q4)*(-9.747149151839E-3)-cos(q2)*sin(q4)*1.38901172954E-4+sin(q2)*sin(q3)*7.6846329599783E-1+sin(q2)*sin(q3)*sin(q4)*1.4472E-3+sin(q2)*sin(q3)*sin(q6)*3.23232E-4+cos(q2)*pow(cos(q5),2.0)*sin(q4)*8.949196685599999E-5+pow(cos(q5),2.0)*sin(q2)*sin(q3)*3.545792124604E-3+pow(cos(q6),2.0)*sin(q2)*sin(q3)*5.550945674023E-3+cos(q2)*cos(q4)*cos(q5)*2.3612519017301E-2-cos(q3)*cos(q4)*sin(q2)*1.38901172954E-4+cos(q2)*cos(q4)*sin(q5)*8.50488880221E-4-cos(q2)*cos(q6)*sin(q4)*2.46312607E-6+cos(q3)*sin(q2)*sin(q4)*9.747149151839E-3+cos(q4)*sin(q2)*sin(q3)*7.3232116E-1+cos(q6)*sin(q2)*sin(q3)*2.6344656E-2-cos(q2)*sin(q4)*sin(q6)*7.0080888787E-5+cos(q3)*cos(q4)*pow(cos(q5),2.0)*sin(q2)*8.949196685599999E-5-cos(q2)*cos(q4)*pow(cos(q6),2.0)*sin(q5)*4.647067532E-6+cos(q2)*pow(cos(q5),2.0)*cos(q6)*sin(q4)*4.92625214E-6+cos(q2)*pow(cos(q5),2.0)*sin(q4)*sin(q6)*1.40161777574E-4-pow(cos(q5),2.0)*pow(cos(q6),2.0)*sin(q2)*sin(q3)*5.550945674023E-3-cos(q2)*cos(q4)*cos(q5)*cos(q6)*7.0080888787E-5-cos(q3)*cos(q4)*cos(q6)*sin(q2)*2.46312607E-6+cos(q2)*cos(q4)*cos(q5)*sin(q6)*2.46312607E-6+cos(q2)*cos(q4)*cos(q6)*sin(q5)*1.61616E-4-cos(q3)*cos(q5)*sin(q2)*sin(q4)*2.3612519017301E-2-cos(q3)*cos(q4)*sin(q2)*sin(q6)*7.0080888787E-5+cos(q4)*cos(q6)*sin(q2)*sin(q3)*1.351008E-2+cos(q2)*cos(q5)*sin(q4)*sin(q5)*3.545792124604E-3-cos(q2)*cos(q4)*sin(q5)*sin(q6)*1.3172328E-2-cos(q3)*sin(q2)*sin(q4)*sin(q5)*8.50488880221E-4+cos(q5)*sin(q2)*sin(q3)*sin(q4)*6.7524E-4+cos(q4)*sin(q2)*sin(q3)*sin(q6)*1.6576E-4-cos(q5)*sin(q2)*sin(q3)*sin(q5)*8.949196685599999E-5-cos(q6)*sin(q2)*sin(q3)*sin(q6)*4.647067532E-6-sin(q2)*sin(q3)*sin(q4)*sin(q5)*2.214328E-2+cos(q3)*cos(q4)*pow(cos(q5),2.0)*sin(q2)*sin(q6)*1.40161777574E-4-cos(q2)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*sin(q5)*5.550945674023E-3+cos(q3)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*sin(q5)*4.647067532E-6+pow(cos(q5),2.0)*cos(q6)*sin(q2)*sin(q3)*sin(q6)*4.647067532E-6+cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q5)*3.545792124604E-3+cos(q3)*cos(q5)*cos(q6)*sin(q2)*sin(q4)*7.0080888787E-5-cos(q2)*cos(q4)*cos(q6)*sin(q5)*sin(q6)*5.550945674023E-3-cos(q3)*cos(q5)*sin(q2)*sin(q4)*sin(q6)*2.46312607E-6-cos(q3)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*1.61616E-4+cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q4)*1.6576E-4-cos(q5)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*4.92625214E-6+cos(q3)*sin(q2)*sin(q4)*sin(q5)*sin(q6)*1.3172328E-2-cos(q5)*sin(q2)*sin(q3)*sin(q4)*sin(q6)*1.351008E-2-cos(q5)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*1.40161777574E-4+cos(q3)*cos(q4)*pow(cos(q5),2.0)*cos(q6)*sin(q2)*4.92625214E-6+cos(q2)*cos(q5)*cos(q6)*sin(q4)*sin(q5)*sin(q6)*4.647067532E-6+cos(q3)*cos(q6)*sin(q2)*sin(q4)*sin(q5)*sin(q6)*5.550945674023E-3-cos(q3)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*sin(q5)*5.550945674023E-3+cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q5)*sin(q6)*4.647067532E-6;
  I_row_1[4][0] = cos(q2)*cos(q4)*1.4125101773904E-2+sin(q2)*sin(q3)*sin(q5)*8.50488880221E-4-cos(q2)*cos(q4)*pow(cos(q6),2.0)*5.550945674023E-3-cos(q3)*cos(q5)*sin(q2)*6.7524E-4-cos(q2)*cos(q5)*sin(q4)*8.50488880221E-4-cos(q3)*sin(q2)*sin(q4)*1.4125101773904E-2+cos(q3)*sin(q2)*sin(q5)*2.214328E-2+cos(q5)*sin(q2)*sin(q3)*2.3612519017301E-2+cos(q2)*sin(q4)*sin(q5)*2.3612519017301E-2+cos(q2)*cos(q5)*pow(cos(q6),2.0)*sin(q4)*4.647067532E-6+cos(q3)*pow(cos(q6),2.0)*sin(q2)*sin(q4)*5.550945674023E-3-pow(cos(q6),2.0)*sin(q2)*sin(q3)*sin(q5)*4.647067532E-6-cos(q3)*cos(q4)*cos(q5)*sin(q2)*8.50488880221E-4-cos(q3)*cos(q5)*cos(q6)*sin(q2)*1.6576E-4-cos(q2)*cos(q5)*cos(q6)*sin(q4)*1.61616E-4+cos(q2)*cos(q4)*cos(q6)*sin(q6)*4.647067532E-6+cos(q3)*cos(q4)*sin(q2)*sin(q5)*2.3612519017301E-2+cos(q4)*cos(q5)*sin(q2)*sin(q3)*2.214328E-2+cos(q3)*cos(q5)*sin(q2)*sin(q6)*1.351008E-2-cos(q5)*cos(q6)*sin(q2)*sin(q3)*7.0080888787E-5+cos(q2)*cos(q5)*sin(q4)*sin(q6)*1.3172328E-2-cos(q2)*cos(q6)*sin(q4)*sin(q5)*7.0080888787E-5+cos(q4)*sin(q2)*sin(q3)*sin(q5)*6.7524E-4+cos(q5)*sin(q2)*sin(q3)*sin(q6)*2.46312607E-6+cos(q6)*sin(q2)*sin(q3)*sin(q5)*1.61616E-4+cos(q2)*sin(q4)*sin(q5)*sin(q6)*2.46312607E-6-sin(q2)*sin(q3)*sin(q5)*sin(q6)*1.3172328E-2-cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*1.61616E-4+cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q6)*1.3172328E-2-cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q5)*7.0080888787E-5+cos(q2)*cos(q5)*cos(q6)*sin(q4)*sin(q6)*5.550945674023E-3+cos(q3)*cos(q4)*sin(q2)*sin(q5)*sin(q6)*2.46312607E-6+cos(q4)*cos(q6)*sin(q2)*sin(q3)*sin(q5)*1.6576E-4-cos(q3)*cos(q6)*sin(q2)*sin(q4)*sin(q6)*4.647067532E-6-cos(q4)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*1.351008E-2-cos(q6)*sin(q2)*sin(q3)*sin(q5)*sin(q6)*5.550945674023E-3+cos(q3)*cos(q4)*cos(q5)*pow(cos(q6),2.0)*sin(q2)*4.647067532E-6+cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q6)*5.550945674023E-3;
  I_row_1[5][0] = cos(q2)*cos(q4)*cos(q6)*(-7.0080888787E-5)+cos(q2)*cos(q4)*sin(q6)*2.46312607E-6+cos(q5)*sin(q2)*sin(q3)*9.134489670485E-3+cos(q2)*sin(q4)*sin(q5)*9.134489670485E-3+cos(q2)*cos(q5)*cos(q6)*sin(q4)*2.46312607E-6+cos(q3)*cos(q4)*sin(q2)*sin(q5)*9.134489670485E-3+cos(q3)*cos(q6)*sin(q2)*sin(q4)*7.0080888787E-5+cos(q3)*cos(q6)*sin(q2)*sin(q5)*1.351008E-2+cos(q5)*cos(q6)*sin(q2)*sin(q3)*1.3172328E-2+cos(q2)*cos(q5)*sin(q4)*sin(q6)*7.0080888787E-5+cos(q2)*cos(q6)*sin(q4)*sin(q5)*1.3172328E-2-cos(q3)*sin(q2)*sin(q4)*sin(q6)*2.46312607E-6+cos(q6)*sin(q2)*sin(q3)*sin(q4)*1.6576E-4+cos(q3)*sin(q2)*sin(q5)*sin(q6)*1.6576E-4+cos(q5)*sin(q2)*sin(q3)*sin(q6)*1.61616E-4-cos(q6)*sin(q2)*sin(q3)*sin(q5)*2.46312607E-6+cos(q2)*sin(q4)*sin(q5)*sin(q6)*1.61616E-4-sin(q2)*sin(q3)*sin(q4)*sin(q6)*1.351008E-2-sin(q2)*sin(q3)*sin(q5)*sin(q6)*7.0080888787E-5+cos(q3)*cos(q4)*cos(q5)*cos(q6)*sin(q2)*2.46312607E-6+cos(q3)*cos(q4)*cos(q5)*sin(q2)*sin(q6)*7.0080888787E-5+cos(q3)*cos(q4)*cos(q6)*sin(q2)*sin(q5)*1.3172328E-2+cos(q4)*cos(q5)*cos(q6)*sin(q2)*sin(q3)*1.351008E-2+cos(q3)*cos(q4)*sin(q2)*sin(q5)*sin(q6)*1.61616E-4+cos(q4)*cos(q5)*sin(q2)*sin(q3)*sin(q6)*1.6576E-4;
  I_row_1[6][0] = sin(q6)*(cos(q5)*(cos(q2)*sin(q4)+cos(q3)*cos(q4)*sin(q2))-sin(q2)*sin(q3)*sin(q5))*(-1.584375E-4)+cos(q6)*(cos(q2)*cos(q4)-cos(q3)*sin(q2)*sin(q4))*1.584375E-4;
}
 

