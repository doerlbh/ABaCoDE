% show results
% Baihan Lin
% Columbia University
% October 2017 at IBM Research


clear all; close all;

%% setup
loc = 'gcp-gpu';
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
addpath([path 'log/11-Dec-2017'])
addpath([path 'log/10-Dec-2017'])

% dataset = 'MNIST-unshuffled'
% dataset = 'Caltech101S-unshuffled'
% dataset = 'CIFAR-10-unshuffled'
% dataset = 'CIFAR-100C-unshuffled'
% dataset = 'STL10-unshuffled'
% dataset = 'MNIST-shuffled'
% dataset = 'Caltech101S-shuffled'
% dataset = 'CIFAR-10-shuffled'
% dataset = 'CIFAR-100C-shuffled'
% dataset = 'STL10-shuffled'

%%

window = 1000;

load(['result-' dataset]);

%% plotting

% range1 = size(accuracy_b,1);
range1 = 8000;
% range1 = 20000;
upperbound = 0.4

%% Table

b_acc = [accuracy_b(range1,end)];
uE_acc = [accuracy_uE(range1,end)];
orS_acc = [accuracy_orS2(range1,end) accuracy_orS4(range1,end) accuracy_orS8(range1,end)];
mE_acc = [accuracy_mE2(range1,end) accuracy_mE4(range1,end) accuracy_mE8(range1,end)];
oE_acc = [accuracy_oE2(range1,end) accuracy_oE4(range1,end) accuracy_oE8(range1,end)];
mhCB_acc = [accuracy_mhCB2(range1,end) accuracy_mhCB4(range1,end) accuracy_mhCB8(range1,end)];
fhCB_acc = [accuracy_fhCB2(range1,end) accuracy_fhCB4(range1,end) accuracy_fhCB8(range1,end)];
mmmhCB_acc = [accuracy_mmmhCB2(range1,end) accuracy_mmmhCB4(range1,end) accuracy_mmmhCB8(range1,end)];
mmfhCB_acc = [accuracy_mmfhCB2(range1,end) accuracy_mmfhCB4(range1,end) accuracy_mmfhCB8(range1,end)];

summary_acc = [mean(b_acc) std(b_acc);
    mean(uE_acc) std(uE_acc);
    mean(orS_acc) std(orS_acc);
    mean(mE_acc) std(mE_acc);
    mean(oE_acc) std(oE_acc);
    mean(mhCB_acc) std(mhCB_acc);
    mean(fhCB_acc) std(fhCB_acc);
    mean(mmmhCB_acc) std(mmmhCB_acc);
    mean(mmfhCB_acc) std(mmfhCB_acc)]

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
title([dataset ' - k = 2']);
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
legend(c);


%% k = 4 - comprehensive

