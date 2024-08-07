 % Class analysis of the bursting parameters

clear 
close all
clc

font_name = 'Arial'; % Specify the font name
font_size = 8;      % Specify the font size

rng(2)

do_plots=0;
do_frequency=0;
do_kmeans_among=0;
do_kmeans_within=0;
do_svm=1;

%% Data load (brutto e manuale)
try 
    load('BDmatrix_Beads_DIV18_All.mat')
    load('BDmatrix_ECM_DIV18_All.mat')
    load('BDmatrix_Geltrex_DIV18_All.mat')
    load('BDmatrix_Sponge_DIV18_All.mat')
    
    load('SpXBstmatrix_Beads_DIV18_All.mat')
    load('SpXBstmatrix_ECM_DIV18_All.mat')
    load('SpXBstmatrix_Geltrex_DIV18_All.mat')
    load('SpXBstmatrix_Sponge_DIV18_All.mat')

    start_folder = pwd;
catch
    fprintf('The folder does not contain the data.\n');
end

%% Data cleaning and manipulation

data0=[BD_Sponge_18_all(:), SpXBst_Sponge_18_all(:)];
data0(isnan(data0(:,1)),:)=[];
data0(data0(:,1)>10e3, :)=[];

data1=[BD_ECM_18_all(:), SpXBst_ECM_18_all(:)];
data1(isnan(data1(:,1)),:)=[];
data1(data1(:,1)>10e3, :)=[];

data2=[BD_Geltrex_18_all(:),SpXBst_Geltrex_18_all(:)];
data2(isnan(data2(:,1)),:)=[];
data2(data2(:,1)>10e3, :)=[];

data3=[BD_Beads_18_all(:), SpXBst_Beads_18_all(:)];
data3(isnan(data3(:,1)),:)=[];
data3(data3(:,1)>10e3, :)=[];

% % No soglia
% th_bd = 'NONE';
% th_spxbst = 'NONE';
% additional_flag = '_new';

% % Soglia sul percentile 
% additional_flag = '';
% th_bd = '90perc';
% th_spxbst = '90perc';
% perc = 90;
% 
% th(1,:) = prctile(data0, perc, 1);
% th(2,:) = prctile(data1, perc, 1);
% th(3,:) = prctile(data2, perc, 1);
% th(4,:) = prctile(data3, perc, 1);
% 
% idx=((data0(:,1)<th(1,1))+(data0(:,2)<th(1,2)))>1;
% data0(idx, :)=[];
% idx=((data1(:,1)<th(2,1))+(data1(:,2)<th(2,2)))>1;
% data1(idx, :)=[];
% idx=((data2(:,1)<th(3,1))+(data2(:,2)<th(3,2)))>1;
% data2(idx, :)=[];
% idx=((data3(:,1)<th(4,1))+(data3(:,2)<th(4,2)))>1;
% data3(idx, :)=[];

% Soglia sul percentile (max o min)
additional_flag = '_99percMIN_new';
perc = 99;
th(1,:) = prctile(data0, perc, 1);
th(2,:) = prctile(data1, perc, 1);
th(3,:) = prctile(data2, perc, 1);
th(4,:) = prctile(data3, perc, 1);
th_val = min(th);
th_bd = th_val(1);
th_spxbst = th_val(2);
idx=((data0(:,1)<th_bd)+(data0(:,2)<th_spxbst))>1;
data0(idx, :)=[];
idx=((data1(:,1)<th_bd)+(data1(:,2)<th_spxbst))>1;
data1(idx, :)=[];
idx=((data2(:,1)<th_bd)+(data2(:,2)<th_spxbst))>1;
data2(idx, :)=[];
idx=((data3(:,1)<th_bd)+(data3(:,2)<th_spxbst))>1;
data3(idx, :)=[];

% % Tengo solo out nelle due dimensioni
% additional_flag = '_OR';
% th_bd = 'outlier';
% th_spxbst = 'outlier';
% idx=isoutlier(data0(:,1))+isoutlier(data0(:,2))>0;
% data0=data0(idx, :);
% idx=isoutlier(data1(:,1))+isoutlier(data1(:,2))>0;
% data1=data1(idx, :);
% idx=isoutlier(data2(:,1))+isoutlier(data2(:,2))>0;
% data2=data2(idx, :);
% idx=isoutlier(data3(:,1))+isoutlier(data3(:,2))>0;
% data3=data3(idx, :);

