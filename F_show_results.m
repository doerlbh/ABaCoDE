% show results
% Baihan Lin
% Columbia University
% October 2017 at IBM Research


clear all; close all;

%% setup

% path = '/Users/DoerLBH/Dropbox/git/IBM_Internal_Attentive_Bandit/';
% system(['cd ' path]);
cd ../../Dropbox/Git/IBM_Internal_Attentive_Bandit/

%%

dataset = 'MNIST-s'
% dataset = 'Caltech101S'
% dataset = 'CIFAR-10'
% dataset = 'CIFAR-100C'
% dataset = 'STL10'

window = 1000;

load(['result-' dataset]);

%% plotting

% range1 = size(accuracy_00,1);
range1 = 8000;
% range1 = 20000;
upperbound = 0.4

%% Table

base_acc = [accuracy_00(range1,end)];
minicont_acc = [accuracy_07(range1,end) accuracy_08(range1,end) accuracy_09(range1,end)];
miniemb_acc = [accuracy_10(range1,end) accuracy_11(range1,end) accuracy_12(range1,end)];
onemb_acc = [accuracy_13(range1,end) accuracy_14(range1,end) accuracy_15(range1,end)];
miniCB_acc = [accuracy_16(range1,end) accuracy_17(range1,end) accuracy_18(range1,end)];
fullCB_acc = [accuracy_19(range1,end) accuracy_20(range1,end) accuracy_21(range1,end)];

summary_acc = [mean(base_acc) std(base_acc);
    mean(minicont_acc) std(minicont_acc);
    mean(miniemb_acc) std(miniemb_acc);
    mean(onemb_acc) std(onemb_acc);
    mean(miniCB_acc) std(miniCB_acc);
    mean(fullCB_acc) std(fullCB_acc)]

%% k = 2 - comprehensive

