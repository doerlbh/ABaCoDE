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

dataset = 'MNIST-unshuffled'
% dataset = 'Caltech101S-unshuffled'
% dataset = 'CIFAR-10-unshuffled'
% dataset = 'STL10-unshuffled'
% dataset = 'warfarin-unshuffled'

% dataset = 'MNIST-shuffled'
% dataset = 'Caltech101S-shuffled'
% dataset = 'CIFAR-10-shuffled'
% dataset = 'STL10-shuffled'
% dataset = 'warfarin-shuffled'

% dataset = 'mnisfarin-unshuffled'
% dataset = 'mnisfarin-shuffled'

%%

window = 1000;

load(['result-' dataset]);

%% plotting

% range1 = size(accuracy_b,1);
% range1 = 10000;
range1 = 8000;
% range1 = 5000;
upperbound = 1

%% Table

b_acc = [accuracy_b(end,end)];
uE_acc = [accuracy_uE(end,end)];
% orS_acc = [accuracy_orS2(end,end) accuracy_orS4(end,end) accuracy_orS8(end,end)];
mE_acc = [accuracy_mE2(end,end) accuracy_mE4(end,end) accuracy_mE8(end,end)];
oE_acc = [accuracy_oE2(end,end) accuracy_oE4(end,end) accuracy_oE8(end,end)];
mhCB_acc = [accuracy_mhCB2(end,end) accuracy_mhCB4(end,end) accuracy_mhCB8(end,end)];
fhCB_acc = [accuracy_fhCB2(end,end) accuracy_fhCB4(end,end) accuracy_fhCB8(end,end)];
mmmhCB_acc = [accuracy_mmmhCB2(end,end) accuracy_mmmhCB4(end,end) accuracy_mmmhCB8(end,end)];
mmfhCB_acc = [accuracy_mmfhCB2(end,end) accuracy_mmfhCB4(end,end) accuracy_mmfhCB8(end,end)];

% b_acc = [accuracy_b(range1,end)];
% uE_acc = [accuracy_uE(range1,end)];
% % orS_acc = [accuracy_orS2(range1,end) accuracy_orS4(range1,end) accuracy_orS8(range1,end)];
% mE_acc = [accuracy_mE2(range1,end) accuracy_mE4(range1,end) accuracy_mE8(range1,end)];
% oE_acc = [accuracy_oE2(range1,end) accuracy_oE4(range1,end) accuracy_oE8(range1,end)];
% mhCB_acc = [accuracy_mhCB2(range1,end) accuracy_mhCB4(range1,end) accuracy_mhCB8(range1,end)];
% fhCB_acc = [accuracy_fhCB2(range1,end) accuracy_fhCB4(range1,end) accuracy_fhCB8(range1,end)];
% mmmhCB_acc = [accuracy_mmmhCB2(range1,end) accuracy_mmmhCB4(range1,end) accuracy_mmmhCB8(range1,end)];
% mmfhCB_acc = [accuracy_mmfhCB2(range1,end) accuracy_mmfhCB4(range1,end) accuracy_mmfhCB8(range1,end)];

% summary_acc = [mean(b_acc) std(b_acc);
%     mean(uE_acc) std(uE_acc);
% %     mean(orS_acc) std(orS_acc);
%     mean(mE_acc) std(mE_acc);
%     mean(oE_acc) std(oE_acc);
%     mean(mhCB_acc) std(mhCB_acc);
%     mean(fhCB_acc) std(fhCB_acc);
%     mean(mmmhCB_acc) std(mmmhCB_acc);
%     mean(mmfhCB_acc) std(mmfhCB_acc)]

summary_acc = 100*[mean(b_acc) mean(uE_acc) mean(mE_acc) std(mE_acc) mean(oE_acc) std(oE_acc) mean(mhCB_acc) std(mhCB_acc) mean(fhCB_acc) std(fhCB_acc) mean(mmmhCB_acc) std(mmmhCB_acc) mean(mmfhCB_acc) std(mmfhCB_acc)]

%% k = 2 - comprehensive

