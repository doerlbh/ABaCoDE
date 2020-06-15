% show results
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% updated December 2017

clear all; close all;

%% setup
loc = 'doerlbh';
switch loc
    case {'Hyak', 'Hyakqsub'}
        path = '/gscratch/stf/sunnylin/IBM/IBM_ABaCoDE/';
    case 'c2b2'
        path = '/ifs/scratch/c2b2/ip_lab/bl2681/Other/IBM_ABaCoDE/';
    case 'compbio03'
        path = '/data2/baihan/';
    case 'IBM'
        path = '/data/baihan/Code/IBM_ABaCoDE/';
    case 'doerlbh'
        path = '/Users/DoerLBH/Dropbox/git/IBM_ABaCoDE/';
    case {'mocha','latte','espresso','americano','galao'}
        path = '/home/sunnylin/Dropbox/Git/IBM_ABaCoDE/';
    case 'gcp-gpu'
        path = '/home/doerlbh/Dropbox/Git/IBM_ABaCoDE/';
    otherwise
        disp('Wrong location!');
end

addpath(path);
addpath([path 'log'])

% dataset = 'warfarin-linear-0.5-0-unshuffled'
% dataset = 'warfarin-AE-0.5-0-unshuffled'

% dataset = 'warfarin-linear-0.5-0-shuffled'
% dataset = 'warfarin-AE-0.5-0-shuffled'

% dataset = 'warfarin-linear-0.5-0.5-unshuffled'
dataset = 'warfarin-AE-0.5-0.5-unshuffled'

% dataset = 'warfarin-linear-0.5-0.5-shuffled'
% dataset = 'warfarin-AE-0.5-0.5-shuffled'

% dataset = 'MNIST-linear-0.5-0-unshuffled'
% dataset = 'MNIST-AE-0.5-0-unshuffled'

% dataset = 'MNIST-linear-0.5-0-shuffled'
% dataset = 'MNIST-AE-0.5-0-shuffled'

% dataset = 'MNIST-linear-0.5-0.5-unshuffled'
% dataset = 'MNIST-AE-0.5-0.5-unshuffled'

% dataset = 'MNIST-linear-0.5-0.5-shuffled'
% dataset = 'MNIST-AE-0.5-0.5-shuffled'

%%

window = 1000;

load(['result-' dataset '.mat']);

%% plotting

% range1 = size(accuracy_b,1);
% range1 = 20000;
% range1 = 10000;
range1 = 5000;
upperbound = 1

%% Table

acc_100 = [accuracy_100(range1,end)];
acc_50 = [accuracy_50(range1,end)];
acc_25 = [accuracy_25(range1,end)];
acc_5 = [accuracy_5(range1,end)];
acc_mhCB = [accuracy_mhCB(range1,end)];
acc_fhCB = [accuracy_fhCB(range1,end)];

mean_compress_100 = mean(compress_100')*[100]';
mean_compress_50 = mean(compress_50')*[50]';
mean_compress_25 = mean(compress_25')*[25]';
mean_compress_5 = mean(compress_5')*[5]';
mean_compress_mhCB = mean(compress_mhCB')*[5 25 50 100]';
mean_compress_fhCB = mean(compress_fhCB')*[5 25 50 100]';

%%

summary_acc = 100*[mean(acc_100) mean(acc_50) mean(acc_25) mean(acc_5) mean(acc_mhCB) mean(acc_fhCB)]

%%

summary_compress = [mean_compress_100 mean_compress_50 mean_compress_25 mean_compress_5 mean_compress_mhCB mean_compress_fhCB]

%% 

fig_1 = figure(1);
plot(1:range1,accuracy_100(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_50(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_25(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_5(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB(1:range1,end),'lineWidth',1); hold on
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = { '100%',...
    '50%',...
    '25%',...
    '5%',...
    'mini-batch-history CB',...
    'full-history CB'};
c_short = {'100%',...
    '50%',...
    '25%',...
    '5%',...
    'mhCB',...
    'fhCB'};
legend(c_short);


%% 

fig_2 = figure(2);
plot(1:range1,-sort(-accuracy_100(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_50(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_25(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_5(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mhCB(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_fhCB(1:range1,end)),'lineWidth',1); hold on
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = { '100%',...
    '50%',...
    '25%',...
    '5%',...
    'mini-batch-history CB',...
    'full-history CB'};
c_short = {'100%',...
    '50%',...
    '25%',...
    '5%',...
    'mhCB',...
    'fhCB'};
legend(c_short);

%% 

fig_3 = figure(3);
plot(1:range1,cumsum(reward_100(1:range1)),'lineWidth',1); hold on
plot(1:range1,cumsum(reward_50(1:range1)),'lineWidth',1); hold on
plot(1:range1,cumsum(reward_25(1:range1)),'lineWidth',1); hold on
plot(1:range1,cumsum(reward_5(1:range1)),'lineWidth',1); hold on
plot(1:range1,cumsum(reward_mhCB(1:range1)),'lineWidth',1); hold on
plot(1:range1,cumsum(reward_fhCB(1:range1)),'lineWidth',1); hold on
xlabel('t');
ylabel('reward');
% ylim([0 upperbound]);
c = { '100%',...
    '50%',...
    '25%',...
    '5%',...
    'mini-batch-history CB',...
    'full-history CB'};
c_short = {'100%',...
    '50%',...
    '25%',...
    '5%',...
    'mhCB',...
    'fhCB'};
legend(c_short);


