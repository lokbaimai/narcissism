clear, clc, close;
load('Narcissist.mat');
load('PersonalityPredictor.mat');
X = Personality{:,:};
y = Narcissist;

nca = fsrnca(X,y,'FitMethod','exact', ...
    'Solver','lbfgs');

figure
plot(nca.FeatureWeights,'ro')
xlabel('Feature index')
ylabel('Feature weight')
grid on
rng('default')
bar(nca.FeatureWeights)
xlabel('Feature Index')
ylabel('Feature Weight')


lambdavals = linspace(0,20,10)*std(y)/length(y);

%Partition the data into five folds. For each fold, cvpartition assigns 4/5th of the data as a training set, and 1/5th of the data as a test set.
cvp = cvpartition(length(y),'kfold',5);
numtestsets = cvp.NumTestSets;
lossvals = zeros(length(lambdavals),numtestsets);

for i = 1:length(lambdavals)
   for k = 1:numtestsets
       Xtrain = X(cvp.training(k),:);
       ytrain = y(cvp.training(k),:);
       Xtest = X(cvp.test(k),:);
       ytest = y(cvp.test(k),:);

       nca = fsrnca(Xtrain,ytrain,'FitMethod','exact', ...
            'Solver','sgd','Verbose',0,'Lambda',lambdavals(i), ...
            'LossFunction','epsiloninsensitive','Epsilon',0.8);
        
        lossvals(i,k) = loss(nca,Xtest,ytest,'LossFunction','mse');
    end
end
meanloss = mean(lossvals,2);
figure
plot(lambdavals,meanloss,'ro-')
xlabel('Lambda')
ylabel('Loss (MSE)')
grid on
[~,idx] = min(meanloss);
bestlambda = lambdavals(idx)
bestloss = meanloss(idx)

nca_ = fsrnca(X,y,'FitMethod','exact','Solver','sgd', ...
    'Lambda',bestlambda,'LossFunction','epsiloninsensitive','Epsilon',0.8);


L = loss(nca,X,y)
figure
plot(nca_.FeatureWeights,'ro')
xlabel('Feature Index')
ylabel('Feature Weight')
grid on

bar(nca_.FeatureWeights)
xlabel('Feature Index')
ylabel('Feature Weight')
