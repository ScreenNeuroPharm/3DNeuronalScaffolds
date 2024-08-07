%% Script for the extraction of IBI distributions %% 
% attenzione non da worning su nomi

%% Set up iniziale
% nbins=100;
clear
close all

binwidth = 0.1;
IBI_Sponge_18_all = [];   %da cambiare manualmente per ora per ogni configurazione (seleziona tutti e modifica)


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
    [start_folder]= selectfolder('Select the IBIdistribution folder for the experiment you wish to include');
    if strcmp(num2str(start_folder),'0')
        errordlg('Selection Failed - End of Session', 'Error');
        return
    end
    cd(start_folder)
    
    load('IBIvector.mat')

    % Totale
    IBI_Sponge_18_all = [IBI_Sponge_18_all; ibi_hist];
    
%     max_len = size(Ampl_Sponge_18_all);
%     amplitudes = amplitudes(:);
%     len = length(amplitudes);
%     if len>max_len(2)
%        Ampl_Sponge_18_all=[Ampl_Sponge_18_all, NaN(max_len(1), len-max_len(2))];
%     elseif len < max_len(2)
%         amplitudes = [amplitudes; NaN(max_len(2)-len, 1)];
%     end
%     Ampl_Sponge_18_all = [Ampl_Sponge_18_all; amplitudes'];

    
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
fig1=figure(1);
h1=histogram(ibi_hist, 'Normalization', 'count');
h1.BinWidth = binwidth;

fig2=figure(2);
h2=histogram(IBI_Sponge_18_all, 'Normalization', 'cdf');
h2.BinWidth = binwidth;

fig3=figure(3);
h3=histogram(IBI_Sponge_18_all, 'Normalization', 'probability');
h3.BinWidth = binwidth;


%% Offline saving 
cd (end_folder)
endfolder=pwd;

figname='IBIdistribution_Sponge_DIV18_All';
savefig(fig1, [figname, '.fig'])
saveas(fig1,[figname, '.png'])
clear figname

% fig1 = openfig('AmplitudeDistribution_All.fig');
% h1 = findobj(fig1,'type','histogram');

dataname = 'IBIdistribution_Sponge_DIV18_All.mat';
save(dataname, 'h1')

dataname = 'IBIvector_Sponge_DIV18_All.mat';
save(dataname, 'IBI_Sponge_18_all')
clear dataname


disp('EndOfProcessing')
close all