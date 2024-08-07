%% Amplitude distribution

%% cleaning
clear
close all

%% input
[start_folder]= selectfolder('Select the source folder that contains the PeakDetectionMAT files');
if strcmp(num2str(start_folder),'0')
    errordlg('Selection Failed - End of Session', 'Error');
    return
end
cd(start_folder)


%% amplitude computation
% nbins=100;
binwidth = 1;
first=3;
name_dir=dir;               % Present directories - name_dir is a struct
num_dir=length (name_dir);  % Number of present directories (also "." and "..")
nphases=num_dir-first+1;

if nphases >1
    disp('Controlla, ciclo non implementato');
end

for i = first:num_dir     % FOR cycle over all the directories
    current_dir = name_dir(i).name;   % i-th directory - i-th experimental phase
    phasename=current_dir;
    
    cd (current_dir);                   % enter the i-th directory
    current_dir=pwd;
    content=dir;                        % current PeakDetectionMAT files folder
    num_files=length(content);          % number of present PeakDetection files
    amplitudes=[];                      % rows=active electrodes | cols=amplitdes recorded from electrode
    ampl_table=string([]);              % rows=active electrodes | col_1 = el name ; col_2 = mean amplidude of the electrode ; col_3= std of amplidude of the electrode

    for k= first:num_files  % FOR cycle over all the PeakDetection files
        filename = content(k).name;
        load (filename);                % peak_train and artifact are loaded
        el= filename(end-6:end-4);      % current electrode [double]
        
        pt=peak_train(peak_train>0);    % only non-zero values are considered
        len=length(pt);
        if len>0                        % if the elecrode has activity
            % zero padding and saving variables
            max_len=size(amplitudes);
            if len>max_len(2)
                amplitudes=[amplitudes, NaN(max_len(1), len-max_len(2))];
            elseif len < max_len(2)
                pt=[pt; NaN(max_len(2)-len, 1)];
            end
            amplitudes=[amplitudes; pt'];
            ampl_table=[ampl_table; el, string(full(mean(pt,'omitnan'))),string(full(std(pt,'omitnan')))];
        end
    end
    % Histogram and values with all the amplitudes for each electrode
    fig1=figure(1);
    % h=histogram(amplitudes, nbins);
    h1=histogram(amplitudes);
    h1.BinWidth = binwidth;
    mean_ampl_all=mean(amplitudes,'all', 'omitnan');
    std_ampl_all=std(amplitudes(:), 'omitnan');
    
    % Histogram and values considering the mean value for each electrode
    fig2=figure(2);
    h2=histogram(str2double(ampl_table(:,2)));
    h2.BinWidth = binwidth/2;
    mean_ampl_el=mean(str2double(ampl_table(:,2)),'omitnan');
    std_ampl_el=std(str2double(ampl_table(:,2)), 'omitnan');
end

%% output
[exp_num]=find_expnum(start_folder, '_PeakDetection');
AmplitudeAnalysis=strcat(exp_num, '_AmplitudeAnalysis');
cd(start_folder) 
cd ..
enddir= dir;
numenddir= length(dir);

if isempty(strmatch(AmplitudeAnalysis, strvcat(enddir(1:numenddir).name),'exact'))
    mkdir(AmplitudeAnalysis) % Make a new directory only if it doesn't exist
end
cd (AmplitudeAnalysis)
AmplitudeAnalysis=pwd;

% All
savefig(fig1, 'AmplitudeDistribution_All.fig')
saveas(fig1,'AmplitudeDistribution_All.png')
% fig1 = openfig('AmplitudeDistribution_All.fig');
% h1 = findobj(fig1,'type','histogram');
save('AmplitudeDistribution_All.mat', 'h1')
save('AmplitudeMatrix_All.mat', 'amplitudes')
save('MeanAmplitude_All.mat', 'mean_ampl_all', 'std_ampl_all')

% Per elettrodo
savefig(fig2, 'AmplitudeDistribution_MeanEl.fig')
saveas(fig2,'AmplitudeDistribution_MeanEl.png')
save('AmplitudeDistribution_MeanEl.mat', 'h2')
% fig2 = openfig('AmplitudeDistribution_MeanEl.fig');
% h2 = findobj(fig2,'type','histogram');
save('AmplitudeMatrix_MeanEl.mat', 'ampl_table')
save('MeanAmplitude_MeanEl.mat', 'mean_ampl_el', 'std_ampl_el')

%% pulizia
cd(start_folder)
cd ..
clear
close all