% % Tengo solo out nelle due dimensioni
% additional_flag = '_AND';
% th_bd = 'outlier';
% th_spxbst = 'outlier';
% idx=isoutlier(data0(:,1))+isoutlier(data0(:,2))>1;
% data0=data0(idx, :);
% idx=isoutlier(data1(:,1))+isoutlier(data1(:,2))>1;
% data1=data1(idx, :);
% idx=isoutlier(data2(:,1))+isoutlier(data2(:,2))>1;
% data2=data2(idx, :);
% idx=isoutlier(data3(:,1))+isoutlier(data3(:,2))>1;
% data3=data3(idx, :);

% % Tengo solo out di BD
% additional_flag = '';
% th_bd = 'outlier';
% th_spxbst = '';
% data0=data0(isoutlier(data0(:,1)), :);
% data1=data1(isoutlier(data1(:,1)), :);
% data2=data2(isoutlier(data2(:,1)), :);
% data3=data3(isoutlier(data3(:,1)), :);

% % Soglia su BD e spxbst impostata
% additional_flag = '';
% th_bd = 800;
% th_spxbst = 100;
% idx=((data0(:,1)<th_bd)+(data0(:,2)<th_spxbst))>1;
% data0(idx, :)=[];
% idx=((data1(:,1)<th_bd)+(data1(:,2)<th_spxbst))>1;
% data1(idx, :)=[];
% idx=((data2(:,1)<th_bd)+(data2(:,2)<th_spxbst))>1;
% data2(idx, :)=[];
% idx=((data3(:,1)<th_bd)+(data3(:,2)<th_spxbst))>1;
% data3(idx, :)=[];

% % Soglia su BD e spxbst impostata
% additional_flag = '';
% th_bd = 'adhoc';
% th_spxbst = 'adhoc';
% idx=((data0(:,1)<400)+(data0(:,2)<35))>1;
% data0(idx, :)=[];
% idx=((data1(:,1)<400)+(data1(:,2)<35))>1;
% data1(idx, :)=[];
% idx=((data2(:,1)<400)+(data2(:,2)<35))>1;
% data2(idx, :)=[];
% idx=((data3(:,1)<400)+(data3(:,2)<35))>1;
% data3(idx, :)=[];

% % Sottocampiono
% additional_flag = '_undersampling';
% th_bd = '';
% th_spxbst = '';
% len_data = length(data0);
% data0 = data0(1:10:len_data, :);
% len_data = length(data1);
% data1 = data1(1:10:len_data, :);
% len_data = length(data2);
% data2 = data2(1:10:len_data, :);
% len_data = length(data3);
% data3 = data3(1:10:len_data, :);

