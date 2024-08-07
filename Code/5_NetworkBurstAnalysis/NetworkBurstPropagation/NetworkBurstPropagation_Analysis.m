%% NetworkBurstPropagation - studio forma

clear 
close all
clc

rng(2)


%% Data load (brutto e manuale)

% % Involved
% flag = 'involved';
% fig1 = openfig('InvolvedElectrodesHist_Sponge_DIV18_All');
% fig2 = openfig('InvolvedElectrodesHist_ECM_DIV18_All');
% fig3 = openfig('InvolvedElectrodesHist_Geltrex_DIV18_All');
% fig4 = openfig('InvolvedElectrodesHist_Beads_DIV18_All_new');

% Nearest
flag = 'nearest';
fig1 = openfig('NearestInvolvedElectrodesHist_Sponge_DIV18_All');
fig2 = openfig('NearestInvolvedElectrodesHist_ECM_DIV18_All');
fig3 = openfig('NearestInvolvedElectrodesHist_Geltrex_DIV18_All');
fig4 = openfig('NearestInvolvedElectrodesHist_Beads_DIV18_All_new');

start_folder = pwd;

endfolder = [start_folder, '\Analysis\DistributionsComparison'];
if exist(endfolder, 'dir')
    fprintf('The end folder already exists.\n');
else
    try
        mkdir(endfolder);
    catch
        fprintf('Failed to create the folder.\n');
    end
end

plotfolder = [start_folder, '\FormattedPlots'];
if exist(plotfolder, 'dir')
    fprintf('The end folder already exists.\n');
else
    try
        mkdir(plotfolder);
    catch
        fprintf('Failed to create the folder.\n');
    end
end


%% Data Extraction
h1 = findobj(fig1,'type','histogram');
h1.Normalization = 'count';
data0=[h1.BinEdges(1:end-1)' h1.Values'];

h2 = findobj(fig2,'type','histogram');
h2.Normalization = 'count';
data1=[h2.BinEdges(1:end-1)' h2.Values'];

h3 = findobj(fig3,'type','histogram');
h3.Normalization = 'count';
data2=[h3.BinEdges(1:end-1)' h3.Values'];

h4 = findobj(fig4,'type','histogram');
h4.Normalization = 'count';
data3=[h4.BinEdges(1:end-1)' h4.Values'];

%% Data manipulation
th = 101;

% CountExluded and manipulate data
original_data = {data0; data1; data2; data3};
processed_data = cell(4,1);
excluded = NaN(4,1);
perc_excluded = NaN(4,1);
for i=1:length(original_data)
    data = original_data{i};
    excluded(i) = sum(data(data(:,1)>th-1,2));
    perc_excluded(i) = excluded(i)/sum(data(:, 2))*100;
    data(data(:,1)>th-1,:)=[];
    processed_data{i}= data;
end

