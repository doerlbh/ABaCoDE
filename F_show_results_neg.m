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

% dataset = 'MNIST-half-unshuffled'
% dataset = 'Caltech101S-half-unshuffled'
% dataset = 'CIFAR-10-half-unshuffled'
% dataset = 'STL10-half-unshuffled'

% dataset = 'MNIST-halfstat-unshuffled'
% dataset = 'Caltech101S-halfstat-unshuffled'
% dataset = 'CIFAR-10-halfstat-unshuffled'
% dataset = 'STL10-halfstat-unshuffled'

% dataset = 'MNIST-rand-unshuffled'
% dataset = 'Caltech101S-rand-unshuffled'
% dataset = 'CIFAR-10-rand-unshuffled'
% dataset = 'STL10-rand-unshuffled'

% dataset = 'MNIST-randstat-unshuffled'
% dataset = 'Caltech101S-randstat-unshuffled'
% dataset = 'CIFAR-10-randstat-unshuffled'
% dataset = 'STL10-randstat-unshuffled'

% dataset = 'MNIST-half-shuffled'
% dataset = 'Caltech101S-half-shuffled'
% dataset = 'CIFAR-10-half-shuffled'
% dataset = 'STL10-half-shuffled'

% dataset = 'MNIST-halfstat-shuffled'
% dataset = 'Caltech101S-halfstat-shuffled'
% dataset = 'CIFAR-10-halfstat-shuffled'
% dataset = 'STL10-halfstat-shuffled'

% dataset = 'MNIST-rand-shuffled'
% dataset = 'Caltech101S-rand-shuffled'
% dataset = 'CIFAR-10-rand-shuffled'
% dataset = 'STL10-rand-shuffled'

% dataset = 'MNIST-randstat-shuffled'
dataset = 'Caltech101S-randstat-shuffled'
% dataset = 'CIFAR-10-randstat-shuffled'
% dataset = 'STL10-randstat-shuffled'

%%

window = 1000;

load(['result-' dataset]);

%% plotting

% range1 = size(accuracy_b,1);
% range1 = 20000;
% range1 = 10000;
range1 = 8000;
upperbound = 1

%% Table

b_acc = [accuracy_b(range1,end)];
uE_acc = [accuracy_uE(range1,end)];
mE_acc = [accuracy_mE2(range1,end)];
oE_acc = [accuracy_oE2(range1,end)];
mhCB_acc = [accuracy_mhCB2(range1,end)];
fhCB_acc = [accuracy_fhCB2(range1,end)];
mmmhCB_acc = [accuracy_mmmhCB2(range1,end)];
mmfhCB_acc = [accuracy_mmfhCB2(range1,end)];

summary_acc = 100*[ mean(b_acc) mean(uE_acc) mean(mE_acc) mean(oE_acc) mean(mhCB_acc) mean(fhCB_acc) mean(mmmhCB_acc) mean(mmfhCB_acc) ]

%% k = 2 - comprehensive

fig_1 = figure(1);
plot(1:range1,accuracy_b(1:range1,end),'--','color','k','lineWidth',1); hold on
% plot(1:range1,accuracy_orS1(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_orS2(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_orS4(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_orS8(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_uE(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mE4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mE8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_oE4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_oE8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mhCB4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mhCB8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_fhCB4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_fhCB8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmmhCB2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmmhCB4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmmhCB8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmfhCB2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmfhCB4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmfhCB8(1:range1,end),'lineWidth',1); hold on
% title([dataset ' - k = 2']);
% title([dataset ' - cumulative classification accuracy']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = { 'baseline',...
    'universal embedding',...
    'mini-batch embedding',...
    'on-line embedding',...
    'mini-batch-history CB',...
    'full-history CB',...
    'multi-mode mini-batch-history CB',...
    'multi-mode full-history CB'};
c_short = { 'b',...
    'uE',...
    'mE',...
    'oE',...
    'mhCB',...
    'fhCB',...
    'mmmhCB',...
    'mmfhCB'};
legend(c_short);



%% k = 2 - comprehensive

fig_2 = figure(2);
plot(1:range1,-sort(-accuracy_b(1:range1,end)),'--','color','k','lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_uE(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mE2(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_oE2(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mhCB2(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_fhCB2(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mmmhCB2(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mmfhCB2(1:range1,end)),'lineWidth',1); hold on
% xlabel('t');
ylabel('decending accuracy');
ylim([0 upperbound]);
c = { 'baseline',...
    'universal embedding',...
    'mini-batch embedding',...
    'on-line embedding',...
    'mini-batch-history CB',...
    'full-history CB',...
    'multi-mode mini-batch-history CB',...
    'multi-mode full-history CB'};
c_short = { 'b',...
    'uE',...
    'mE',...
    'oE',...
    'mhCB',...
    'fhCB',...
    'mmmhCB',...
    'mmfhCB'};
legend(c_short);

