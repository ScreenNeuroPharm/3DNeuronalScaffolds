%% Amplitudes - form analysis

%% Data load (manual)
load('AmplitudeDistribution_Sponge_DIV18_All_norm.mat')
sponge=Bin_Values_norm;
load('AmplitudeDistribution_ECM_DIV18_All_norm.mat')
ecm = Bin_Values_norm;
load('AmplitudeDistribution_Geltrex_DIV18_All_norm.mat')
geltrex=Bin_Values_norm;
load('AmplitudeDistribution_Beads_DIV18_All_norm.mat')
beads = Bin_Values_norm;

th = 200;
% th = 150;

max_sponge=51503;
max_ecm = 46036;
max_geltrex=56428;
max_beads=35055;

clear Bin_Values_norm
%% Cut graph to th+1

exluded_sponge=sum(sponge(sponge(:,1)>th-1,2)*max_sponge);
tot_sponge=sum(sponge(:,2))*max_sponge;
perc_sponge=exluded_sponge/tot_sponge*100;

exluded_ecm=sum(ecm(ecm(:,1)>th-1,2)*max_ecm);
tot_ecm=sum(ecm(:,2))*max_ecm;
perc_ecm=exluded_ecm/tot_ecm*100;

exluded_geltrex=sum(geltrex(geltrex(:,1)>th-1,2)*max_geltrex);
tot_geltrex=sum(geltrex(:,2))*max_geltrex;
perc_geltrex=exluded_geltrex/tot_geltrex*100;

exluded_beads=sum(beads(beads(:,1)>th-1,2)*max_beads);
tot_beads=sum(beads(:,2))*max_beads;
perc_beads=exluded_beads/tot_beads*100;


%% Kolmogorov-Smirnov Test:
[h, p] = kstest2(sponge(:,2), ecm(:,2));
disp(['K-S test sponge-ecm p-value: ', num2str(p), '. Different if 1: ', num2str(h)]);
[h, p] = kstest2(sponge(:,2), geltrex(:,2));
disp(['K-S test sponge-geltrex p-value: ', num2str(p), '. Different if 1: ', num2str(h)]);
[h, p] = kstest2(sponge(:,2), beads(:,2));
disp(['K-S test sponge-beads p-value: ', num2str(p), '. Different if 1: ', num2str(h)]);

[h, p] = kstest2(ecm(:,2), geltrex(:,2));
disp(['K-S test ecm-geltrex p-value: ', num2str(p), '. Different if 1: ', num2str(h)]);
[h, p] = kstest2(ecm(:,2), beads(:,2));
disp(['K-S test ecm-beads p-value: ', num2str(p), '. Different if 1: ', num2str(h)]);

[h, p] = kstest2(geltrex(:,2), beads(:,2));
disp(['K-S test geltrex-beads p-value: ', num2str(p), '. Different if 1: ', num2str(h)]);

clear p h
%% Histogram Similarity Measures:
% Assuming data1 and data2 represent probability distributions.

% Tolgo normalizzazione sul massimo e scrivo come frequenza relativa 
sponge(:, 2)=sponge(:, 2)*max_sponge/sum(sponge(:, 2)*max_sponge);
ecm(:, 2)=ecm(:, 2)*max_ecm/sum(ecm(:, 2)*max_ecm);
geltrex(:, 2)=geltrex(:, 2)*max_geltrex/sum(geltrex(:, 2)*max_geltrex);
beads(:, 2)=beads(:, 2)*max_beads/sum(beads(:, 2)*max_beads);

% Nota bene, ho dovuto togliere un valore all'inizio e tagliare a th (impostata a 200)
ecm_p = ecm(2:end, :);
perc_ecm_prima = (ecm(1,2)*max_ecm)/tot_ecm*100;
ecm_p = ecm_p(ecm_p(:,1)<th+1,:);

geltrex_p = geltrex(2:end, :);
perc_geltrex_prima = (geltrex(1,2)*max_geltrex)/tot_geltrex*100;
geltrex_p = geltrex_p(geltrex_p(:,1)<th+1,:);

beads_p = beads(2:end, :);
perc_beads_prima = (beads(1,2)*max_beads)/tot_beads*100;
beads_p = beads_p(beads_p(:,1)<th+1,:);

sponge_p = sponge(sponge(:,1)<th+1,:);

% Ensure data have the same length.
assert((length(sponge_p) == length(ecm_p))&&(length(sponge_p) == length(geltrex_p))&&(length(sponge_p) == length(beads_p)), 'Data vectors must have the same length.');

% Distribution cells
distributions = {sponge_p(:,2), ecm_p(:,2), geltrex_p(:,2), beads_p(:,2)};
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


disp(['Bhattacharyya distance sponge-ecm: ', num2str(bhatt_distance_matrix(1,2))]);
disp(['Bhattacharyya distance sponge-geltrex: ', num2str(bhatt_distance_matrix(1,3))]);
disp(['Bhattacharyya distance sponge-beads: ', num2str(bhatt_distance_matrix(1,4))]);

disp(['Bhattacharyya distance ecm-geltrex: ', num2str(bhatt_distance_matrix(2,3))]);
disp(['Bhattacharyya distance ecm-beads: ', num2str(bhatt_distance_matrix(2,4))]);

disp(['Bhattacharyya distance geltrex-beads: ', num2str(bhatt_distance_matrix(3,4))]);

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
        JSD = 0.5 * sum(kl_divergence_1 + kl_divergence_2);

        % Store the JSD value in the matrix (symmetric --> asymmetric).
        JSD_matrix(i, j) = JSD;
        % JSD_matrix(j, i) = JSD;
    end
end

similarity_JSD = 1 - JSD_matrix;

disp(['Jensen-Shannon Divergence sponge-ecm: ', num2str(JSD_matrix(1,2)), '. Similarity: ', num2str(similarity_JSD(1,2))]);
disp(['Jensen-Shannon Divergence sponge-geltrex: ', num2str(JSD_matrix(1,3)), '. Similarity: ', num2str(similarity_JSD(1,3))]);
disp(['Jensen-Shannon Divergence sponge-beads: ', num2str(JSD_matrix(1,4)), '. Similarity: ', num2str(similarity_JSD(1,4))]);

disp(['Jensen-Shannon Divergence ecm-geltrex: ', num2str(JSD_matrix(2,3)), '. Similarity: ', num2str(similarity_JSD(2,3))]);
disp(['Jensen-Shannon Divergence ecm-beads: ', num2str(JSD_matrix(2,4)), '. Similarity: ', num2str(similarity_JSD(2,4))]);

disp(['Jensen-Shannon Divergence geltrex-beads: ', num2str(JSD_matrix(3,4)), '. Similarity: ', num2str(similarity_JSD(3,4))]);