fig_1 = figure(1);
plot(1:range1,accuracy_00(1:range1,end),'--','color','k','lineWidth',1); hold on
% plot(1:range1,accuracy_06(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_07(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_08(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_09(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_10(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_11(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_12(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_13(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_14(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_15(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_16(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_17(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_18(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_19(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_20(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_21(1:range1,end),'lineWidth',1); hold on
% title([dataset ' - k = 2']);
% title([dataset ' - cumulative classification accuracy']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = { 'baseline',...
    %     'mini-batch context k = 1'...
%     'mini-batch context k = 2',...
    %     'mini-batch context k = 4',...
    %     'mini-batch context k = 8',...
    'mini-batch embedding',... k = 2',...
    %     'mini-batch embedding k = 4',...
    %     'mini-batch embedding k = 8',...
    'on-line embedding',...  k = 2',...
    %     'on-line embedding k = 4',...
    %     'on-line embedding k = 8',...
    'mini-batch-history CB',...  k = 2',...
    %     'mini-batch-history CB k = 4',...
    %     'mini-batch-history CB k = 8',...
    'full-history CB'}; %  k = 2',...
%     'full-history CB k = 4',...
%     'full-history CB k = 8'};
legend(c);


%% k = 4 - comprehensive

fig_2 = figure(2);
plot(1:range1,accuracy_00(1:range1,end),'--','color','k','lineWidth',1); hold on
% plot(1:range1,accuracy_06(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_07(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_08(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_09(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_10(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_11(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_12(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_13(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_14(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_15(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_16(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_17(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_18(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_19(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_20(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_21(1:range1,end),'lineWidth',1); hold on
% title([dataset ' - k = 4']);
% title([dataset ' - cumulative classification accuracy']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = { 'baseline',...
    %     'mini-batch context k = 1'...
    %     'mini-batch context k = 2',...
%     'mini-batch context k = 4',...
    %     'mini-batch context k = 8',...
    %     'mini-batch embedding k = 2',...
    'mini-batch embedding',... k = 4',...
    %     'mini-batch embedding k = 8',...
    %     'on-line embedding k = 2',...
    'on-line embedding',... k = 4',...
    %     'on-line embedding k = 8',...
    %     'mini-batch-history CB k = 2',...
    'mini-batch-history CB',... k = 4
    %     'mini-batch-history CB k = 8',...
    %     'full-history CB k = 2',...
    'full-history CB'};% k = 4'};%,...
%     'full-history CB k = 8'};
legend(c);


%% k = 8 - comprehensive

fig_3 = figure(3);
plot(1:range1,accuracy_00(1:range1,end),'--','color','k','lineWidth',1); hold on
% plot(1:range1,accuracy_06(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_07(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_08(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_09(1:range1,end),'--','lineWidth',1); hold on
% plot(1:range1,accuracy_10(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_11(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_12(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_13(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_14(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_15(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_16(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_17(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_18(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_19(1:range1,end),'lineWidth',1); hold on
% plot(1:range1,accuracy_20(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_21(1:range1,end),'lineWidth',1); hold on
% title([dataset ' - k = 8']);
% title([dataset ' - cumulative classification accuracy']);
xlabel('t');
ylabel('accuracy');
ylim([0 upperbound]);
c = { 'baseline',...
    %     'mini-batch context k = 1'...
    %     'mini-batch context k = 2',...
    %     'mini-batch context k = 4',...
%     'mini-batch context k = 8',...
    %     'mini-batch embedding k = 2',...
    %     'mini-batch embedding k = 4',...
    'mini-batch embedding',... k = 8'
    %     'on-line embedding k = 2',...
    %     'on-line embedding k = 4',...
    'on-line embedding',... k = 8
    %     'mini-batch-history CB k = 2',...
    %     'mini-batch-history CB k = 4',...
    'mini-batch-history CB',... k = 8',...
    %     'full-history CB k = 2',...
    %     'full-history CB k = 4',...
    'full-history CB'};% k = 8
legend(c);




%% cummulative classification accuracy - comprehensive

fig_4 = figure(4);
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_06(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_07(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_08(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_09(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_10(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_11(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_12(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_13(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_14(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_15(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_16(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_17(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_18(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_19(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_20(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_21(1:range1,end),'lineWidth',1); hold on
% title([dataset ' - cumulative classification accuracy']);
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
legend(c);

%% Comparison 1:

fig_2 = figure(2);
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_06(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_07(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_08(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_09(1:range1,end),'--','lineWidth',1); hold on
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
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_06(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_07(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_08(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_09(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_10(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_11(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_12(1:range1,end),'lineWidth',1); hold on
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
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_06(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_07(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_08(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_09(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_13(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_14(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_15(1:range1,end),'lineWidth',1); hold on
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
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_06(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_07(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_08(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_09(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_16(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_17(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_18(1:range1,end),'lineWidth',1); hold on
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
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_06(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_07(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_08(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_09(1:range1,end),'--','lineWidth',1); hold on
plot(1:range1,accuracy_19(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_20(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_21(1:range1,end),'lineWidth',1); hold on
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
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_10(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_11(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_12(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_13(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_14(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_15(1:range1,end),'lineWidth',1); hold on
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
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_16(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_17(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_18(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_19(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_20(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_21(1:range1,end),'lineWidth',1); hold on
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
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_10(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_11(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_12(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_16(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_17(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_18(1:range1,end),'lineWidth',1); hold on
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

fig_10 = figure(10);
plot(1:range1,accuracy_00(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_13(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_14(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_15(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_19(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_20(1:range1,end),'lineWidth',1); hold on
plot(1:range1,accuracy_21(1:range1,end),'lineWidth',1); hold on
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

ns_z = [learn_ns_z_00 learn_ns_z_06 learn_ns_z_07 learn_ns_z_08 learn_ns_z_09 learn_ns_z_10 learn_ns_z_11 learn_ns_z_12 learn_ns_z_13 learn_ns_z_14 learn_ns_z_15 learn_ns_z_16 learn_ns_z_17 learn_ns_z_18 learn_ns_z_19 learn_ns_z_20 learn_ns_z_21];

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
