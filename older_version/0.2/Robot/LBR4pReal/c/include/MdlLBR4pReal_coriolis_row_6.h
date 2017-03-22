/*! \file MdlLBR4pReal_coriolis_row_6.h
\brief Computation of the robot specific Coriolis matrix row for corresponding to joint 6 of 7. 
    
  
Given a full set of joint variables this function computes the 
Coriolis matrix row number 6 of 7 for MdlLBR4pReal copy. Angles have to be given in radians! 
    
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
  <BR>Copyright  (C) 1993-2015, by Peter I. Corke 
  <BR>Copyright  (C) 2012-2015, by Joern Malzahn 
  
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
    
/*!\fn void MdlLBR4pReal_coriolis_row_6(double C_row_6[][1], const double* input1, const double* input2);
\param input1:  7-element vector of generalized coordinates
\param input2: 7-element vector of generalized velocities
\param C_row_6:  [1x7] row of the robot Coriolis matrix
*/


#ifndef MDLLBR4PREAL_CORIOLIS_ROW_6_H
#define MDLLBR4PREAL_CORIOLIS_ROW_6_H

#include "math.h"

void MdlLBR4pReal_coriolis_row_6(double C_row_6[][1], const double* input1, const double* input2);

#endif /*MDLLBR4PREAL_CORIOLIS_ROW_6_H */
