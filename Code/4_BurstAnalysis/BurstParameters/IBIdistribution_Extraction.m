%% IBIdistribution_ExtrationFromSingleExperiment
% Loads the detected bursts folder, computes the IBI 

%% Loading data
clear 
close all
clc

[burstsfilename,burstsfolder] = uigetfile('*.mat','Select the BurstDetectionFile');
if (burstsfilename == 0)
    errordlg('Selection Failed - End of Session', 'Error');
    return
end

cd(burstsfolder)
load(burstsfilename)

fc = 10000;
binwidth = 0.1;

%% Output Folder
id = strfind(burstsfolder,'\');
expdate = split(burstsfolder(id(end-2)+1:id(end-1)),'_');
expdate = expdate{1}; 
endfolder = [burstsfolder(1:id(end-2)), expdate, '_IBIdistribution'];

if exist(endfolder, 'dir')
    fprintf('The end folder already exists.\n');
else
    try
        mkdir(endfolder);
    catch
        fprintf('Failed to create the folder.\n');
    end
end


%% Computation

ibi = cell(size(burst_detection_cell));
ibi_hist = [];

for i=1:length(burst_detection_cell)
    if ~isempty(burst_detection_cell{i})
       ibi{i} = burst_detection_cell{i}(:, 5);
       ibi{i} = ibi{i}(ibi{i}>0);
       ibi_hist = [ibi_hist; ibi{i}];
    end
end

fig1=figure(1);
h1=histogram(ibi_hist, 'Normalization', 'count');
h1.BinWidth = binwidth;

fig2=figure(2);
h2=histogram(ibi_hist, 'Normalization', 'cdf');
h2.BinWidth = binwidth;

fig3=figure(3);
h3=histogram(ibi_hist, 'Normalization', 'probability');
h3.BinWidth = binwidth;

%% Offline saving
cd(endfolder)
endfolder=pwd;

figname='IBIdistribution';
savefig(fig1, [figname, '.fig'])
saveas(fig1,[figname, '.png'])
clear figname

% fig1 = openfig('AmplitudeDistribution_All.fig');
% h1 = findobj(fig1,'type','histogram');

dataname = 'IBIdistribution.mat';
save(dataname, 'h1')
dataname = 'IBIvector.mat';
save(dataname, 'ibi_hist')
clear dataname


disp('EndOfProcessing')
close all