dataname = [flag, '_excluded', '.mat'];
save([endfolder, '\', dataname], 'excluded')
clear dataname

dataname = [flag, '_perc_exluded', '.mat'];
save([endfolder, '\', dataname], 'perc_excluded')
clear dataname


% Histogram manipulaiton 
edges = 0:101;

fig1=figure();
values = repelem(processed_data{1}(:, 1), processed_data{1}(:, 2)');
h1 = histogram(values, 'BinEdges',edges);
h1.Normalization = 'count';
data0=[h1.BinEdges(1:end-1)' h1.Values'];
h1 = histogram(values, 'BinEdges',edges);
h1.Normalization = 'count';
sponge=[h1.BinEdges(1:end-1)' h1.Values'];
h1.FaceColor = [1.00,0.75,0.00];
h1.EdgeColor = [1.00,0.75,0.00];
h1.FaceAlpha = 1;
h1.LineWidth = 2;

fig2=figure();
values = repelem(processed_data{2}(:, 1), processed_data{2}(:, 2)');
h2 = histogram(values, 'BinEdges',edges);
h2.Normalization = 'count';
ecm=[h2.BinEdges(1:end-1)' h2.Values'];
h2.FaceColor = [0.57,0.82,0.31];
h2.EdgeColor = [0.57,0.82,0.31];
h2.FaceAlpha = 1;
h2.LineWidth = 2;

fig3=figure();
values = repelem(processed_data{3}(:, 1), processed_data{3}(:, 2)');
h3 = histogram(values, 'BinEdges',edges);
h3.Normalization = 'count';
geltrex=[h3.BinEdges(1:end-1)' h3.Values'];
h3.FaceColor = [0.00,0.69,0.94];
h3.EdgeColor = [0.00,0.69,0.94];
h3.FaceAlpha = 1;
h3.LineWidth = 2;

fig4=figure();
values = repelem(processed_data{4}(:, 1), processed_data{4}(:, 2)');
h4 = histogram(values, 'BinEdges',edges);
h4.Normalization = 'count';
beads=[h4.BinEdges(1:end-1)' h4.Values'];
h4.FaceColor = [0.74,0.56,0.87];
h4.EdgeColor = [0.74,0.56,0.87];
h4.FaceAlpha = 1;
h4.LineWidth = 2;

%% Kolmogorov-Smirnov Test:
h = NaN(4,4);
p = NaN(4,4);

distributions = {sponge(:,2), ecm(:,2), geltrex(:,2), beads(:,2)};
num_distributions = length(distributions);
for i = 1:num_distributions
    for j = i:num_distributions
        data1 = distributions{i};
        data2 = distributions{j};

        % Kolmogorov-Smirnov Test
        [h(i,j), p(i,j)] = kstest2(data1, data2);
    end
end

dataname = [flag, '_KStest', '.mat'];
save([endfolder, '\', dataname], 'h', 'p')
clear dataname

%% Histogram Similarity Measures:
% data1 and data2 have to represent probability distributions
h1.Normalization = 'probability';
figure(fig1)
setFigureProperties(fig1)
sponge=[h1.BinEdges(1:end-1)' h1.Values'];

h2.Normalization = 'probability';
figure(fig2)
setFigureProperties(fig2)
ecm=[h2.BinEdges(1:end-1)' h2.Values'];

h3.Normalization = 'probability';
figure(fig3)
setFigureProperties(fig3)
geltrex=[h3.BinEdges(1:end-1)' h3.Values'];

h4.Normalization = 'probability';
figure(fig4)
setFigureProperties(fig4)
beads=[h4.BinEdges(1:end-1)' h4.Values'];

% % Ensure data have the same length 
% sponge_p = sponge(sponge(:,1)<th+1,:);
% ecm_p = ecm(ecm(:,1)<th+1,:);
% geltrex_p = geltrex(geltrex(:,1)<th+1,:);
% beads_p = beads(beads(:,1)<th+1,:);

assert((length(sponge) == length(ecm))&&(length(sponge) == length(geltrex))&&(length(sponge) == length(beads)), 'Data vectors must have the same length.');

% Distribution cells
distributions = {sponge(:,2), ecm(:,2), geltrex(:,2), beads(:,2)};
num_distributions = length(distributions);

%% Bhattacharyya distance

% Initialize variables to store the Bhattacharyya distances.
bhatt_distance_matrix = NaN(num_distributions, num_distributions);

% Calculate the Bhattacharyya distance for all pairs of distributions.
for i = 1:num_distributions
    for j = i:num_distributions
        data1 = distributions{i};
        data2 = distributions{j};

        % Calculate Bhattacharyya distance.
        bhatt_distance = -log(sum(sqrt(data1 .* data2)));
        
        % Store the Bhattacharyya distance in the matrix (symmetric --> asymmetric).
        bhatt_distance_matrix(i, j) = bhatt_distance;
        % bhatt_distance_matrix(j, i) = bhatt_distance;
    end
end

dataname = [flag, '_BhattacharyyaDistance', '.mat'];
save([endfolder, '\', dataname], 'bhatt_distance_matrix')
clear dataname

%% Jensen-Shannon Divergence

% Initialize variables to store the JSD values.
JSD_matrix = NaN(num_distributions, num_distributions);

% Calculate the JSD for all pairs of distributions.
for i = 1:num_distributions
    for j = i:num_distributions
        data1 = distributions{i};
        data2 = distributions{j};

        % Calculate the average distribution.
        avg_distribution = 0.5 * (data1 + data2);

        % Calculate the Kullback-Leibler Divergence for data1 and data2.
        kl_divergence_1 = data1 .* log2(data1 ./ avg_distribution);
        kl_divergence_2 = data2 .* log2(data2 ./ avg_distribution);

        % Calculate the Jensen-Shannon Divergence.
        JSD = 0.5 * sum(kl_divergence_1 + kl_divergence_2, 'omitnan');

        % Store the JSD value in the matrix (symmetric --> asymmetric).
        JSD_matrix(i, j) = JSD;
        % JSD_matrix(j, i) = JSD;
    end
end

similarity_JSD = 1 - JSD_matrix;

dataname = [flag, '_JSDsimilarity', '.mat'];
save([endfolder, '\', dataname], 'similarity_JSD')
clear dataname


%% Formatted histogram saving 
% 1
figname=[flag, '_Sponge'];
savefig(fig1, [plotfolder, '\', figname])
print(fig1, [plotfolder, '\', figname], '-dpng', '-r1200')
clear figname

dataname = [flag, '_Hist_Sponge', '.mat'];
save(dataname, 'h1')
clear dataname


% 2
figname=[flag, '_ECM'];
savefig(fig2, [plotfolder, '\', figname])
print(fig2, [plotfolder, '\', figname], '-dpng', '-r1200')
clear figname

dataname = [flag, '_Hist_ECM', '.mat'];
save(dataname, 'h2')
clear dataname


% 3
figname=[flag, '_Geltrex'];
savefig(fig3, [plotfolder, '\', figname])
print(fig3, [plotfolder, '\', figname], '-dpng', '-r1200')
clear figname

dataname = [flag, '_HistGeltrex', '.mat'];
save(dataname, 'h3')
clear dataname

% 4
figname=[flag, '_Beads'];
savefig(fig4, [plotfolder, '\', figname])
print(fig4, [plotfolder, '\', figname], '-dpng', '-r1200')
clear figname

dataname = [flag, '_Hist_Beads', '.mat'];
save(dataname, 'h4')
clear dataname

%%
disp('EndOfProcessing')