% % Create new matrices by eliminating rows found in other data matrices
% additional_flag = '_EliminateCommon';
% th_bd = '';
% th_spxbst = '';
% data0_n = setdiff(ceil(data0), ceil([data1; data2; data3]), 'rows', 'stable');
% data0_n = setdiff(ceil(data0_n), ceil([data1; data2; data3]+1), 'rows', 'stable');
% data0_n = setdiff(ceil(data0_n), ceil([data1; data2; data3]-1), 'rows', 'stable');
% data0_n = setdiff(ceil(data0_n), ceil([data1; data2; data3]+2), 'rows', 'stable');
% data0_n = setdiff(ceil(data0_n), ceil([data1; data2; data3]-2), 'rows', 'stable');
% data0_n = setdiff(ceil(data0_n), ceil([data1; data2; data3]+3), 'rows', 'stable');
% data0_n = setdiff(ceil(data0_n), ceil([data1; data2; data3]-3), 'rows', 'stable');
% 
% data1_n = setdiff(ceil(data1), ceil([data0; data2; data3]), 'rows', 'stable');
% data1_n = setdiff(ceil(data1_n), ceil([data0; data2; data3]+1), 'rows', 'stable');
% data1_n = setdiff(ceil(data1_n), ceil([data0; data2; data3]-1), 'rows', 'stable');
% data1_n = setdiff(ceil(data1_n), ceil([data0; data2; data3]+2), 'rows', 'stable');
% data1_n = setdiff(ceil(data1_n), ceil([data0; data2; data3]-2), 'rows', 'stable');
% data1_n = setdiff(ceil(data1_n), ceil([data0; data2; data3]+3), 'rows', 'stable');
% data1_n = setdiff(ceil(data1_n), ceil([data0; data2; data3]-3), 'rows', 'stable');
% 
% data2_n = setdiff(ceil(data2), ceil([data0; data1; data3]), 'rows', 'stable');
% data2_n = setdiff(ceil(data2_n), ceil([data0; data1; data3]+1), 'rows', 'stable');
% data2_n = setdiff(ceil(data2_n), ceil([data0; data1; data3]-1), 'rows', 'stable');
% data2_n = setdiff(ceil(data2_n), ceil([data0; data1; data3]+2), 'rows', 'stable');
% data2_n = setdiff(ceil(data2_n), ceil([data0; data1; data3]-2), 'rows', 'stable');
% data2_n = setdiff(ceil(data2_n), ceil([data0; data1; data3]+3), 'rows', 'stable');
% data2_n = setdiff(ceil(data2_n), ceil([data0; data1; data3]-3), 'rows', 'stable');
% 
% data3_n = setdiff(ceil(data3), ceil([data0; data1; data2]), 'rows', 'stable');
% data3_n = setdiff(ceil(data3_n), ceil([data0; data1; data2]+1), 'rows', 'stable');
% data3_n = setdiff(ceil(data3_n), ceil([data0; data1; data2]-1), 'rows', 'stable');
% data3_n = setdiff(ceil(data3_n), ceil([data0; data1; data2]+2), 'rows', 'stable');
% data3_n = setdiff(ceil(data3_n), ceil([data0; data1; data2]-2), 'rows', 'stable');
% data3_n = setdiff(ceil(data3_n), ceil([data0; data1; data2]+3), 'rows', 'stable');
% data3_n = setdiff(ceil(data3_n), ceil([data0; data1; data2]-3), 'rows', 'stable');
% 
% data0 = data0_n;
% data1 = data1_n;
% data2 = data2_n;
% data3 = data3_n;

observations_cell = {data0; data1; data2; data3};
observations = cell2mat(observations_cell);
num_classes = length(observations_cell);
classes = 1:num_classes;
colors = [1.00,0.75,0.00; ...
          0.57,0.82,0.31;...
          0.00,0.69,0.94;...
          0.74,0.56,0.87];

[numSamplesPerClass,numVar] = cellfun(@size,observations_cell);
trueLabels = repelem(classes, numSamplesPerClass)'; 

%% Output Folder
endfolder = [start_folder, '\Analysis'];

if exist(endfolder, 'dir')
    fprintf('The end folder already exists.\n');
else
    try
        mkdir(endfolder);
    catch
        fprintf('Failed to create the folder.\n');
    end
end

threshold_folder = strcat(endfolder, '\thBD_', string(th_bd), ...
                                    '_thSPxBst_', string(th_spxbst), ...
                                    string(additional_flag));

% threshold_folder = strcat(endfolder, '\thBD_', th_bd, '_thSPxBst_', th_spxbst);
if exist(threshold_folder, 'dir')
    fprintf('The end folder already exists.\n');
else
    try
        mkdir(threshold_folder);
    catch
        fprintf('Failed to create the folder.\n');
    end
end

