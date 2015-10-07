/*! \file LBR4p_invdyn.h
\brief C-implementation of the inverse dynamics for the LBR4p copy arm. 
    
  
Given a full set of joint variables and their first and second order 
temporal derivatives this function computes the joint space 
torques needed to perform the particular motion. Angles have to be given in radians! 
    
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
    
/*!\fn void LBR4p_invdyn(double TAU[][7], const double* input1, const double* input2, const double* input3);
\param input1:  7-element vector of generalized coordinates
\param input2:  7-element vector of generalized velocities,
\param input3:  7-element vector of generalized accelerations.
\param TAU:  [7x1] vector of joint forces/torques.
*/


#ifndef LBR4P_INVDYN_H
#define LBR4P_INVDYN_H

#include "dotprod.h"
#include "LBR4p_inertia.h"
#include "LBR4p_coriolis.h"
#include "LBR4p_gravload.h"
#include "LBR4p_friction.h"

void LBR4p_invdyn(double TAU[][7], const double* input1, const double* input2, const double* input3);

#endif /*LBR4P_INVDYN_H */
