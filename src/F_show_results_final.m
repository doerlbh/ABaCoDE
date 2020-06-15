% show results
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% updated December 2017

% e.g. F_show_results_final('MNIST-unshuffled', 8000, 1, 0)

function F_show_results_final(dataset, range1, upperbound, isPlot)

% clear all; close all;

%% setup

path_doerlbh = '/Users/DoerLBH/Dropbox/git/IBM_ABaCoDE/';
addpath(path_doerlbh);
addpath([path_doerlbh 'log'])

% dataset = 'MNIST-unshuffled'
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
disp(dataset);

path_doerlbh = '/Users/DoerLBH/Dropbox/git/IBM_ABaCoDE/';

%% plotting

% range1 = size(accuracy_b,1);
% range1 = 10000;
% range1 = 8000;
% range1 = 5000;
% upperbound = 1

%% Table

b_acc = [accuracy_b(range1,end)];
uE_acc = [accuracy_uE(range1,end)];
mE_acc = [accuracy_mE2(range1,end) accuracy_mE4(range1,end) accuracy_mE8(range1,end)];
oE_acc = [accuracy_oE2(range1,end) accuracy_oE4(range1,end) accuracy_oE8(range1,end)];

sum_max = 100*[max(b_acc) max(uE_acc) max(mE_acc) max(oE_acc)];
system(['echo ' dataset ' t=' num2str(range1) ' >> ' path_doerlbh 'results/max.txt']);
system(['echo ' num2str(sum_max(1)) ' ' num2str(sum_max(2)) ' ' num2str(sum_max(3)) ' ' num2str(sum_max(4)) ' >> ' path_doerlbh 'results/max.txt']);