%% Plots
if do_plots
    close all

    % Creation of the specific folder
    specific_analysis = strcat(threshold_folder, '\DataPlots');
    if exist(specific_analysis, 'dir')
        fprintf('The end folder already exists.\n');
    else
        try
            mkdir(specific_analysis);
        catch
            fprintf('Failed to create the folder.\n');
        end
    end
    cd(specific_analysis)
    
    % Figures of the data
    
    %
    fig1 = figure();
    ax = gca;
    hold on
    plot(BD_Sponge_18_all(:), SpXBst_Sponge_18_all(:), '.', 'Color', colors(1, :))
    plot(BD_ECM_18_all(:), SpXBst_ECM_18_all(:),'.', 'Color', colors(2, :))
    plot(BD_Geltrex_18_all(:),SpXBst_Geltrex_18_all(:), '.', 'Color', colors(3, :))
    plot(BD_Beads_18_all(:), SpXBst_Beads_18_all(:), '.', 'Color', 	colors(4, :))
    % plot(data0(:,1), data0(:,2), '.', 'Color', colors(1, :))
    % plot(data1(:,1), data1(:,2),'.', 'Color', colors(2, :))
    % plot(data2(:,1), data2(:,2), '.', 'Color', colors(3, :))
    % plot(data3(:,1), data3(:,2), '.', 'Color', colors(4, :))
    xlim([0, 5000])
    ylim([0, 700])
    xlabel('BD (ms)')
    ylabel('SpikeXBurst')
    ax.TickDir = 'out';
    set(ax, 'FontSize', font_size);
    set(ax, 'FontName', font_name);
    box off  
    
    %
    fig2 = figure();
    ax = gca;
    hold on
    plot(BD_Sponge_18_all(:), SpXBst_Sponge_18_all(:), '.', 'Color', colors(1, :))
    % plot(data0(:,1),data0(:,2), 'x', 'Color', 'r')
    xlim([0, 5000])
    ylim([0, 700])
    xlabel('BD (ms)')
    ylabel('SpikeXBurst')
    ax.TickDir = 'out';
    set(ax, 'FontSize', font_size);
    set(ax, 'FontName', font_name);
    box off 
    
    %
    fig3 = figure();
    ax = gca;
    hold on
    plot(BD_ECM_18_all(:), SpXBst_ECM_18_all(:),'.', 'Color', colors(2, :))
    % plot(data1(:,1),data1(:,2), 'x', 'Color', 'r')
    xlim([0, 5000])
    ylim([0, 700])
    xlabel('BD (ms)')
    ylabel('SpikeXBurst')
    ax.TickDir = 'out';
    set(ax, 'FontSize', font_size);
    set(ax, 'FontName', font_name);
    box off 
    
    %
    fig4 = figure();
    ax = gca;
    hold on
    plot(BD_Geltrex_18_all(:),SpXBst_Geltrex_18_all(:), '.', 'Color', colors(3, :))
    % plot(data2(:,1),data2(:,2), 'x', 'Color', 'r')
    xlim([0, 5000])
    ylim([0, 700])
    xlabel('BD (ms)')
    ylabel('SpikeXBurst')
    ax.TickDir = 'out';
    set(ax, 'FontSize', font_size);
    set(ax, 'FontName', font_name);
    box off 
    
    %
    fig5 = figure();
    ax = gca;
    hold on
    plot(BD_Beads_18_all(:), SpXBst_Beads_18_all(:), '.', 'Color', 	colors(4, :))
    % plot(data3(:,1),data3(:,2), 'x', 'Color', 'r')
    xlim([0, 5000])
    ylim([0, 700])
    xlabel('BD (ms)')
    ylabel('SpikeXBurst')
    ax.TickDir = 'out';
    set(ax, 'FontSize', font_size);
    set(ax, 'FontName', font_name);
    box off 
    
    % saving
    figname='DataPlots';
    savefig(fig1, [figname, '.fig'])
    saveas(fig1,[figname, '.png'])
    clear figname
    
    figname='DataPlot_Sponge_cut';
    savefig(fig2, [figname, '.fig'])
    saveas(fig2,[figname, '.png'])
    clear figname
    
    figname='DataPlot_ECM_cut';
    savefig(fig3, [figname, '.fig'])
    saveas(fig3,[figname, '.png'])
    clear figname
    
    figname='DataPlot_Geltrex_cut';
    savefig(fig4, [figname, '.fig'])
    saveas(fig4,[figname, '.png'])
    clear figname
    
    figname='DataPlot_Beads_cut';
    savefig(fig5, [figname, '.fig'])
    saveas(fig5,[figname, '.png'])
    clear figname
    
    % clear fig1 fig2 fig3 fig4 fig5
end


%%  Intra-Burst Frequency 
if do_frequency
    close all

    freq0 = data0(:,2)./(data0(:,1)*1e-3);
    freq1 = data1(:,2)./(data1(:,1)*1e-3);
    freq2 = data2(:,2)./(data2(:,1)*1e-3);
    freq3 = data3(:,2)./(data3(:,1)*1e-3);
    
    len_max = max([length(freq0), length(freq1), length(freq2), length(freq3)]);
    freq = [[freq0; NaN(len_max-length(freq0), 1)], [freq1; NaN(len_max-length(freq1), 1)], [freq2; NaN(len_max-length(freq2), 1)], [freq3; NaN(len_max-length(freq3), 1)]];
    boxplot(freq)
    
    cd(endfolder)
    T=table(freq(:,1), freq(:,2), freq(:,3), freq(:,4));
    T.Properties.VariableNames={'Sponge', 'ECM', 'Geltrex', 'Beads'};
    
    filename = 'IntraBurstFrequency.xlsx';
    sheetname=strcat('thBD_', string(th_bd), '_thSPxBst_', string(th_spxbst), string(additional_flag));
    writetable(T,filename,'Sheet',sheetname)

    clear filename sheetname
