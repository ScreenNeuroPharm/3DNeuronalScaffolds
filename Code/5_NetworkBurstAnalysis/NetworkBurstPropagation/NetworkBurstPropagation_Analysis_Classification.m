%% Class analysis of the bursting parameters

clear 
close all
clc

font_name = 'Arial'; % Specify the font name
font_size = 8;      % Specify the font size

az_el = [-37.50, 30];

rng(2)

do_plots=0;
do_kmeans_among=0;
do_svm=1;

%% Data load (brutto e manuale)
try 
    load('Propagation_ECM_DIV18_All.mat')
    load('Propagation_Beads_DIV18_All_new.mat')
    load('Propagation_Geltrex_DIV18_All.mat')
    load('Propagation_Sponge_DIV18_All.mat')
    start_folder = pwd;
catch
    fprintf('The folder does not contain the data.\n');
end


%% Data cleaning and manipulation

data0=[Delay_max_Sponge_18_all(:), Dist_max_Sponge_18_all(:), Involved_Sponge_18_all(:)];
data0(isnan(data0(:,1)),:)=[];
data0(data0(:,1)>120, :)=[];

data1=[Delay_max_ECM_18_all(:), Dist_max_ECM_18_all(:), Involved_ECM_18_all(:)];
data1(isnan(data1(:,1)),:)=[];
data1(data1(:,1)>120, :)=[];

data2=[Delay_max_Geltrex_18_all(:), Dist_max_Geltrex_18_all(:), Involved_Geltrex_18_all(:)];
data2(isnan(data2(:,1)),:)=[];
data2(data2(:,1)>120, :)=[];

data3=[Delay_max_Beads_18_all(:), Dist_max_Beads_18_all(:), Involved_Beads_18_all(:)];
data3(isnan(data3(:,1)),:)=[];
data3(data3(:,1)>120, :)=[];

% No soglia
th_dist = 'NONE';
th_lat = 'NONE';
th_elec = 'NONE';
additional_flag = '';

clear Delay_max_Sponge_18_all Dist_max_Sponge_18_all Involved_Sponge_18_all
clear Delay_max_ECM_18_all Dist_max_ECM_18_all Involved_ECM_18_all
clear Delay_max_Geltrex_18_all Dist_max_Geltrex_18_all Involved_Geltrex_18_all
clear Delay_max_Beads_18_all Dist_max_Beads_18_all Involved_Beads_18_all

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