fig_2 = figure(2);
plot(1:range1,accuracy_b(1:range1,end),'--','color','k','lineWidth',1); hold on
% plot(1:range1,accuracy_orS1(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_orS2(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_orS4(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_orS8(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_uE(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mE8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_oE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_oE8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mhCB8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_fhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_fhCB8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmmhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmmhCB4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmmhCB8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmfhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmfhCB4(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmfhCB8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - k = 4']);
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
legend(c);

%% k = 8 - comprehensive

fig_3 = figure(3);
plot(1:range1,accuracy_b(1:range1,end),'--','color','k','lineWidth',1); hold on
% plot(1:range1,accuracy_orS1(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_orS2(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_orS4(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_orS8(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_uE(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mE2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_oE2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_oE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mhCB2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_fhCB2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_fhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmmhCB2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmmhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmmhCB8(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmfhCB2(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_mmfhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmfhCB8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - k = 4']);
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
legend(c);


%% cummulative classification accuracy - comprehensive

fig_4 = figure(4);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_orS1(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_orS2(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_orS4(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_orS8(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_uE(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmmhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmmhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmmhCB8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmfhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmfhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mmfhCB8(1:range1,end),'lineWidth',1); hold on
% title([dataset ' - cumulative classification accuracy']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    %     'mini-batch context k = 1'...
    %     'mini-batch context k = 2',...
    %     'mini-batch context k = 4',...
    %     'mini-batch context k = 8',...
    'universal embedding',...
    'mini-batch embedding k = 2',...
    'mini-batch embedding k = 4',...
    'mini-batch embedding k = 8',...
    'on-line embedding k = 2',...
    'on-line embedding k = 4',...
    'on-line embedding k = 8',...
    'mini-batch-history CB k = 2',...
    'mini-batch-history CB k = 4',...
    'mini-batch-history CB k = 8',...
    'full-history CB k = 2',...
    'full-history CB k = 4',...
    'full-history CB k = 8',...
    'multi-mode mini-batch-history CB k = 2',...
    'multi-mode mini-batch-history CB k = 4',...
    'multi-mode mini-batch-history CB k = 8',...
    'multi-mode full-history CB k = 2',...
    'multi-mode full-history CB k = 4',...
    'multi-mode full-history CB k = 8'};
legend(c);

%% Comparison 1:

fig_2 = figure(2);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS1(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS2(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS4(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS8(1:range1,end),'--','lineWidth',1); hold on
title([dataset ' - accuracy - baseline vs. staged oracle']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    'mini-batch context k = 1'...
    'mini-batch context k = 2',...
    'mini-batch context k = 4',...
    'mini-batch context k = 8'};
legend(c);

%% Comparison 2:

fig_3 = figure(3);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS1(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS2(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS4(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS8(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_mE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - accuracy - baseline, best policy, offline']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    'mini-batch context k = 1'...
    'mini-batch context k = 2',...
    'mini-batch context k = 4',...
    'mini-batch context k = 8',...
    'mini-batch embedding k = 2',...
    'mini-batch embedding k = 4',...
    'mini-batch embedding k = 8'};
legend(c);

%% Comparison 3:

fig_4 = figure(4);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS1(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS2(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS4(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS8(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_oE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - accuracy - baseline, best policy, on-line']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    'mini-batch context k = 1'...
    'mini-batch context k = 2',...
    'mini-batch context k = 4',...
    'mini-batch context k = 8',...
    'on-line embedding k = 2',...
    'on-line embedding k = 4',...
    'on-line embedding k = 8'};
legend(c);

%% Comparison 5:

fig_5 = figure(5);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS1(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS2(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS4(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS8(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_mhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - accuracy - baseline, best policy, offline CB']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    'mini-batch context k = 1'...
    'mini-batch context k = 2',...
    'mini-batch context k = 4',...
    'mini-batch context k = 8',...
    'mini-batch-history CB k = 2',...
    'mini-batch-history CB k = 4',...
    'mini-batch-history CB k = 8'};
legend(c);

%% Comparison 6:

fig_6 = figure(6);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS1(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_orS2(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS4(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_orS8(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_fhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - accuracy - baseline, best policy, on-line CB']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    'mini-batch context k = 1'...
    'mini-batch context k = 2',...
    'mini-batch context k = 4',...
    'mini-batch context k = 8',...
    'full-history CB k = 2',...
    'full-history CB k = 4',...
    'full-history CB k = 8'};
% };
legend(c);

%% Comparison 7:

fig_7 = figure(7);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - accuracy - baseline, offline vs. on-line']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    'mini-batch embedding k = 2',...
    'mini-batch embedding k = 4',...
    'mini-batch embedding k = 8',...
    'on-line embedding k = 2',...
    'on-line embedding k = 4',...
    'on-line embedding k = 8'};
legend(c);

%% Comparison 8:

fig_8 = figure(8);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - accuracy - baseline, offline CB vs. on-line CB']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    'mini-batch-history CB k = 2',...
    'mini-batch-history CB k = 4',...
    'mini-batch-history CB k = 8',...
    'full-history CB k = 2',...
    'full-history CB k = 4',...
    'full-history CB k = 8'};
legend(c);

%% Comparison 9:

fig_9 = figure(9);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mE8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_mhCB8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - accuracy - baseline, offline vs. offline CB']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    'mini-batch embedding k = 2',...
    'mini-batch embedding k = 4',...
    'mini-batch embedding k = 8',...
    'mini-batch-history CB k = 2',...
    'mini-batch-history CB k = 4',...
    'mini-batch-history CB k = 8'};
legend(c);

%% Comparison 10:

fig_mE2 = figure(10);
plot(1:range1,accuracy_b(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_oE8(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB2(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB4(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_fhCB8(1:range1,end),'lineWidth',1); hold on
title([dataset ' - accuracy - baseline, on-line vs. on-line CB']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = {'baseline',...
    'on-line embedding k = 2',...
    'on-line embedding k = 4',...
    'on-line embedding k = 8',...
    'full-history CB k = 2',...
    'full-history CB k = 4',...
    'full-history CB k = 8'};
legend(c);


%% show variation

ns_z = [learn_ns_z_b learn_ns_z_orS1 learn_ns_z_orS2 learn_ns_z_orS4 learn_ns_z_orS8 learn_ns_z_mE2 learn_ns_z_mE4 learn_ns_z_mE8 learn_ns_z_oE2 learn_ns_z_oE4 learn_ns_z_oE8 learn_ns_z_mhCB2 learn_ns_z_mhCB4 learn_ns_z_mhCB8 learn_ns_z_fhCB2 learn_ns_z_fhCB4 learn_ns_z_fhCB8];

n = length(unique(ns_z));
[l, m] = size(ns_z);
g = int64(l/window);

nz_window = zeros(n,g,m);

for j = 1:m
    
    for k = 1:n
        for t = 1:g
            nz_window(k,t,j) = length(find(ns_z((t-1)*window+1:t*window,j) == k))/window;
        end
    end
    
    fig_t = figure(10+j);
    bar(1:g, nz_window(:,:,j)', 1, 'stack')
    
    % Adjust the axis limits
    axis([0.5 g+0.5 0 1])
    set(gca, 'XTick', 1:g)
    
    c = {'baseline',...
        'mini-batch context k = 1'...
        'mini-batch context k = 2',...
        'mini-batch context k = 4',...
        'mini-batch context k = 8',...
        'mini-batch embedding k = 2',...
        'mini-batch embedding k = 4',...
        'mini-batch embedding k = 8',...
        'on-line embedding k = 2',...
        'on-line embedding k = 4',...
        'on-line embedding k = 8',...
        'mini-batch-history CB k = 2',...
        'mini-batch-history CB k = 4',...
        'mini-batch-history CB k = 8',...
        'full-history CB k = 2',...
        'full-history CB k = 4',...
        'full-history CB k = 8'};
    title([dataset ' - nonstationarity - ' c(j) ])
    xlabel('generation/window')
    ylabel('percentage')
    filename = strcat(pwd, '/results/', dataset, '-nonstationarity-', c(j), '.png')
    saveas(gcf,char(filename));
    close gcf;
    
end
