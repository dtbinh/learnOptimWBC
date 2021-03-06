%CODEGENERATOR.GENCCODEJDOT Generate C-code for the Jdot
%
% cGen.genccodeJdot() generates a robot-specific C-function to compute the
% derivative of jacobian.
% .
%
% Notes::
% - Is called by CodeGenerator.genJdot if cGen has active flag genccode or
%   genmex
% - The generated .c and .h files are wirtten to the directory specified in
%   the ccodepath property of the CodeGenerator object.
%
% Author::
%  Joern Malzahn, (joern.malzahn@tu-dortmund.de)
%  Valerio Modugno
% See also CodeGenerator.CodeGenerator, CodeGenerator.genJdot, CodeGenerator.genmexJdot.

% Copyright (C) 2012-2014, by Joern Malzahn
%
% This file is part of The Robotics Toolbox for Matlab (RTB).
%
% RTB is free software: you can redistribute it and/or modify
% it under the terms of the GNU Lesser General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.
%
% RTB is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU Lesser General Public License for more details.
%
% You should have received a copy of the GNU Leser General Public License
% along with RTB. If not, see <http://www.gnu.org/licenses/>.
%
% http://www.petercorke.com

function [] = genccodeJdot(CGen)

%% Check for existance symbolic expressions
% Load symbolics
symname = 'jacob_dot';
fname = fullfile(CGen.sympath,[symname,'.mat']);

if exist(fname,'file')
    tmpStruct = load(fname);
else
    error ('genmfunJdot:SymbolicsNotFound','Save symbolic expressions to disk first!')
end

%% Jdot up to tool center point
CGen.logmsg([datestr(now),'\tGenerating Jdot c-code: ']);

%% Prerequesites
% check for existance of C-code directories
srcDir = fullfile(CGen.ccodepath,'src');
hdrDir = fullfile(CGen.ccodepath,'include');
if ~exist(srcDir,'dir')
    mkdir(srcDir);
end
if ~exist(hdrDir,'dir')
    mkdir(hdrDir);
end

funname = [CGen.getrobfname,'_',symname];
funfilename = [funname,'.c'];
hfilename = [funname,'.h'];

[Q,QD] = CGen.rob.gencoords;


% Convert symbolic expression into C-code
[funstr hstring] = ccodefunctionstring(tmpStruct.(symname),...
    'funname',funname,...
    'vars',{Q,QD},'output','jacob_dot');

% Create the function description header
hStruct = createHeaderStructJdot(CGen.rob,symname); % create header
hStruct.calls = hstring;
hFString = CGen.constructheaderstringc(hStruct);

%% Generate C implementation file
fid = fopen(fullfile(srcDir,funfilename),'w+');

% Includes
fprintf(fid,'%s\n\n',...
    ['#include "', hfilename,'"']);

% Function
fprintf(fid,'%s\n\n',funstr);
fclose(fid);

%% Generate C header file
fid = fopen(fullfile(hdrDir,hfilename),'w+');

% Header
fprintf(fid,'%s\n\n',hFString);

% Include guard
fprintf(fid,'%s\n%s\n\n',...
    ['#ifndef ', upper([funname,'_h'])],...
    ['#define ', upper([funname,'_h'])]);

% Includes
fprintf(fid,'%s\n\n',...
    '#include "math.h"');

% Function prototype
fprintf(fid,'%s\n\n',hstring);

% Include guard
fprintf(fid,'%s\n',...
    ['#endif /*', upper([funname,'_h */'])]);

fclose(fid);

CGen.logmsg('\t%s\n',' done!');


end

%% Definition of the header contents for each generated file
function hStruct = createHeaderStructJdot(rob,fname)
[~,hStruct.funName] = fileparts(fname);
hStruct.shortDescription = ['Jdot for the ',rob.name,'.'];
hStruct.calls = {['Jdot = ',hStruct.funName,'(rob,q,qd)'],...
    ['Jdot = rob.',hStruct.funName,'(q,qd)']};
hStruct.detailedDescription = {'Given a set of joint variables and joint velocities up to joint number the function',...
    'computes the Jacobian derivatives multiplied by qd with respect to the base frame.'};
hStruct.inputs = {'q: vector of generalized coordinates.',...
    'Angles have to be given in radians!\n'...
    'qd: vector of the derivatives of generalized coordinates.'};
hStruct.outputs = {'Jdot: 6x1 vector equal to Jdot*qd.'};
hStruct.references = {'1) Robot Modeling and Control - Spong, Hutchinson, Vidyasagar',...
    '2) Modelling and Control of Robot Manipulators - Sciavicco, Siciliano',...
    '3) Introduction to Robotics, Mechanics and Control - Craig',...
    '4) Modeling, Identification & Control of Robots - Khalil & Dombre'};
hStruct.authors = {'This is an autogenerated function!',...
    'Code generator written by:',...
    'Joern Malzahn, Valerio Modugno',...
    '2014, Technische Universitaet Darmstadt, Germany'};
hStruct.seeAlso = {rob.name};
end