end

%%  Linear Regression
% 
% for cl = 1:num_classes 
%     n = length(observations_cell{cl}(:,1));
%     d = 2;
%     Y = (observations_cell{cl});
% 
%     X = cell(n,1);
%     for i = 1:n
%         X{i} = [eye(d) eye(d)];
%     end
%     [beta,Sigma] = mvregress(X,Y,'algorithm','cwls');
% 
%     B = [beta(1:d)';beta(d+1:end)'];
%     xx = linspace(.5,3.5)';
%     fits = [ones(size(xx)),xx]*B;
% 
%     figure;
%     h = plot(xx,fits,'-');
% 
% end

%% kmeans tra classi
if do_kmeans_among
    close all

    % Creation of the specific folder
    specific_analysis = strcat(threshold_folder, '\kmeans_among');
    if exist(specific_analysis, 'dir')
        fprintf('The end folder already exists.\n');
    else
        try
            mkdir(specific_analysis);
        catch
            fprintf('Failed to create the folder.\n');
        end
    end
    cd(specific_analysis)
    
    % computation
    dosilhouette = 0;
    Knum=4;
    
    % kmeans parameteres
    maxiter = 100;
    distance_k = 'cosine';
    
    if dosilhouette
        % silhouette 
        flag_sil='withSilhouette';
        maxK = 10;
        silhouetteValues = zeros(1, maxK);
        for k = 2:maxK
            % Perform k-means clustering
            idx = kmeans(observations, k, 'MaxIter',maxiter,'Distance',distance_k);

            % Compute silhouette values
            silhouetteValues(k) = sum(silhouette(observations, idx), "all");
        end
        
        % Find the optimal number of clusters
        optimalK = find(silhouetteValues == max(silhouetteValues));
    else
        flag_sil='fixedK';
        optimalK=Knum;
    end 
    
    % Perform k-means clustering 
    optimalIdx = kmeans(observations, optimalK, 'MaxIter',maxiter,'Distance',distance_k);
    
    fig1 = figure();
    ax = gca;
    hold on
    % colors = lines(max(optimalIdx));      % DA CONTROLLARE
    scatter(observations(:, 1), observations(:, 2), 5, colors(optimalIdx, :), 'filled');
    title('K-means Clustering', flag_sil);
    xlim([0, 5000])
    ylim([0, 700])
    xlabel('BD (ms)');
    ylabel('SpikeXBurst');
    ax.TickDir = 'out';
    set(ax, 'FontSize', font_size);
    set(ax, 'FontName', font_name);
    box off
    
    fig2 = figure();
    ax = gca;
    hold on
    % colors = lines(max(trueLabels));       % DA CONTROLLARE
    scatter(observations(:, 1), observations(:, 2), 5, colors(trueLabels, :), 'filled');
    title('Actual classes');
    xlim([0, 5000])
    ylim([0, 700])
    xlabel('BD (ms)');
    ylabel('SpikeXBurst');
    ax.TickDir = 'out';
    set(ax, 'FontSize', font_size);
    set(ax, 'FontName', font_name);
    box off
    
    
    % saving 
    figname='kmeans_among';
    savefig(fig1, [figname, '_',flag_sil, '.fig'])
    saveas(fig1, [figname, '_',flag_sil, '.png'])
    clear figname
    
    figname='actuallabels_among';
    savefig(fig2, [figname, '.fig'])
    saveas(fig2,[figname, '.png'])
    clear figname
    
    
    dataname = ['predictedLabels_',flag_sil, '.mat'];
    save(dataname, 'optimalIdx')
    clear dataname
    
    dataname = ['k_',flag_sil, '.mat'];
    save(dataname, 'optimalK')
    clear dataname 
end


