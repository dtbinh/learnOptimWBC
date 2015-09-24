function jacob_dot = jacob_dot(rob,in2,in3)
%% JACOB_DOT - Jdot for the LBR4p copy. 
% ========================================================================= 
%    
%    Jdot = jacob_dot(rob,q,qd) 
%    Jdot = rob.jacob_dot(q,qd) 
%    
%  Description:: 
%    Given a set of joint variables and joint velocities up to joint number the function 
%    computes the Jacobian derivatives multiplied by qd with respect to the base frame. 
%    
%  Input:: 
%    q: vector of generalized coordinates. 
%    Angles have to be given in radians!\n 
%    qd: vector of the derivatives of generalized coordinates. 
%    
%  Output:: 
%    Jdot: 6x1 vector equal to Jdot*qd. 
%    
%  Example:: 
%    --- 
%    
%  Known Bugs:: 
%    --- 
%    
%  TODO:: 
%    --- 
%    
%  References:: 
%    1) Robot Modeling and Control - Spong, Hutchinson, Vidyasagar 
%    2) Modelling and Control of Robot Manipulators - Sciavicco, Siciliano 
%    3) Introduction to Robotics, Mechanics and Control - Craig 
%    4) Modeling, Identification & Control of Robots - Khalil & Dombre 
%    
%  Authors:: 
%    This is an autogenerated function! 
%    Code generator written by: 
%    Joern Malzahn, Valerio Modugno 
%    2014, Technische Universitaet Darmstadt, Germany 
%    
%  See also LBR4p copy.
%    
    
% Copyright (C) 1993-2014, by Peter I. Corke 
% Copyright (C) 2012-2014, by Joern Malzahn 
% 
% This file has been automatically generated with The Robotics Toolbox for Matlab (RTB). 
% 
% RTB and code generated with RTB is free software: you can redistribute it and/or modify 
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
% along with RTB.  If not, see <http://www.gnu.org/licenses/>. 
% 
% http://www.petercorke.com 
% 
% The code generation module emerged during the work on a project funded by 
% the German Research Foundation (DFG, BE1569/7-1). The authors gratefully  
% acknowledge the financial support. 

%% Bugfix
%  In some versions the symbolic toolbox writes the constant $pi$ in
%  capital letters. This way autogenerated functions might not work properly.
%  To fix this issue a local variable is introduced:
PI = pi;
   




%    This function was generated by the Symbolic Math Toolbox version 5.10.
%    10-Dec-2014 14:03:08