fig_1 = figure(1);
plot(1:size(accuracy_b,1),accuracy_b(1:end,end),'--','color','k','lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS1(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS2(1:end,end),'--','lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS4(1:end,end),'--','lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS8(1:end,end),'--','lineWidth',1); hold on
plot(1:size(accuracy_uE,1),accuracy_uE(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mE2,1),accuracy_mE2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mE4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mE8(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_oE2,1),accuracy_oE2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_oE4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_oE8(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mhCB2,1),accuracy_mhCB2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mhCB4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mhCB8(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_fhCB2,1),accuracy_fhCB2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_fhCB4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_fhCB8(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mmmhCB2,1),accuracy_mmmhCB2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmmhCB4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmmhCB8(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mmfhCB2,1),accuracy_mmfhCB2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmfhCB4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmfhCB8(1:end,end),'lineWidth',1); hold on
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


%% k = 4 - comprehensive

fig_2 = figure(2);
plot(1:size(accuracy_b,1),accuracy_b(1:end,end),'--','color','k','lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS1(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS2(1:end,end),'--','lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS4(1:end,end),'--','lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS8(1:end,end),'--','lineWidth',1); hold on
plot(1:size(accuracy_uE,1),accuracy_uE(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mE2(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mE4,1),accuracy_mE4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mE8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_oE2(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_oE4,1),accuracy_oE4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_oE8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mhCB2(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mhCB4,1),accuracy_mhCB4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mhCB8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_fhCB2(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_fhCB4,1),accuracy_fhCB4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_fhCB8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmmhCB2(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mmmhCB4,1),accuracy_mmmhCB4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmmhCB8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmfhCB2(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mmfhCB4,1),accuracy_mmfhCB4(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmfhCB8(1:end,end),'lineWidth',1); hold on
% title([dataset ' - k = 4']);
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

%% k = 8 - comprehensive

fig_3 = figure(3);
plot(1:size(accuracy_b,1),accuracy_b(1:end,end),'--','color','k','lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS1(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS2(1:end,end),'--','lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS4(1:end,end),'--','lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_orS8(1:end,end),'--','lineWidth',1); hold on
plot(1:size(accuracy_uE,1),accuracy_uE(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mE2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mE4(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mE8,1),accuracy_mE8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_oE2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_oE4(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_oE8,1),accuracy_oE8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mhCB2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mhCB4(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mhCB8,1),accuracy_mhCB8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_fhCB2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_fhCB4(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_fhCB8,1),accuracy_fhCB8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmmhCB2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmmhCB4(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mmmhCB8,1),accuracy_mmmhCB8(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmfhCB2(1:end,end),'lineWidth',1); hold on
% plot(1:size(accuracy_,1),accuracy_mmfhCB4(1:end,end),'lineWidth',1); hold on
plot(1:size(accuracy_mmfhCB8,1),accuracy_mmfhCB8(1:end,end),'lineWidth',1); hold on
% title([dataset ' - k = 8']);
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

fig_4 = figure(4);
plot(1:size(accuracy_b,1),-sort(-accuracy_b(1:end,end)),'--','color','k','lineWidth',1); hold on
plot(1:size(accuracy_uE,1),-sort(-accuracy_uE(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mE2,1),-sort(-accuracy_mE2(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_oE2,1),-sort(-accuracy_oE2(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mhCB2,1),-sort(-accuracy_mhCB2(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_fhCB2,1),-sort(-accuracy_fhCB2(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mmmhCB2,1),-sort(-accuracy_mmmhCB2(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mmfhCB2,1),-sort(-accuracy_mmfhCB2(1:end,end)),'lineWidth',1); hold on
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


%% k = 4 - comprehensive

fig_5 = figure(5);
plot(1:size(accuracy_b,1),-sort(-accuracy_b(1:end,end)),'--','color','k','lineWidth',1); hold on
plot(1:size(accuracy_uE,1),-sort(-accuracy_uE(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mE4,1),-sort(-accuracy_mE4(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_oE4,1),-sort(-accuracy_oE4(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mhCB4,1),-sort(-accuracy_mhCB4(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_fhCB4,1),-sort(-accuracy_fhCB4(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mmmhCB4,1),-sort(-accuracy_mmmhCB4(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mmfhCB4,1),-sort(-accuracy_mmfhCB4(1:end,end)),'lineWidth',1); hold on
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

%% k = 8 - comprehensive

fig_6 = figure(6);
plot(1:size(accuracy_b,1),-sort(-accuracy_b(1:end,end)),'--','color','k','lineWidth',1); hold on
plot(1:size(accuracy_uE,1),-sort(-accuracy_uE(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mE8,1),-sort(-accuracy_mE8(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_oE8,1),-sort(-accuracy_oE8(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mhCB8,1),-sort(-accuracy_mhCB8(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_fhCB8,1),-sort(-accuracy_fhCB8(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mmmhCB8,1),-sort(-accuracy_mmmhCB8(1:end,end)),'lineWidth',1); hold on
plot(1:size(accuracy_mmfhCB8,1),-sort(-accuracy_mmfhCB8(1:end,end)),'lineWidth',1); hold on
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




%% old range stuff

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
% title([dataset ' - k = 4']);
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
% title([dataset ' - k = 8']);
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

fig_4 = figure(4);
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


%% k = 4 - comprehensive

fig_5 = figure(5);
plot(1:range1,-sort(-accuracy_b(1:range1,end)),'--','color','k','lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_uE(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mE4(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_oE4(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mhCB4(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_fhCB4(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mmmhCB4(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mmfhCB4(1:range1,end)),'lineWidth',1); hold on
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

%% k = 8 - comprehensive

fig_6 = figure(6);
plot(1:range1,-sort(-accuracy_b(1:range1,end)),'--','color','k','lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_uE(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mE8(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_oE8(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mhCB8(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_fhCB8(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mmmhCB8(1:range1,end)),'lineWidth',1); hold on
plot(1:range1,-sort(-accuracy_mmfhCB8(1:range1,end)),'lineWidth',1); hold on
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


