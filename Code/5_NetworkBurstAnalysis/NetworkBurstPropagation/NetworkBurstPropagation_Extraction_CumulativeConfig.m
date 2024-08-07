%% Script for NB propagation in the different configurations %% 
% attenzione non da worning su nomi

%% Set up iniziale
% nbins=100;
clear
close all

binwidth = 1;
Involved_Beads_18_all = [];   %da cambiare manualmente per ora per ogni configurazione (seleziona tutti e modifica)
NearestInvolved_Beads_18_all = [];   %da cambiare manualmente per ora per ogni configurazione (seleziona tutti e modifica)
Delay_max_Beads_18_all = []; 
Dist_max_Beads_18_all = []; 

[end_folder]= uigetdir(pwd, 'Select the result folder');
if strcmp(num2str(end_folder),'0')
    errordlg('Selection Failed - End of Session', 'Error');
    return
end

%% Data Loading (manuale)
continua = 1;
count = 0;

while continua
    count = count+1;
    [start_folder]= uigetdir(pwd, 'Select the NBPropagation_individualNB folder for the experiment you wish to include');
    if strcmp(num2str(start_folder),'0')
        errordlg('Selection Failed - End of Session', 'Error');
        return
    end
    cd(start_folder)
    
    load('InvolvedMetrics.mat')
    load('PropagationMetrics.mat')
    
    % Involved_Beads_18_all
    max_len = size(Involved_Beads_18_all);
    len = length(perc_involved);
    if len>max_len(2)
       Involved_Beads_18_all=[Involved_Beads_18_all, NaN(max_len(1), len-max_len(2))];
    elseif len < max_len(2)
        perc_involved = [perc_involved; NaN(max_len(2)-len, 1)];
    end
    Involved_Beads_18_all = [Involved_Beads_18_all; perc_involved'];

    % NearestInvolved_Beads_18_all
    max_len = size(NearestInvolved_Beads_18_all);
    len = length(perc_nearest);
    if len>max_len(2)
       NearestInvolved_Beads_18_all=[NearestInvolved_Beads_18_all, NaN(max_len(1), len-max_len(2))];
    elseif len < max_len(2)
        perc_nearest = [perc_nearest; NaN(max_len(2)-len, 1)];
    end
    NearestInvolved_Beads_18_all = [NearestInvolved_Beads_18_all; perc_nearest'];
    
    % Delay_max_Beads_18_all
    max_len = size(Delay_max_Beads_18_all);
    len = length(delay_max);
    if len>max_len(2)
       Delay_max_Beads_18_all=[Delay_max_Beads_18_all, NaN(max_len(1), len-max_len(2))];
    elseif len < max_len(2)
        delay_max = [delay_max; NaN(max_len(2)-len, 1)];
    end
    Delay_max_Beads_18_all = [Delay_max_Beads_18_all; delay_max'];
    
    % Dist_max_Beads_18_all
    max_len = size(Dist_max_Beads_18_all);
    len = length(dist_max);
    if len>max_len(2)
       Dist_max_Beads_18_all=[Dist_max_Beads_18_all, NaN(max_len(1), len-max_len(2))];
    elseif len < max_len(2)
        dist_max = [dist_max; NaN(max_len(2)-len, 1)];
    end
    Dist_max_Beads_18_all = [Dist_max_Beads_18_all; dist_max'];

    % per continuare
    disp(count)
    answer = inputdlg('Enter 1 to add other matrix, 0 to go on:', 'Continue?', [1 50]);
    continua = str2num(answer{1});
    if continua == 0 
        disp('--------------')
        break
    end
end

%% Hisogram

% Histogram and values of Involved electrodes
fig1=figure();
h1=histogram(Involved_Beads_18_all);
h1.BinWidth = binwidth;
xlabel('Percentage involved electodes');
ylabel('# Occurrence');
set(gca, 'TickDir', 'out');
set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed

% Histogram and values of Nearest Involved electrodes
fig2=figure();
h2=histogram(NearestInvolved_Beads_18_all);
h2.BinWidth = binwidth;
xlabel('Percentage nearest involved electodes');
ylabel('# Occurrence');
set(gca, 'TickDir', 'out');
set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed


% Histogram and values of Nearest Involved electrodes
fig3=figure();

plot3(Dist_max_Beads_18_all, Delay_max_Beads_18_all, Involved_Beads_18_all, '.')
xlabel('Max dist');
ylabel('Max latency');
zlabel('Percentage involved electodes');

set(gca, 'TickDir', 'out');
set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed


%% Offline saving 
cd (end_folder)
endfolder=pwd;

% 1
figname='InvolvedElectrodesHist_Beads_DIV18_All_new';
savefig(fig1, [figname, '.fig'])
saveas(fig1,[figname, '.png'])
clear figname


dataname = 'InvolvedElectrodesHist_Beads_DIV18_All_new.mat';
save(dataname, 'h1')
clear dataname

dataname = 'InvolvedElectrodesMatrix_Beads_DIV18_All_new.mat';
save(dataname, 'Involved_Beads_18_all')
clear dataname

% 2
figname='NearestInvolvedElectrodesHist_Beads_DIV18_All_new';
savefig(fig2, [figname, '.fig'])
saveas(fig2,[figname, '.png'])
clear figname


dataname = 'NearestInvolvedElectrodesHist_Beads_DIV18_All_new.mat';
save(dataname, 'h2')
clear dataname

dataname = 'NearestInvolvedElectrodesMatrix_Beads_DIV18_All_new.mat';
save(dataname, 'NearestInvolved_Beads_18_all')
clear dataname

% 3
figname='Propagation_Beads_DIV18_All_new';
savefig(fig3, [figname, '.fig'])
saveas(fig3,[figname, '.png'])
clear figname

dataname = 'Propagation_Beads_DIV18_All_new.mat';
save(dataname, 'Involved_Beads_18_all', 'Dist_max_Beads_18_all','Delay_max_Beads_18_all')
clear dataname

%
disp('EndOfProcessing')
close all