clc;clear;close all;
addpath(genpath(pwd));
warning('off');
%% Get 3D 2D Vessel
load('Data.mat')
Display3DA2DVesselData(VesData3D,VesData2D.K,VesData2D,'title','Initial');

%% GTSR
config = makeconfig;
config.VesData3D = VesData3D;
config.VesData2D = VesData2D;
VesData3DReg = GreedyRegistration(config);
Display3DA2DVesselData(VesData3DReg,VesData2D.K,VesData2D,'title','GTSR');
%% HTSR
VesData3DReg = HeuristicRegistration(config);
Display3DA2DVesselData(VesData3DReg,VesData2D.K,VesData2D,'title','HTSR');