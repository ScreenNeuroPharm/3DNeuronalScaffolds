%% Script for the extraction of the amplitude histograms %% 
% no worning on names

%% Set up 
% nbins=100;
clear
close all

binwidth = 1;
Ampl_ECM_18_all = [];   % manual setting (select all and modify)
Ampl_ECM_18_el = [];    % manual setting

[end_folder]= selectfolder('Select the result folder');
if strcmp(num2str(end_folder),'0')
    errordlg('Selection Failed - End of Session', 'Error');
    return
end

%% Data Loading (manual)
continua = 1;
count = 0;

while continua
    count = count+1;
    [start_folder]= selectfolder('Select the AmplitudeAnhalysis folder for the experiment you wish to include');
    if strcmp(num2str(start_folder),'0')
        errordlg('Selection Failed - End of Session', 'Error');
        return
    end
    cd(start_folder)
    
    load('AmplitudeMatrix_All.mat')
    load('AmplitudeMatrix_MeanEl.mat')
    % Totale
    max_len = size(Ampl_ECM_18_all);
    amplitudes = amplitudes(:);
    len = length(amplitudes);
    if len>max_len(2)
       Ampl_ECM_18_all=[Ampl_ECM_18_all, NaN(max_len(1), len-max_len(2))];
    elseif len < max_len(2)
        amplitudes = [amplitudes; NaN(max_len(2)-len, 1)];
    end
    Ampl_ECM_18_all = [Ampl_ECM_18_all; amplitudes'];

    % per elettrodo
    tmp = [str2double(ampl_table(:,2))' NaN(1, 60-length(str2double(ampl_table(:,2))))];
    Ampl_ECM_18_el = [Ampl_ECM_18_el; tmp];
    
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

% Histogram and values with all the amplitudes for each electrode
fig1=figure();
% h=histogram(amplitudes, nbins);
h1=histogram(Ampl_ECM_18_all, 'BinMethod','integers');
h1.BinWidth = binwidth;
mean_ampl_all=mean(Ampl_ECM_18_all,'all', 'omitnan');
std_ampl_all=std(Ampl_ECM_18_all(:), 'omitnan');
fig1_norm=figure();
bar(h1.BinEdges(1:end-1), h1.Values/max(h1.Values));
Bin_Values_norm = [h1.BinEdges(1:end-1)', (h1.Values/max(h1.Values))'];

% Histogram and values considering the mean value for each electrode
fig2=figure();
h2=histogram(Ampl_ECM_18_el);
h2.BinWidth = binwidth/2;
mean_ampl_el=mean(Ampl_ECM_18_el,'omitnan');
std_ampl_el=std(Ampl_ECM_18_el, 'omitnan');


%% Offline saving 
cd (end_folder)


% ALL
savefig(fig1, 'AmplitudeDistribution_ECM_DIV18_All.fig')
saveas(fig1,'AmplitudeDistribution_ECM_DIV18_All.png')
save('AmplitudeDistribution_ECM_DIV18_All.mat', 'h1')
% fig1 = openfig('AmplitudeDistribution_All.fig');
% h1 = findobj(fig1,'type','histogram');
save('AmplitudeMatrix_ECM_DIV18_All.mat', 'Ampl_ECM_18_all')
save('MeanAmplitude_ECM_DIV18_All.mat', 'mean_ampl_all', 'std_ampl_all')


savefig(fig1_norm, 'AmplitudeDistribution_ECM_DIV18_All_norm.fig')
saveas(fig1_norm,'AmplitudeDistribution_ECM_DIV18_All_norm.png')
save('AmplitudeDistribution_ECM_DIV18_All_norm.mat', 'Bin_Values_norm')



% PER ELETTRODO
savefig(fig2, 'AmplitudeDistribution_ECM_DIV18_MeanEl.fig')
saveas(fig2,'AmplitudeDistribution_ECM_DIV18_MeanEl.png')
save('AmplitudeDistribution_ECM_DIV18_MeanEl.mat', 'h2')
% fig2 = openfig('AmplitudeDistribution_MeanEl.fig');
% h2 = findobj(fig2,'type','histogram');
save('AmplitudeMatrix_ECM_DIV18_MeanEl.mat', 'Ampl_ECM_18_el')
save('MeanAmplitude_ECM_DIV18_MeanEl.mat', 'mean_ampl_el', 'std_ampl_el')


disp('EndOfProcessing')
close all