%% kmeans intraclasse
if do_kmeans_within
    close all
    
    % Creation of the specific folder
    specific_analysis = strcat(threshold_folder, '\kmeans_within');
    if exist(specific_analysis, 'dir')
        fprintf('The end folder already exists.\n');
    else
        try
            mkdir(specific_analysis);
        catch
            fprintf('Failed to create the folder.\n');
        end
    end
    cd(specific_analysis)
    
    % computation
    dosilhouette = 1;
    Knum=4;
    
    % kmeans parameteres
    maxiter = 500;
    distance_k = 'cosine';
    
    optimalK=NaN(num_classes,1);
    optimalIdx=cell(num_classes,1);
    
    rsquareds = cell(num_classes,1);
    coefficients_linreg = cell(num_classes,1);

    for n = 1:num_classes 
        if dosilhouette
            % silhouette
            flag_sil='withSilhouette';
            maxK = 4;
            silhouetteValues = zeros(1, maxK);
            for k = 1:maxK
                % Perform k-means clustering
                idx = kmeans(observations_cell{n}, k, 'MaxIter',maxiter, 'Distance',distance_k);
            
                % Compute silhouette values
                silhouetteValues(k) = sum(silhouette(observations_cell{n}, idx), "all");
            end
            
            % Find the optimal number of clusters
            optimalK(n) = find(silhouetteValues == max(silhouetteValues));
        
        else
            flag_sil='fixedK';
            optimalK(n)=Knum;
        end
        
        % Perform k-means clustering 
        optimalIdx{n} = kmeans(observations_cell{n}, optimalK(n), 'MaxIter',maxiter,  'Distance',distance_k);
        
        fig1 = figure();
        ax = gca;
        hold on
        colors = lines(max(optimalIdx{n}));
        scatter(observations_cell{n}(:, 1), observations_cell{n}(:, 2), 5, colors(optimalIdx{n}, :), 'filled');
        title('K-means Clustering ' + string(n), flag_sil);
        xlim([0, 5000])
        ylim([0, 700])
        xlabel('BD (ms)');
        ylabel('SpikeXBurst');
        ax.TickDir = 'out';
        set(ax, 'FontSize', font_size);
        set(ax, 'FontName', font_name);
        box off

        % mdl = fitlm(observations_cell{n},optimalIdx{n});
        % anova(mdl,'summary')
        % hold on 
        % plot(mdl)

        % Perform linear regression (fit a line of degree 1)
        val_class =  unique(optimalIdx{n});
        rsquare = [];
        for ii = 1:length(val_class)
            x = observations_cell{n}(optimalIdx{n}==val_class(ii), 1); 
            y = observations_cell{n}(optimalIdx{n}==val_class(ii), 2);
            mdl = fitlm(x, y, 'linear');

            rsquare = [rsquare; mdl.Rsquared.Adjusted];
            coefficients = flip(mdl.Coefficients.Estimate);
            % coefficients = polyfit(x, y, 1);

            % Create a fitted line using the obtained coefficients
            fitLine = polyval(coefficients, x);
            hold on
            plot(x, fitLine, 'r-', 'DisplayName', 'Fitted Line');

            coefficients_linreg{n} = [coefficients_linreg{n}; coefficients];
        end 
        rsquareds{n} = rsquare; 
        
        % saving 
        figname=['kmeans_within', char(string(n))];
        savefig(fig1, [figname, '_',flag_sil, '.fig'])
        saveas(fig1, [figname, '_',flag_sil, '.png'])
        clear figname
    end 
    
    dataname = ['predictedLabels_',flag_sil, '.mat'];
    save(dataname, 'optimalIdx')
    clear dataname
    
    dataname = ['k_',flag_sil, '.mat'];
    save(dataname, 'optimalK')
    clear dataname

    dataname = ['rsquared_',flag_sil, '.mat'];
    save(dataname, 'rsquareds')
    clear dataname

    dataname = ['CoefficientsLinReg_',flag_sil, '.mat'];
    save(dataname, 'coefficients_linreg')
    clear dataname
end

