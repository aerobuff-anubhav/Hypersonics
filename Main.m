%{
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
DOCUMENT INFORMATION

Author          :     Anubhav Gupta 
Advisor         :     Prof. Brian Argrow
Department      :     Aerospace Engineering Sciences
Institution     :     University of Colorado Boulder
Purpose         :     Master of Science Thesis
Thesis Title    :     Analytical Theory of Aero-Optical and Atmospheric
                      Effects in Supersonic and Hypersonic Flows
Started         :     Sep 27, 2017
Last Modifed    :     Apr 9, 2020
Version         :     1.0

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
LICENSING

MIT License

Copyright (c) 2020 Anubhav Gupta

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% DESCRIPTION: 
% This file is the starting point of the entire package. It takes input
% from the user for the choice of investigation.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Script
clear all;
close all;
clc;

tic;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Start of Preamble

% Adding Paths
addpath(genpath('common'))
addpath(genpath('cone'))
% addpath(genpath('graphFunctions'))
addpath(genpath('wedge'))
addpath(genpath('custom'))
addpath(genpath('a_refractivity'))
addpath(genpath('b_approachAngle'))
addpath(genpath('c_shifts'))
addpath(genpath('d_codePerformance'))

% Load Files
messages;
parameters;

% End of Preamble
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Printing
fprintf('Aero-Optical Effects in Supersonic Flows\n');
fprintf('----------------------------------------\n');
fprintf('Author: Anubhav Gupta\n');
fprintf('Advisor: Brian Argrow\n');

try
    IL = input(prompt01);
    fprintf('----------------------------------------\n');
catch exception
    msg = 'Entering non-numeric value!\nFile: Main.m';
    causeException = MException('',msg);
    exception = addCause(exception,causeException);
    rethrow(exception)
end

switch IL
    case 1
        a_refractivity;
    case 2
        b_approachAngle;
    case 3
        c_shifts;
    case 4
        d_codePerformance;
    otherwise
        warning('Selected option is out of range');
end
    
fprintf('\nEnd of Program \n\n');
toc;
