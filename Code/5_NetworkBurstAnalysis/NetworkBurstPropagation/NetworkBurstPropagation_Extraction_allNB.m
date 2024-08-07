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

%% Output folder
idcolor = split(filename,'_');
idcolor = idcolor{end};
id = strfind(pathname,'\');
endfolder = [pathname(1:id(end-2)), pathname(id(end-3)+1:id(end-2)-1), '_NBPropagation_allNB'];

if exist(endfolder, 'dir')
    fprintf('The folder already exists.\n');
else
    try
        mkdir(endfolder);
    catch
        fprintf('Failed to create the folder.\n');
    end
end

%% Network bursts metrics (number, number of involved electrodes, number of sources, sources)

num_NB = size(netBursts, 1);
involved_el = netBursts(:, 3);
mean_involved_el = mean(involved_el);
initiating_electrodes=NaN(size(netBurstsPattern,1),1);
for index=1:size(netBurstsPattern,1)
    initiating_electrodes(index)=netBurstsPattern{index, 1}(1,1);
end

sources_figure=figure();
h = histogram(categorical(initiating_electrodes));
threshold = floor(0.05*num_NB);
putative_sources_idx = h.Values>threshold;
putative_sources = h.Categories(putative_sources_idx);
putative_sources_num = sum(putative_sources_idx);
line([0 (size(h.Categories, 2)+h.BarWidth)],[threshold threshold], 'Color','red','LineStyle','--')
% legend('Histogram', 'Threshold', 'Location', 'Best');
% title ('MBL');  
title ('Putative Sources'); 
% NB: MBL= channels leading at least 5% of the total number of detected NBs
% ovvero putative sources per me
xlabel('Electrodes');
ylabel('# Occurrence');
set(gca, 'TickDir', 'out');
set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed
box off

%% Save parameters
figname='PutativeSources.fig';
savefig(sources_figure, fullfile(endfolder,figname));
clear figname
close(sources_figure)

dataname='NBsourcesHist';
save(fullfile(endfolder,dataname),'h');
clear dataname

dataname='NBmetrics';
save(fullfile(endfolder,dataname),'num_NB', 'mean_involved_el', 'putative_sources_num')
clear dataname

putative_sources=str2double(putative_sources);
dataname='NBsources';
save(fullfile(endfolder,dataname),'putative_sources')
clear dataname


%% Propagation of the NB (distance/latency plots, propagation in terms of latency)

fs = 10000;
[xy,conf] = coordinate(color);
dd = distanceMEA(xy(:,1), xy(:,2), xy(:,3), conf);
delay = [];
Parameters = [];
R2 = [];

for j = 1:length(putative_sources)
    delay_mean_j = [];
    for i = 1:length(netBurstsPattern)
        % If the NB originates in the putative_source(j), compute the delays with
        % the other electrodes. delay_j will be long as the number of
        % involved electrodes in the single NB; Delay will be as
        % long as the total number of involved electrodes in all
        % the NBs
        if netBurstsPattern{i}(1,1) == putative_sources(j)
            delay_j = [(netBurstsPattern{i}(2:end,2)-netBurstsPattern{i}(1,2))./fs netBurstsPattern{i}(2:end,1)];
            delay = [delay; delay_j];
        end
    end
            
    delay = sortrows(delay,2);
    el_involved = unique(delay(:,2));
    for i = 1:length(el_involved)
        delay_mean_j = [delay_mean_j; mean(delay(delay(:,2) == el_involved(i),1))*1000 el_involved(i)];
    end 
    delay_mean_j(delay_mean_j(:,2)==putative_sources(j),:) = [];
    delay_tot{j} = delay_mean_j; % in ms
    latency = delay_mean_j(:,1);
    distance = dd(putative_sources(j),delay_mean_j(:,2));
    followers = delay_mean_j(:,2);
    distance = distance';
    latency_distance{j}= table(latency,distance,followers);
    
    % Velocity
    velocity = figure();
    scatter(latency,distance,'filled','o');
    [P,S] = polyfit(latency,distance,1);
    yfit = P(1)*latency+P(2);
    Parameters = [Parameters; P];
    R = 1 - (S.normr/norm(distance - mean(distance)))^2;
    R2 = [R2; R];
    hold on
    plot(latency,yfit,'k')
    xlabel('Latency [ms]')
    ylabel('Distance [mm]')

    % Propagation Map
    PropagationMap = figure();
    scatter(xy(:,1),xy(:,2),15,'filled','k');
    hold on
    for i = 1:length(delay_mean_j)
        x = xy(xy(:,3)==delay_mean_j(i,2),1);
        y = xy(xy(:,3)==delay_mean_j(i,2),2);
        size = delay_mean_j(i,1);  
        scatter(x,y,size,delay_mean_j(i,1),'filled');
    end
    c=colorbar;
    c.Label.String = 'Latency (ms)';
    c.Limits = [min(delay_mean_j(:,1)) max(delay_mean_j(:,1))];
    caxis([0 max(delay_mean_j(:,1))])
    axis off
    % xticks([10 20 30 40 50 60 70 80 90])
    x_ref = xy(xy(:,3)==putative_sources(j),1);
    y_ref = xy(xy(:,3)==putative_sources(j),2);
    scatter(x_ref,y_ref,400,'filled','k');

    % Online saving
    figname=strcat('Velocity_', string(putative_sources(j)));
    savefig(velocity, fullfile(endfolder,figname));
    clear figname
    close(velocity)

    dataname=strcat('Velocity_', string(putative_sources(j)));
    P_tmp=table(P,R);
    save(fullfile(endfolder,dataname),'P_tmp');
    clear dataname
    
    figname = strcat('PropagationMap_', string(putative_sources(j)));
    savefig(PropagationMap, fullfile(endfolder,figname));
    clear figname
    close(PropagationMap)
end

% Total velocity of the matrix
tot = [];        
for j = 1:length(latency_distance)
    tot = [tot; latency_distance{j}];
end
        
%% Save parameters

% Total Velocity Table
Parameters = Parameters.*1000;  %% mm/s
Param = table(Parameters,R2);
dataname = 'Velocity_Total';
save(fullfile(endfolder,dataname),'Param');
clear dataname

% Total Latency
dataname = 'Latency(ms)';
save(fullfile(endfolder,dataname),'delay_tot');
clear dataname

% Total Latency/Distance
dataname = 'DistanceLatency';
save(fullfile(endfolder,dataname),'latency_distance');
clear dataname