if isPlot
    %% k = 2 - comprehensive
    
    fig_1 = figure(1);
    plot(1:range1,accuracy_b(1:range1,end),'-','color','k','lineWidth',1); hold on
    plot(1:range1,accuracy_uE(1:range1,end),'-.','color','k','lineWidth',1); hold on
    plot(1:range1,accuracy_mE2(1:range1,end),':','color','k','lineWidth',1); hold on
    plot(1:range1,accuracy_oE2(1:range1,end),'--','color','k','lineWidth',1); hold on
    xlabel('t');
    ylabel('accuracy');
    ylim([0 upperbound]);
    c = { 'baseline',...
        'universal embedding',...
        'mini-batch embedding',...
        'on-line embedding'};
    c_short = { 'base',...
        'uE',...
        'mE',...
        'oE'};
    legend(c_short,'Location','northwest');
    set(gca,'FontSize',18);
    saveas(fig_1,[path_doerlbh 'results/' dataset '-acc-k-2-t-' num2str(range1) '.png'])
    close(fig_1)
    
    %% k = 4 - comprehensive
    
    fig_2 = figure(2);
    plot(1:range1,accuracy_b(1:range1,end),'-','color','k','lineWidth',1); hold on
    plot(1:range1,accuracy_uE(1:range1,end),'-.','color','k','lineWidth',1); hold on
    plot(1:range1,accuracy_mE4(1:range1,end),':','color','k','lineWidth',1); hold on
    plot(1:range1,accuracy_oE4(1:range1,end),'--','color','k','lineWidth',1); hold on
    xlabel('t');
    ylabel('accuracy');
    ylim([0 upperbound]);
    c = { 'baseline',...
        'universal embedding',...
        'mini-batch embedding',...
        'on-line embedding'};
    c_short = { 'base',...
        'uE',...
        'mE',...
        'oE'};
    legend(c_short,'Location','northwest');
    set(gca,'FontSize',18);
    saveas(fig_2,[path_doerlbh 'results/' dataset '-acc-k-4-t-' num2str(range1) '.png'])
    close(fig_2)
    
    %% k = 8 - comprehensive
    
    fig_3 = figure(3);
    plot(1:range1,accuracy_b(1:range1,end),'-','color','k','lineWidth',1); hold on
    plot(1:range1,accuracy_uE(1:range1,end),'-.','color','k','lineWidth',1); hold on
    plot(1:range1,accuracy_mE8(1:range1,end),':','color','k','lineWidth',1); hold on
    plot(1:range1,accuracy_oE8(1:range1,end),'--','color','k','lineWidth',1); hold on
    xlabel('t');
    ylabel('accuracy');
    ylim([0 upperbound]);
    c = { 'baseline',...
        'universal embedding',...
        'mini-batch embedding',...
        'on-line embedding'};
    c_short = { 'base',...
        'uE',...
        'mE',...
        'oE'};
    legend(c_short,'Location','northwest');
    set(gca,'FontSize',18);
    saveas(fig_3,[path_doerlbh 'results/' dataset '-acc-k-8-t-' num2str(range1) '.png'])
    close(fig_3)
    
    %% k = 2 - comprehensive
    
    fig_4 = figure(4);
    plot(1:range1,[1:range1]'.*accuracy_b(1:range1,end),'-','color','k','lineWidth',1); hold on
    plot(1:range1,[1:range1]'.*accuracy_uE(1:range1,end),'-.','color','k','lineWidth',1); hold on
    plot(1:range1,[1:range1]'.*accuracy_mE2(1:range1,end),':','color','k','lineWidth',1); hold on
    plot(1:range1,[1:range1]'.*accuracy_oE2(1:range1,end),'--','color','k','lineWidth',1); hold on
    xlabel('t');
    ylabel('reward');
    c = { 'baseline',...
        'universal embedding',...
        'mini-batch embedding',...
        'on-line embedding'};
    c_short = { 'base',...
        'uE',...
        'mE',...
        'oE'};
    legend(c_short,'Location','northwest');
    set(gca,'FontSize',18);
    saveas(fig_4,[path_doerlbh 'results/' dataset '-reward-k-2-t-' num2str(range1) '.png'])
    close(fig_4)
    
    %% k = 4 - comprehensive
    
    fig_5 = figure(5);
    plot(1:range1,[1:range1]'.*accuracy_b(1:range1,end),'-','color','k','lineWidth',1); hold on
    plot(1:range1,[1:range1]'.*accuracy_uE(1:range1,end),'-.','color','k','lineWidth',1); hold on
    plot(1:range1,[1:range1]'.*accuracy_mE4(1:range1,end),':','color','k','lineWidth',1); hold on
    plot(1:range1,[1:range1]'.*accuracy_oE4(1:range1,end),'--','color','k','lineWidth',1); hold on
    xlabel('t');
    ylabel('reward');
    c = { 'baseline',...
        'universal embedding',...
        'mini-batch embedding',...
        'on-line embedding'};
    c_short = { 'base',...
        'uE',...
        'mE',...
        'oE'};
    legend(c_short,'Location','northwest');
    set(gca,'FontSize',18);
    saveas(fig_5,[path_doerlbh 'results/' dataset '-reward-k-4-t-' num2str(range1) '.png'])
    close(fig_5)
    
    %% k = 8 - comprehensive
    
    fig_6 = figure(6);
    plot(1:range1,[1:range1]'.*accuracy_b(1:range1,end),'-','color','k','lineWidth',1); hold on
    plot(1:range1,[1:range1]'.*accuracy_uE(1:range1,end),'-.','color','k','lineWidth',1); hold on
    plot(1:range1,[1:range1]'.*accuracy_mE8(1:range1,end),':','color','k','lineWidth',1); hold on
    plot(1:range1,[1:range1]'.*accuracy_oE8(1:range1,end),'--','color','k','lineWidth',1); hold on
    xlabel('t');
    ylabel('reward');
    c = { 'baseline',...
        'universal embedding',...
        'mini-batch embedding',...
        'on-line embedding'};
    c_short = { 'base',...
        'uE',...
        'mE',...
        'oE'};
    legend(c_short,'Location','northwest');
    set(gca,'FontSize',18);
    saveas(fig_6,[path_doerlbh 'results/' dataset '-reward-k-8-t-' num2str(range1) '.png'])
    close(fig_6)
    
end

end

