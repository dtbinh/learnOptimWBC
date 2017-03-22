/*! \file matvecprod.h
\brief Compute the product of a matrix and a vector 
    
  
Given an [nRow x nCol] inMatrix and a nCol-element inVector, the function 
computes the nRow-element outVector as: outVector = inMatrix*inVector. 
    
__Example__:<BR> 
     
    
__Known Bugs__:<BR> 
  
    
__TODO__:<BR> 
  
    
__References__:<BR> 
+ The C Book: http://publications.gbdirect.co.uk/c_book/ 
    
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
    
/*!\fn void matvecprod(double *outVector, const double *inMatrix, const double *inVector, int nRow, int nCol)
\param inMatrix: [nRow x nCol] input matrix,
\param inVector: nCol-element input vector,
\param nRow: number of rows of inMatrix,
\param nCol: number of columns of inMatrix and elements of inVector.
\param outVector:  nRow-element output vector.
*/


#ifndef MATVECPROD_H
#define MATVECPROD_H

void matvecprod(double *outVector, const double *inMatrix, const double *inVector, int nRow, int nCol);

#endif /*MATVECPROD_H */