q1 = in2(:,1);
q2 = in2(:,2);
q3 = in2(:,3);
q4 = in2(:,4);
q5 = in2(:,5);
q6 = in2(:,6);
qd1 = in3(:,1);
qd2 = in3(:,2);
qd3 = in3(:,3);
qd4 = in3(:,4);
qd5 = in3(:,5);
qd6 = in3(:,6);
qd7 = in3(:,7);
t2 = cos(q5);
t3 = cos(q2);
t4 = sin(q3);
t5 = sin(q2);
t6 = cos(q3);
t7 = cos(q4);
t8 = qd1.*t3;
t9 = qd3+t8;
t10 = sin(q4);
t11 = qd2.*t4;
t13 = qd1.*t5.*t6;
t12 = t11-t13;
t14 = cos(q6);
t15 = sin(q5);
t16 = t7.*t12;
t21 = t9.*t10;
t17 = t16-t21;
t18 = qd2.*t6;
t19 = qd1.*t4.*t5;
t20 = qd4+t18+t19;
t22 = t2.*t17;
t23 = t15.*t20;
t24 = t22+t23;
t25 = t14.*t24.*(3.9e1./5.0e2);
t26 = sin(q6);
t27 = t7.*t9;
t28 = t10.*t12;
t29 = qd5+t27+t28;
t30 = qd6.*(3.9e1./5.0e2);
t31 = t2.*t20.*(3.9e1./5.0e2);
t33 = t15.*t17.*(3.9e1./5.0e2);
t32 = t30+t31-t33;
t34 = qd4.*(3.9e1./1.0e2);
t40 = t26.*t29.*(3.9e1./5.0e2);
t43 = t25-t40;
t35 = t15.*t43;
t36 = qd2.*t6.*(3.9e1./1.0e2);
t37 = qd1.*t4.*t5.*(3.9e1./1.0e2);
t38 = t2.*t14.*t32;
t39 = t34+t35+t36+t37+t38;
t41 = t7.*t39;
t83 = t10.*t26.*t32;
t42 = t41-t83;
t44 = t7.*t12.*(3.9e1./1.0e2);
t45 = cos(q1);
t46 = t14.*(3.9e1./5.0e2);
t47 = t46+3.9e1./1.0e2;
t48 = t10.*t47;
t49 = t2.*t7.*t26.*(3.9e1./5.0e2);
t50 = t48+t49;
t51 = t2.*t43;
t128 = t9.*t10.*(3.9e1./1.0e2);
t129 = t14.*t15.*t32;
t52 = t44+t51-t128-t129;
t53 = sin(q1);
t54 = t3.*t10;
t55 = t5.*t6.*t7;
t56 = t54+t55;
t57 = t15.*t56;
t58 = t2.*t4.*t5;
t59 = t57+t58;
t60 = t4.*t45;
t61 = t3.*t6.*t53;
t62 = t60+t61;
t63 = t7.*t62;
t92 = t5.*t10.*t53;
t64 = t63-t92;
t65 = t6.*t45;
t93 = t3.*t4.*t53;
t66 = t65-t93;
t67 = t2.*t66;
t68 = t4.*t53;
t80 = t3.*t6.*t45;
t69 = t68-t80;
t70 = t7.*t69;
t71 = t5.*t10.*t45;
t72 = t70+t71;
t73 = t6.*t53;
t74 = t3.*t4.*t45;
t75 = t73+t74;
t76 = t2.*t75;
t131 = t15.*t64;
t77 = t67-t131;
t130 = t15.*t72;
t78 = t76-t130;
t79 = t7.*t26.*t32;
t81 = t15.*(t25-t40);
t82 = t34+t36+t37+t38+t81;
t84 = t10.*t62;
t85 = t5.*t7.*t53;
t86 = t84+t85;
t87 = t7.*t47;
t88 = t3.*t7;
t101 = t5.*t6.*t10;
t89 = t88-t101;
t90 = t10.*t69;
t100 = t5.*t7.*t45;
t91 = t90-t100;
t94 = t14.*t86;
t95 = t2.*t64;
t96 = t15.*t66;
t97 = t95+t96;
t98 = t26.*t97;
t99 = t94+t98;
t102 = t2.*t56;
t105 = t4.*t5.*t15;
t103 = t102-t105;
t104 = t14.*t89;
t113 = t26.*t103;
t106 = t104-t113;
t107 = t14.*t91;
t108 = t2.*t72;
t109 = t15.*t75;
t110 = t108+t109;
t111 = t26.*t110;
t112 = t107+t111;
t114 = t2.*t20;
t116 = t15.*t17;
t115 = qd6+t114-t116;
t117 = t14.*t29;
t118 = t43.*t99;
t119 = t24.*t99;
t120 = t26.*t32.*t106;
t162 = t29.*t112;
t163 = t119-t162;
t208 = t14.*t163.*(3.9e1./5.0e2);
t209 = t118+t120-t208;
t121 = qd6.*t209;
t122 = t14.*t24;
t123 = t26.*(t22+t23);
t124 = qd7+t117+t123;
t125 = t32.*t99;
t164 = t43.*t112;
t126 = t125-t164;
t127 = qd7.*t26.*t126;
t132 = t99.*t115;
t133 = t29.*(t104-t113);
t134 = t132+t133;
t135 = t14.*t134.*(3.9e1./5.0e2);
t136 = (t22+t23).*(t104-t113);
t137 = t112.*t115;
t138 = t136+t137;
t139 = t26.*t138.*(3.9e1./5.0e2);
t176 = t26.*t32.*t112;
t177 = t14.*t32.*t99;
t140 = t135+t139-t176-t177;
t141 = qd6.*t140;
t142 = t32.*(t104-t113);
t143 = t99.*t124.*(3.9e1./5.0e2);
t178 = t106.*t115.*(3.9e1./5.0e2);
t144 = t142+t143-t178;
t145 = qd7.*t144;
t146 = t141+t145;
t165 = t26.*t29;
t147 = t122-t165;
t148 = t106.*t147.*(3.9e1./5.0e2);
t149 = t20.*t78;
t150 = t17.*t77;
t151 = t149+t150;
t152 = t10.*t82;
t153 = t79+t152;
t169 = t2.*t10.*t26.*(3.9e1./5.0e2);
t154 = t87-t169;
t155 = t12.*t89;
t156 = t20.*t91;
t157 = t155+t156;
t158 = t17.*t59;
t159 = t29.*t78;
t160 = t20.*t59;
t196 = t29.*t77;
t161 = t160-t196;
t166 = t112.*t124.*(3.9e1./5.0e2);
t167 = t158+t159;
t175 = t43.*t106;
t168 = t148+t166-t175;
t170 = t4.*t50;
t171 = t6.*t15.*t26.*(3.9e1./5.0e2);
t172 = t170+t171;
t181 = t7.*t82;
t173 = t83-t181;
t174 = qd1.*t5.*(2.0./5.0);
t179 = t15.*t146;
t180 = qd2.*(2.0./5.0);
t182 = t9.*t75;
t183 = t5.^2;
t265 = qd1.*t4.*t183;
t184 = t182-t265;
t185 = t6.*t50;
t216 = t4.*t15.*t26.*(3.9e1./5.0e2);
t186 = t185-t216;
t187 = t4.*t173;
t188 = t6.*t52;
t189 = -t174+t187+t188;
t190 = t4.*t52;
t191 = t12.*t86;
t239 = t9.*t91;
t192 = t191-t239;
t193 = t9.*t89;
t194 = t20.*t86;
t195 = t193+t194;
t197 = t15.*t26.*t161.*(3.9e1./5.0e2);
t198 = t26.*t163.*(3.9e1./5.0e2);
t199 = t14.*t32.*t106;
t200 = -t164+t198+t199;
t201 = qd6.*t200;
t202 = (t104-t113).*(t122-t165).*(3.9e1./5.0e2);
t203 = t166-t175+t202;
t204 = qd7.*t14.*t126;
t205 = t52.*t78;
t206 = t2.*t26.*t167.*(3.9e1./5.0e2);
t243 = t77.*t82;
t207 = t197+t205+t206-t243;
t210 = t47.*t167;
t211 = t26.*t32.*t77;
t212 = t15.*t26.*t151.*(3.9e1./5.0e2);
t232 = t52.*t59;
t213 = t210+t211+t212-t232;
t214 = qd5.*t213;
t215 = t87-t169+2.0./5.0;
t217 = t5.*t186;
t248 = t3.*t215;
t218 = t217-t248;
t220 = t6.*t173;
t219 = t180+t190-t220;
t221 = t86.*t173;
t222 = t154.*t195;
t223 = t50.*t157;
t254 = t91.*t153;
t224 = qd4.*(t221+t222+t223-t254);
t225 = qd7.*t14.*t203;
t226 = t121+t127+t225;
t227 = t2.*t146;
t228 = t9.*t66;
t274 = qd2.*t4.*t5;
t229 = t228-t274;
t230 = qd2.*t75;
t268 = qd1.*t5.*t66;
t231 = t230-t268;
t233 = (t16-t21).*(t67-t131);
t234 = t20.*(t76-t130);
t235 = t233+t234;
t236 = t2.*t226;
t237 = t52.*t86;
t238 = t89.*t153;
t240 = t15.*t26.*t157.*(3.9e1./5.0e2);
t261 = t154.*t192;
t241 = t237+t238+t240-t261;
t242 = qd4.*t241;
t262 = qd7.*t26.*t203;
t263 = qd5.*t207;
t244 = t201+t204-t262-t263;
t245 = t5.*t153;
t246 = t245-t3.*t219;
t247 = t3.*t153;
t249 = qd1.*t5.*t45.*t218;
t250 = t59.*t82;
t251 = t2.*t26.*t235.*(3.9e1./5.0e2);
t290 = t47.*t161;
t291 = t26.*t32.*t78;
t252 = t250+t251-t290-t291;
t253 = qd5.*t252;
t292 = t15.*t226;
t255 = t224+t227+t253-t292;
t256 = t15.*t26.*t235.*(3.9e1./5.0e2);
t257 = t210+t211-t232+t256;
t258 = qd5.*t257;
t259 = t179+t236+t258;
t260 = t7.*t259;
t264 = t10.*t244;
t266 = t184.*t215;
t267 = t66.*t153;
t269 = t172.*t231;
t298 = t4.*t5.*t189;
t270 = t266+t267+t269-t298;
t271 = qd3.*t270;
t272 = t4.*(t44+t51-t128-t129);
t273 = t180-t220+t272;
t275 = t184.*t186;
t276 = t75.*t189;
t277 = t52.*t91;
t278 = t89.*t173;
t300 = t50.*t192;
t301 = t15.*t26.*t195.*(3.9e1./5.0e2);
t279 = qd4.*(t277+t278-t300-t301);
t280 = t242+t260+t264;
t281 = qd2.*t5.*t53;
t282 = t8+t281;
t283 = t218.*t282;
t284 = t5.*t273;
t285 = t247+t284;
t286 = t5.*t215;
t287 = t3.*t186;
t288 = t286+t287;
t289 = qd2.*t5.*t45.*t288;
t293 = t215.*t229;
t294 = t186.*t231;
t296 = t3.*t273;
t295 = t245-t296;
t297 = t4.*t255;
t299 = qd3.*(t275+t276-t66.*t273-t172.*t229);
t302 = qd6.*t163;
t303 = t112.*t124;
t304 = t106.*t147;
t305 = t303+t304;
t317 = qd7.*t305;
t306 = t302-t317;
t307 = t99.*t147;
t308 = t137+t307;
t309 = qd7.*t26.*t308;
t310 = t106.*t115;
t313 = t99.*t124;
t311 = t310-t313;
t312 = qd7.*t14.*t311;
t318 = qd6.*t134;
t314 = t309+t312-t318;
t315 = qd6.*t138;
t316 = qd5.*t235;
t319 = qd5.*t161;
t320 = t2.*t314;
t324 = t15.*t306;
t321 = t319+t320-t324;
t322 = qd7.*t14.*t308;
t325 = qd7.*t26.*t311;
t323 = t315+t316+t322-t325;
t326 = t7.*t321;
t327 = t10.*t323;
t337 = qd4.*t195;
t328 = t326+t327-t337;
t329 = qd4.*t192;
t330 = t15.*t314;
t331 = t2.*t306;
t333 = qd5.*t167;
t332 = t329+t330+t331-t333;
t334 = (t104-t113).*(t122-t165);
t335 = t303+t334;
t342 = qd7.*t335;
t336 = t302-t342;
t338 = qd1.*qd2.*t5.*t45;
t339 = qd2.*t282;
t340 = qd7.*t14.*(t137+t307);
t341 = t315+t316-t325+t340;
t343 = t2.*(t309+t312-t318);
t347 = t15.*t336;
t344 = t319+t343-t347;
t345 = qd3.*t231;
t346 = qd4.*t157;
t348 = t7.*t344;
t349 = t10.*t341;
t350 = -t337+t348+t349;
t351 = qd3.*t229;
t352 = t15.*(t309+t312-t318);
t353 = t2.*t336;
t354 = t329-t333+t352+t353;
t355 = t7.*t341;
t356 = t345+t346+t355-t10.*t344;
jacob_dot = [-t53.*(qd3.*(t293+t294-t75.*t153+t4.*t5.*t219)-qd2.*(t283+t289-t5.*t45.*(t247+t5.*t219)-t5.*t53.*t246)+t6.*t255-t4.*t280)+qd1.*(t53.*t246+t45.*(-t174+t187+t188))-t45.*(t3.*(t271+t6.*(t242+t10.*(t201+t204-qd5.*t207-qd7.*t26.*t168)+t7.*(t179+t214+t2.*(t121+t127+qd7.*t14.*t168)))+t4.*(t224+t227+qd5.*(t39.*t59-t47.*t161-t26.*t32.*t78+t2.*t26.*t151.*(3.9e1./5.0e2))-t15.*(t121+t127+qd7.*t14.*(t148-t175+t112.*(qd7+t117+t24.*t26).*(3.9e1./5.0e2)))))-t5.*(t279-t7.*t244+t10.*(t179+t214+t236)+qd3.*(t275+t276-t66.*t219-t172.*t229))+qd2.*(t249+t3.*(t5.*(t180+t190+t6.*t42)+t3.*(t79+t10.*t39))-t5.*t53.*(t174-t188+t4.*t42)-qd2.*t5.*t45.*t172));-t53.*(t3.*(t271+t297+t6.*t280)-t5.*(t279+t299-t7.*t244+t10.*t259)+qd2.*(t249+t3.*t285+t5.*t53.*t189-qd2.*t5.*t45.*t172))+t45.*(qd3.*(t293+t294-t75.*t153+t4.*t5.*t273)+t6.*t255-t4.*t280-qd2.*(t283+t289-t5.*t45.*t285-t5.*t53.*t295))+qd1.*(t53.*t189-t45.*t295);t3.*(t279+t299-t7.*t244+t10.*(t179+qd5.*(-t232+t256+t47.*(t158+t159)+t26.*t32.*(t67-t131))+t2.*(t127+t225+qd6.*(t118+t120-t14.*(t119-t162).*(3.9e1./5.0e2)))))-qd2.*(-t3.*t295+t172.*t282+t5.*t45.*t189+qd1.*t5.*t45.*t288)+t5.*(t271+t297+t6.*(t242+t260+t264));-t53.*(t338-qd3.*t184+t4.*t328+t6.*t332)-t45.*(t339+t3.*(t351-t6.*t328+t4.*t332)-t5.*(t345+t346+t7.*t323-t10.*t321));-t53.*(t339+t3.*(t351-t6.*t350+t4.*t354)-t5.*t356)+t45.*(t338-qd3.*t184+t4.*t350+t6.*t354);t3.*t356+t5.*(t351-t6.*t350+t4.*(t329-t333+t352+t2.*(t302-t342)))-qd2.^2.*t5.*t45];
