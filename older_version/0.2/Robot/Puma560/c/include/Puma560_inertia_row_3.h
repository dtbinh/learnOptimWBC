/*! \file Puma560_inertia_row_3.h
\brief Computation of the robot specific inertia matrix row for corresponding to joint 3 of 6. 
    
  
Given a full set of joint variables this function computes the 
inertia matrix row number 3 of 6 for Puma 560 copy. Angles have to be given in radians! 
    
__Example__:<BR> 
     
    
__Known Bugs__:<BR> 
  
    
__TODO__:<BR> 
  
    
__References__:<BR> 
+ Robot Modeling and Control - Spong, Hutchinson, Vidyasagar 
+ Modelling and Control of Robot Manipulators - Sciavicco, Siciliano 
+ Introduction to Robotics, Mechanics and Control - Craig 
+ Modeling, Identification & Control of Robots - Khalil & Dombre 
    
__Authors__:<BR> 
This is an autogenerated function!Code generator written by:Joern Malzahn (joern.malzahn@tu-dortmund.de)    
<BR><BR> 
__Copyright Note__: 
  <BR>Copyright  (C) 1993-2014, by Peter I. Corke 
  <BR>Copyright  (C) 2012-2014, by Joern Malzahn 
  
  This file has been automatically generated with The Robotics Toolbox for Matlab (RTB). 
  
  RTB and code generated with RTB is free software: you can redistribute it and/or modify 
  it under the terms of the GNU Lesser General Public License as published by 
  the Free Software Foundation, either version 3 of the License, or 
  (at your option) any later version. 
   
  RTB is distributed in the hope that it will be useful, 
  but WITHOUT ANY WARRANTY; without even the implied warranty of 
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the 
  GNU Lesser General Public License for more details. 
   
  You should have received a copy of the GNU Leser General Public License 
  along with RTB.  If not, see <http://www.gnu.org/licenses/>. 
  
  http://www.petercorke.com 
  
  The code generation module emerged during the work on a project funded by 
  the German Research Foundation (DFG, BE1569/7-1). The authors gratefully  
  acknowledge the financial support. 
*/
    
/*!\fn void Puma560_inertia_row_3(double I_row_3[][1], const double* input1);
\param input1:  6-element vector of generalized coordinates.
\param I_row_3:  [1x6] output row of the robot inertia matrix.
*/


#ifndef PUMA560_INERTIA_ROW_3_H
#define PUMA560_INERTIA_ROW_3_H

#include "math.h"

void Puma560_inertia_row_3(double I_row_3[][1], const double* input1);

#endif /*PUMA560_INERTIA_ROW_3_H */