threshold_folder = strcat(endfolder, '\thDIST_', string(th_dist), ...
                                    '_thLAT_', string(th_lat), ...
                                    '_thELEC_', string(th_elec), ...
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

    fig1 = figure();
    hold on
    plot3(data0(:,1), data0(:,2), data0(:,3), '.','Color', colors(1, :))
    plot3(data1(:,1), data1(:,2), data1(:,3), '.','Color', colors(2, :))
    plot3(data2(:,1), data2(:,2), data2(:,3), '.','Color', colors(3, :))
    plot3(data3(:,1), data3(:,2), data3(:,3), '.','Color', colors(4, :))
    view(az_el)
    xlabel('Max latency');
    xlim([0, 1])
    ylabel('Max dist');
    % ylim([0, 700])
    zlabel('Percentage involved electodes');
    % zlim([0, 120])
    set(gca, 'TickDir', 'out');
    set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed
    box off 
    
    
    fig2 = figure();
    plot3(data0(:,1), data0(:,2), data0(:,3), '.', 'Color', colors(1, :))
    view(az_el)
    xlabel('Max latency');
    xlim([0, 1])
    ylabel('Max dist');
    % ylim([0, 700])
    zlabel('Percentage involved electodes');
    % zlim([0, 120])
    set(gca, 'TickDir', 'out');
    set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed
    box off 
    
    fig3 = figure();
    plot3(data1(:,1), data1(:,2), data1(:,3), '.', 'Color', colors(2, :))
    view(az_el)
    xlabel('Max latency');
    xlim([0, 1])
    ylabel('Max dist');
    % ylim([0, 700])
    zlabel('Percentage involved electodes');
    % zlim([0, 120])
    set(gca, 'TickDir', 'out');
    set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed
    box off 
    
    fig4 = figure();
    plot3(data2(:,1), data2(:,2), data2(:,3), '.', 'Color', colors(3, :))
    view(az_el)
    xlabel('Max latency');
    xlim([0, 1])
    ylabel('Max dist');
    % ylim([0, 700])
    zlabel('Percentage involved electodes');
    % zlim([0, 120])
    set(gca, 'TickDir', 'out');
    set(gca, 'TickLength', [0.02, 0.02]); % Modify as needed
    box off 
    
    fig5 = figure();
    plot3(data3(:,1), data3(:,2), data3(:,3), '.','Color', colors(4, :))
    view(az_el)
    xlabel('Max latency');
    xlim([0, 1])
    ylabel('Max dist');
    % ylim([0, 700])
    zlabel('Percentage involved electodes');
    % zlim([0, 120])
    set(gca, 'TickDir', 'out');
    set(gca, 'TickLength', [0.04, 0.04]); % Modify as needed
    box off 

    % saving
    figname='DataPlots';
    savefig(fig1, [figname, '.fig'])
    print(fig1, figname,'-dpng','-r1200')
    % saveas(fig1,[figname, '.png'])
    clear figname
    
    figname='DataPlot_Sponge';
    savefig(fig2, [figname, '.fig'])
    print(fig2, figname,'-dpng','-r1200')
    % saveas(fig2,[figname, '.png'])
    clear figname
    
    figname='DataPlot_ECM';
    savefig(fig3, [figname, '.fig'])
    print(fig3, figname,'-dpng','-r1200')
    % saveas(fig3,[figname, '.png'])
    clear figname
    
    figname='DataPlot_Geltrex';
    savefig(fig4, [figname, '.fig'])
    print(fig4, figname,'-dpng','-r1200')
    % saveas(fig4,[figname, '.png'])
    clear figname
    
    figname='DataPlot_Beads';
    savefig(fig5, [figname, '.fig'])
    print(fig5, figname,'-dpng','-r1200')
    % saveas(fig5,[figname, '.png'])
    clear figname
end


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
    % colors = lines(max(optimalIdx));
    scatter3(observations(:, 1), observations(:, 2), observations(:, 3), 5, colors(optimalIdx, :), 'filled');
    title('K-means Clustering', flag_sil);
    view(az_el)
    xlabel('Max latency');
    xlim([0, 1])
    ylabel('Max dist');
    % ylim([0, 700])
    zlabel('Percentage involved electodes');
    % zlim([0, 120])
    set(ax, 'TickDir', 'out');
    set(ax, 'TickLength', [0.04, 0.04]); % Modify as needed
    set(ax, 'FontSize', font_size);
    set(ax, 'FontName', font_name);
    box off 
    
    fig2 = figure();
    ax = gca;
    hold on
    % colors = lines(max(trueLabels));
    scatter3(observations(:, 1), observations(:, 2), observations(:, 3), 5, colors(trueLabels, :), 'filled');
    title('Actual classes');
    view(az_el)
    xlabel('Max latency');
    xlim([0, 1])
    ylabel('Max dist');
    % ylim([0, 700])
    zlabel('Percentage involved electodes');
    % zlim([0, 120])
    set(ax, 'TickDir', 'out');
    set(ax, 'TickLength', [0.04, 0.04]); % Modify as needed
    set(ax, 'FontSize', font_size);
    set(ax, 'FontName', font_name);
    box off 
    
    
    % saving 
    figname='kmeans_among';
    savefig(fig1, [figname, '_',flag_sil, '.fig'])
    print(fig1, figname,'-dpng','-r1200')
    % saveas(fig1, [figname, '_',flag_sil, '.png'])
    clear figname
    
    figname='actuallabels_among';
    savefig(fig2, [figname, '.fig'])
    print(fig2, figname,'-dpng','-r1200')
    % saveas(fig2,[figname, '.png'])
    clear figname
    
    
    dataname = ['predictedLabels_',flag_sil, '.mat'];
    save(dataname, 'optimalIdx')
    clear dataname
    
    dataname = ['k_',flag_sil, '.mat'];
    save(dataname, 'optimalK')
    clear dataname 
end


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
            data = {observations_cell{i}; observations_cell{j}};
            [pl, sc, acc, vec]  = SVMmodel(data, [i,j]);
            
            % Store the values in matrix
            predictedLabels{i, j} = pl;
            actualLabels{i, j} = Y;
            accuracy(i, j) = acc;
            scores{i, j} = sc; 
            SV{i, j} = vec;
    
            % Confusion matrix
            true_val=double([(Y==i)';(Y==j)']);
            predicted_val=double([(predictedLabels{i,j}==i)';(predictedLabels{i,j}==j)']);

            fig1 = figure();
            ax = gca;
            hold on
            h=plotconfusion(true_val, predicted_val);
            set(gca,'xticklabel',{string(i) string(j)  ''})
            xlabel('TrueClass');
            set(gca,'yticklabel',{string(i) string(j)  ''})
            ylabel('PredictedClass');
            hold off

            % ROC
            rocObj = rocmetrics(Y,scores{i,j}, [i,j]);
            % rocObj.AUC
            fig2=figure();
            plot(rocObj)

            % Plot classified scatter
            data_to_plot = [data{1}; data{2}];
            fig3 = figure();
            ax = gca;
            hold on
            % colors = lines(max(pl));
            scatter3(data_to_plot(:, 1), data_to_plot(:, 2), data_to_plot(:, 3), 5, colors(pl, :), 'filled');
            title(strcat('SVM classification ', string(i), '&', string(j)));
            view(az_el)
            xlabel('Max latency');
            xlim([0, 1])
            ylabel('Max dist');
            % ylim([0, 700])
            zlabel('Percentage involved electodes');
            % zlim([0, 120])
            set(ax, 'TickDir', 'out');
            set(ax, 'TickLength', [0.04, 0.04]); % Modify as needed
            set(ax, 'FontSize', font_size);
            set(ax, 'FontName', font_name);
            box off 

            fig4 = figure();
            ax = gca;
            hold on
            % tl = repelem([i,j], [length(data{1}), length(data{2})])';
            % colors = lines(max(tl));
            scatter3(data_to_plot(:, 1), data_to_plot(:, 2), data_to_plot(:, 3), 5, colors(Y, :), 'filled');
            title(strcat('Actual Classes ', string(i), '&', string(j)));
            view(az_el)
            xlabel('Max latency');
            xlim([0, 1])
            ylabel('Max dist');
            % ylim([0, 700])
            zlabel('Percentage involved electodes');
            % zlim([0, 120])
            set(ax, 'TickDir', 'out');
            set(ax, 'TickLength', [0.04, 0.04]); % Modify as needed
            set(ax, 'FontSize', font_size);
            set(ax, 'FontName', font_name);
            box off

            % Save fig
            figname=strcat('ConfusionMatrix_', string(i), '&', string(j));
            savefig(fig1, figname)
            % saveas(fig1, strcat(figname, '.png'))
            print(fig1, figname,'-dpng','-r1200')
            clear figname

            figname=strcat('ROCcurves_', string(i), '&', string(j));
            savefig(fig2, figname)
            % saveas(fig2, strcat(figname, '.png'))
            print(fig2, figname,'-dpng','-r1200')
            clear figname

            figname=strcat('SVMscatter_',string(i), '&', string(j));
            savefig(fig3, figname)
            % saveas(fig3, strcat(figname, '.png'))
            print(fig3, figname,'-dpng','-r1200')
            clear figname

            figname=strcat('ACTUALscatter_',string(i), '&', string(j));
            savefig(fig4, figname)
            % saveas(fig4, strcat(figname, '.png'))
            print(fig4, figname,'-dpng','-r1200')
            clear figname

            clear fig1 fig2 fig3 fig4
        end
    end
    
    dataname = 'predictedLabels.mat';
    save(dataname, 'predictedLabels')
    clear dataname
    
    dataname = 'actualLabels.mat';
    save(dataname, 'actualLabels')
    clear dataname

    dataname = 'accuracy.mat';
    save(dataname, 'accuracy')
    clear dataname
    
    dataname = 'scores.mat';
    save(dataname, 'scores')
    clear dataname
    
    dataname = 'SV.mat';
    save(dataname, 'SV')
    clear dataname
end 


%% 
disp('EndOfProcessing')
close all