%% kmedoids tra classi
% 
% Knum=4;
% distance_k = 'cosine';
% algo_k = 'pam';
% 
% 
% % Perform k-medoids clustering 
% optimalIdx = kmedoids(observations, Knum, 'Distance',distance_k, 'Algorithm', algo_k);
% 
% figure;
% colors = lines(max(optimalIdx));
% scatter(observations(:, 1), observations(:, 2), 5, colors(optimalIdx, :), 'filled');
% title('K-medoids Clustering');
% xlabel('BD');
% ylabel('SpikeXBurst');
% 
% figure;
% colors = lines(max(trueLabels));
% scatter(observations(:, 1), observations(:, 2), 5, colors(trueLabels, :), 'filled');
% title('Actual classes');
% xlabel('BD');
% ylabel('SpikeXBurst');
% 
% dosilhouette = 1;
%

%% kmedoids interclasse
% 
% Knum=4;
% maxiter = 100;
% distance_k = 'cosine';
% algo_k = 'pam';
% 
% for n = 1:num_classes 
%     Knum = 4;
% 
%     % Perform k-means clustering 
%     optimalIdx = kmedoids(observations, Knum, 'Distance',distance_k, 'Algorithm', algo_k);
% 
%     figure;
%     colors = lines(max(optimalIdx));
%     scatter(observations_cell{n}(:, 1), observations_cell{n}(:, 2), 5, colors(optimalIdx, :), 'filled');
%     title('K-medoids Clustering ' + string(n));
%     xlabel('BD');
%     ylabel('SpikeXBurst');
% end 

%% Classification (SVM)
if do_svm
    close all

    % Creation of the specific folder
    specific_analysis = strcat(threshold_folder, '\SVMclassification');
    if exist(specific_analysis, 'dir')
        fprintf('The end folder already exists.\n');
    else
        try
            mkdir(specific_analysis);
        catch
            fprintf('Failed to create the folder.\n');
        end
    end
    cd(specific_analysis)
    
    predictedLabels = cell(num_classes);
    actualLabels = cell(num_classes);
    accuracy = NaN(num_classes);
    scores = cell(num_classes);
    SV = cell(num_classes);
    
    for i = 1:num_classes-1
        for j = i+1:num_classes

            % Compute the SVM model
            Y = repelem([i,j], [numSamplesPerClass(i), numSamplesPerClass(j)])'; 
            % data = {observations_cell{i}; observations_cell{j}};
            % [pl, sc, acc, vec]  = SVMmodel(data, [i,j]);
            % 
            % % Store the values in matrix
            % predictedLabels{i, j} = pl;
            actualLabels{i, j} = Y;
            % accuracy(i, j) = acc;
            % scores{i, j} = sc; 
            % SV{i, j} = vec;
            % 
            % % Confusion matrix
            % true_val=double([(Y==i)';(Y==j)']);
            % predicted_val=double([(predictedLabels{i,j}==i)';(predictedLabels{i,j}==j)']);
            % 
            % fig1 = figure();
            % ax = gca;
            % hold on
            % h=plotconfusion(true_val, predicted_val);
            % set(gca,'xticklabel',{string(i) string(j)  ''})
            % xlabel('TrueClass');
            % set(gca,'yticklabel',{string(i) string(j)  ''})
            % ylabel('PredictedClass');
            % hold off
            % 
            % % ROC
            % rocObj = rocmetrics(Y,scores{i,j}, [i,j]);
            % % rocObj.AUC
            % fig2=figure();
            % plot(rocObj)
            % 
            % % Save fig
            % figname=strcat('ConfusionMatrix_', string(i), '&', string(j));
            % savefig(fig1, figname)
            % saveas(fig1, strcat(figname, '.png'))
            % clear figname
            % 
            % figname=strcat('ROC_',string(i), '&', string(j));
            % savefig(fig2, figname)
            % saveas(fig2, strcat(figname, '.png'))
            % clear figname
            % 
            % clear fig1 fig2
        end
    end
    
    % dataname = 'predictedLabels.mat';
    % save(dataname, 'predictedLabels')
    % clear dataname

    dataname = 'actualLabels.mat';
    save(dataname, 'actualLabels')
    clear dataname
    
    % dataname = 'accuracy.mat';
    % save(dataname, 'accuracy')
    % clear dataname
    % 
    % dataname = 'scores.mat';
    % save(dataname, 'scores')
    % clear dataname
    % 
    % dataname = 'SV.mat';
    % save(dataname, 'SV')
    % clear dataname
end 


%% 
disp('EndOfProcessing')
close all