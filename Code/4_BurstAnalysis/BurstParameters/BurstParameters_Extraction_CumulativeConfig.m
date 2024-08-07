%% BurstParameters 
% attenzione non da worning su nomi

%% Set up iniziale
% nbins=100;
clear
close all

fc = 10000;
BD_Sponge_18_all = [];   %da cambiare manualmente per ora per ogni configurazione (seleziona tutti e modifica)
SpXBst_Sponge_18_all = [];   %da cambiare manualmente per ora per ogni configurazione (seleziona tutti e modifica)

%% Output folder 

[end_folder]= selectfolder('Select the result folder');
if strcmp(num2str(end_folder),'0')
    errordlg('Selection Failed - End of Session', 'Error');
    return
end

%% Data Loading (manuale)
continua = 1;
count = 0;

while continua
    count = count+1;
    [burstsfilename,burstsfolder] = uigetfile('*.mat','Select the BurstDetectionFile');
    if (burstsfilename == 0)
        errordlg('Selection Failed - End of Session', 'Error');
        return
    end

    cd(burstsfolder)
    load(burstsfilename)
    
    BD = [];
    SpXBst = [];

    for i=1:length(burst_detection_cell)
        if ~isempty(burst_detection_cell{i})
           BD = [BD; burst_detection_cell{i}(1:end-1,4)*1e3];     % Burst Duration[msec]  
           SpXBst = [SpXBst; burst_detection_cell{i}(1:end-1,3)]; % Number of spikes in burst
        end
    end
    clear burst_detection_cell
    
    % Totale
    %BD
    max_len = size(BD_Sponge_18_all);
    len = length(BD);
    if len>max_len(2)
       BD_Sponge_18_all=[BD_Sponge_18_all, NaN(max_len(1), len-max_len(2))];
    elseif len < max_len(2)
        BD = [BD; NaN(max_len(2)-len, 1)];
    end
    BD_Sponge_18_all = [BD_Sponge_18_all; BD'];
    
    %SpXBst
    max_len = size(SpXBst_Sponge_18_all);
    len = length(SpXBst);
    if len>max_len(2)
        SpXBst_Sponge_18_all=[SpXBst_Sponge_18_all, NaN(max_len(1), len-max_len(2))];
    elseif len < max_len(2)
        SpXBst = [SpXBst; NaN(max_len(2)-len, 1)];
    end
    SpXBst_Sponge_18_all = [SpXBst_Sponge_18_all; SpXBst'];
    
    % per continuare
    disp(count)
    answer = inputdlg('Enter 1 to add other matrix, 0 to go on:', 'Continue?', [1 50]);
    continua = str2num(answer{1});
    if continua == 0 
        disp('--------------')
        break
    end
end


%% Offline saving 
cd (end_folder)
endfolder=pwd;


dataname = 'BDmatrix_Sponge_DIV18_All.mat';
save(dataname, 'BD_Sponge_18_all')
clear dataname

dataname = 'SpXBstmatrix_Sponge_DIV18_All.mat';
save(dataname, 'SpXBst_Sponge_18_all')
clear dataname


disp('EndOfProcessing')
close all