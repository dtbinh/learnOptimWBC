/*! \file fkine.h
\brief C version of the forward kinematics solution including tool transformation for the Puma 560 copy arm. 
    
  
Given a full set of joint variables the function 
computes the pose belonging to that joint with respect to the base frame. 
    
__Example__:<BR> 
     
    
__Known Bugs__:<BR> 
  
    
__TODO__:<BR> 
  
    
__References__:<BR> 
+ Robot Modeling and Control - Spong, Hutchinson, Vidyasagar 
+ Modelling and Control of Robot Manipulators - Sciavicco, Siciliano 
+ Introduction to Robotics, Mechanics and Control - Craig 
+ Modeling, Identification & Control of Robots - Khalil & Dombre 
    
__Authors__:<BR> 
This is an autogenerated function!<BR>Code generator written by:<BR>Joern Malzahn (joern.malzahn@tu-dortmund.de)<BR>    
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
    
/*!\fn void Puma560_fkine(double T[][4], const double* input1);
\param input1 Vector of generalized coordinates. Angles have to be given in radians!
\param T [4x4] Homogenous transformation matrix relating the pose of the tool for the given joint values to the base frame.
*/


#ifndef PUMA560_FKINE_H
#define PUMA560_FKINE_H

#include "math.h"

void Puma560_fkine(double T[][4], const double* input1);

#endif /*PUMA560_FKINE_H */
