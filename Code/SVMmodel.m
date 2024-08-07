function [predictedLabels, score, accuracy, SV] = SVMmodel(observations, classes)
% The fitcecoc function in MATLAB is specifically designed for training 
% support vector machines (SVMs) for multiclass classification using the 
% error-correcting output codes (ECOC) framework. 

% INPUTS
% observations: cell array, each cell contains the observation of one class
% In each cell, each column is a variable (2/3 for now), each row is an
% observation
% classes: vector with the class number

% OUTPUTs
% da capire

rng(4)

%% Data
% numClass=length(observations);
[numSamplesPerClass,numVar] = cellfun(@size,observations);

% Ensure data have the same number of variables.
assert(all(numVar == numVar(1)), 'Data must have the same number of variables.');

% Combine data into feature matrix X and label vector Y
X = cell2mat(observations);
Y = repelem(classes, numSamplesPerClass)'; 


%% Test data
% % Generate synthetic data for two classes
% rng(1); % for reproducibility
% numSamplesPerClass = 50;
% 
% % Class 1
% x1 = randn(numSamplesPerClass, 1);
% y1 = randn(numSamplesPerClass, 1);
% 
% % Class 2
% x2 = randn(numSamplesPerClass, 1) + 2;
% y2 = randn(numSamplesPerClass, 1) + 2;
% 
% % Combine data into feature matrix X and label vector Y
% X = [x1, y1; x2, y2];
% Y = [ones(numSamplesPerClass, 1); 2 * ones(numSamplesPerClass, 1)];

%% SVM computing
% used
% svmModel = fitcsvm(X, Y, 'KernelFunction', 'linear');
% svmModel = fitPosterior(CompactsvmModel,X,Y);

% Train SVM model with one-vs-one strategy
svmModel = fitcsvm(X, Y, 'Holdout', 0.30, 'KernelFunction', 'rbf', 'Standardize',true);
% svmModel = fitcsvm(X, Y, 'KernelFunction', 'linear', 'Standardize',true);
% svmModel = fitcsvm(X, Y, 'KernelFunction', 'polynomial', 'Standardize',true);
% svmModel = fitcsvm(X, Y, 'KernelFunction', 'rbf', 'Standardize',true);

CompactsvmModel = svmModel.Trained{1};
testInds = test(svmModel.Partition);
% CompactsvmModel = compact(svmModel);
svmModel = fitPosterior(CompactsvmModel, X(testInds, :),Y(testInds));


% Predict labels for the training data
[predictedLabels, score]  = predict(svmModel, X);

% Calculate accuracy
accuracy = sum(predictedLabels == Y) / numel(Y);

% Extract support vectors
SV = svmModel.SupportVectors;

%% Visualization

% % Display accuracy
% disp(['Accuracy: ', num2str(accuracy * 100), '%']);
% 
% % Visualize results
% figure();
% ax = gca;
% hold on
% box off 
% ax.TickDir = 'out';
% 
% % Plot data
% h = gscatter(X(:, 1), X(:, 2), Y);
% % h = gscatter3(X(:,1), X(:,2), X(:,3), Y);
% 
% % Plot support vectors
% plot(SV(:, 1), SV(:, 2), 'ko', 'MarkerSize', 10);
% % plot3(SV(:,1), SV(:,2), SV(:,3), 'ko', 'MarkerSize', 10);
% 
% % Plot decision boundary
% k = -svmModel.Beta(1) / svmModel.Beta(2);
% b = -svmModel.Bias / svmModel.Beta(2);
% f = @(x) k * x + b;
% fplot(f, [min(X(:, 1)), max(X(:, 1))], 'k-', 'LineWidth', 2);
% 
% 
% % Adjust figure properties
% title('SVM Decision Boundaries');
% xlabel('X');
% ylabel('Y');
% % zlabel('Z');
% legend(h, {'Class 1', 'Class 2'}, 'Location', 'Best');
% hold off

%% Classification evaluation
% 
% true_val=double([(Y==(classes(1)))';(Y==(classes(2)))']);
% predicted_val=double([(predictedLabels==(classes(1)))';(predictedLabels==(classes(2)))']);
% 
% figure();
% ax = gca;
% hold on
% h=plotconfusion(true_val, predicted_val);
% set(gca,'xticklabel',{string(classes(1)) string(classes(2))  ''})
% xlabel('TrueClass');
% set(gca,'yticklabel',{string((classes(1))) string(classes(2))  ''})
% ylabel('PredictedClass');
% ax.TickDir = 'out';
% hold off
% 
% % ROC
% rocObj = rocmetrics(Y,score, svmModel.ClassNames);
% % rocObj.AUC
% figure()
% plot(rocObj)

end
