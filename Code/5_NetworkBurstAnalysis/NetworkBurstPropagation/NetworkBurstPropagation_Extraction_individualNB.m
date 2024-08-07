%% MAIN function to extract NB propagation

%% Loading data
clear 
close all
clc

[filename, pathname, filterindex] = uigetfile('*.mat', 'Select NetworkBurst file');
if isempty(strfind(filename,'NetworkBurstDetection'))
    errordlg('Selection Failed - End of Session', 'Error');
    return
end
cd(pathname);
load(filename);

[colorfile, colorpath] = uigetfile({'*.mat'},'Select ColorElectrode file');
if isequal(filename,0)
    return
else
    if strcmp(colorfile,'ColorElectrode.mat')
        load(fullfile(colorpath,colorfile));
    else
        errordlg('Select the ColorElectrode file - End of Session', 'Error');
        return
    end
end

[peakname, peakpath] = uigetfile('*.mat', 'Select MFR file');
if isempty(strfind(peakname,'mfr'))
    errordlg('Selection Failed - End of Session', 'Error');
    return
end
cd(peakpath);
load(peakname);

%% Output folder
idcolor = split(filename,'_');
idcolor = idcolor{end};
id = strfind(pathname,'\');
endfolder = [pathname(1:id(end-2)), pathname(id(end-3)+1:id(end-2)-1), '_NBPropagation_individualNB_new'];

if exist(endfolder, 'dir')
    fprintf('The folder already exists.\n');
else
    try
        mkdir(endfolder);
    catch
        fprintf('Failed to create the folder.\n');
    end
end

%% Network bursts metrics (number, number/mean of involved electrodes, initiating electrodes)

active_el=size(mfr_table, 1);
num_NB = size(netBursts, 1);
involved_el = netBursts(:, 3);
mean_involved_el = mean(involved_el);
initiating_electrodes=NaN(size(netBurstsPattern,1),1);

%% Save parameters

dataname='NBmetrics';
save(fullfile(endfolder,dataname), 'active_el', 'num_NB', 'mean_involved_el')
clear dataname

%% Modulation of the involvement in the NB and propagation

binwidth = 1;
fs = 10000;
[xy,conf] = coordinate(color);
dd = distanceMEA(xy(:,1), xy(:,2), xy(:,3), conf);

perc_involved = involved_el/active_el*100;

% involvement
involvement_figure=figure();
h = histogram(perc_involved);
h.BinWidth = binwidth;
xlabel('Percentage involved electodes');
ylabel('# Occurrence');
set(gca, 'TickDir', 'out');
set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed

duration = netBursts(:,4);  % samples
th_dur = 1/8 * duration;    % samples, per ora nel primo ottavo
th_dur = th_dur + netBursts(:,1);
th_dist = 0.6;   % mm

first_electrodes = cell(num_NB,1);
perc_nearest = NaN(num_NB,1);
delay_max = NaN(num_NB,1);
dist_max = NaN(num_NB,1);
for index=1:num_NB
    
    % involvement
    initiating_electrodes(index)=netBurstsPattern{index, 1}(1,1);
    first_electrodes{index}=netBurstsPattern{index, 1}(netBurstsPattern{index, 1}(:,2)<th_dur(index),1);
    distances=dd(first_electrodes{index}, initiating_electrodes(index));
    perc_nearest(index)=(length(first_electrodes{index}(distances<th_dist))-1)/length(first_electrodes{index})*100;
    
    % propagation
    delay_max(index)=(netBurstsPattern{index,1}(end,2)-netBurstsPattern{index,1}(1,2))/fs;    %seconds
    dist_max(index)=max(dd(netBurstsPattern{index}(:,1), initiating_electrodes(index)));
end

% involvement
nearest_involv_figure=figure();
h1 = histogram(perc_nearest);
h1.BinWidth = binwidth;
xlabel('Percentage nearest involved electodes');
ylabel('# Occurrence');
set(gca, 'TickDir', 'out');
set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed

% propagation
propagation_figure=figure();
plot3(dist_max, delay_max, perc_involved, '.');
xlabel('Max dist');
ylabel('Max latency');
zlabel('Percentage involved electodes');
set(gca, 'TickDir', 'out');
set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed


%% Save parameters

%
figname='PercentageInvolvedElectrodes.fig';
savefig(involvement_figure, fullfile(endfolder,figname));
clear figname
close(involvement_figure)

dataname='PercentageInvolvedElectrodesHist';
save(fullfile(endfolder,dataname),'h');
clear dataname

%
figname='PercentageNearestInvolvedElectrodes.fig';
savefig(nearest_involv_figure, fullfile(endfolder,figname));
clear figname
close(nearest_involv_figure)

dataname='PercentageNearestInvolvedElectrodesHist';
save(fullfile(endfolder,dataname),'h1');
clear dataname

%
dataname='InvolvedMetrics';
save(fullfile(endfolder,dataname), 'involved_el', 'perc_involved', 'perc_nearest')
clear dataname

%
figname='Propagation.fig';
savefig(propagation_figure, fullfile(endfolder,figname));
clear figname
close(propagation_figure)

%
dataname='PropagationMetrics';
save(fullfile(endfolder,dataname), 'dist_max', 'delay_max', 'perc_involved')
clear dataname

%%
disp('EndOfProcessing')
cd(endfolder)