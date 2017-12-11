% load results
% Baihan Lin
% Columbia University
% October 2017 at IBM Research

% clear all; close all;

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

%% for data files

switch dataset
    case 'MNIST-shuffled'
        

    case 'MNIST-unshuffled'
        output_file_00 ='./log/31-Oct-2017/K_main_classifier_MNIST-s_nonstationary_k_0_baseline_1000_americano.mat';
        
        output_file_06 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_1_cluster_oracle_staged_1000_americano.mat';
        
        output_file_07 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_oracle_staged_1000_americano.mat';
        output_file_08 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_oracle_staged_1000_americano.mat';
        output_file_09 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_oracle_staged_1000_americano.mat';
        
        output_file_10 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_offline_1000_americano.mat';
        output_file_11 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_offline_1000_americano.mat';
        output_file_12 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_offline_1000_americano.mat';
        
        output_file_13 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_online_1000_americano.mat';
        output_file_14 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_online_1000_americano.mat';
        output_file_15 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_online_1000_americano.mat';
        
        output_file_16 ='./log/31-Oct-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_offline_MAB_1000_americano.mat';
        output_file_17 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_offline_MAB_1000_americano.mat';
        output_file_18 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_offline_MAB_1000_americano.mat';
        
        output_file_19 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_online_MAB_1000_americano.mat';
        output_file_20 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_online_MAB_1000_americano.mat';
        output_file_21 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_online_MAB_1000_americano.mat';
        
    case 'Caltech101S-unshuffled'
        
        output_file_00 = './log/04-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_0_baseline_1000_americano.mat';
        output_file_06 = './log/31-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_1_cluster_oracle_staged_1000_americano.mat';
        
        output_file_03 = './log/28-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_oracle_1000_doerlbh.mat';
        output_file_04 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_oracle_1000_gcp-gpu.mat';
        output_file_05 = './log/02-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_oracle_1000_americano.mat';
        
        output_file_07 = './log/07-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_oracle_staged_1000_americano.mat';
        output_file_08 = './log/31-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_oracle_staged_1000_gcp-gpu.mat';
        output_file_09 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_oracle_staged_1000_americano.mat';
        
        output_file_10 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_offline_1000_gcp-gpu.mat';
        output_file_11 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_offline_1000_americano.mat';
        output_file_12 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_offline_1000_americano.mat';
        
        output_file_13 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_online_1000_americano.mat';
        output_file_14 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_online_1000_americano.mat';
        output_file_15 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_online_1000_gcp-gpu.mat';
        
        output_file_16 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_17 = './log/31-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_18 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_offline_MAB_1000_americano.mat';
        
        output_file_19 = './log/29-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_online_MAB_1000_gcp-gpu.mat';
        output_file_20 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_online_MAB_1000_americano.mat';
        output_file_21 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_online_MAB_1000_americano.mat';
        
    case 'CIFAR-10-unshuffled'
        
        output_file_00 = './log/05-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_0_baseline_1000_americano.mat';
        
        output_file_06 = './log/13-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_1_cluster_oracle_staged_1000_gcp-gpu.mat';
        output_file_07 = './log/12-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_oracle_staged_1000_gcp-gpu.mat';
        output_file_08 = './log/09-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_oracle_staged_1000_latte.mat';
        output_file_09 = './log/02-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_oracle_staged_1000_latte.mat';
        
        output_file_10 = './log/05-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_offline_1000_latte.mat';
        output_file_11 = './log/09-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_offline_1000_latte.mat';
        output_file_12 = './log/02-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_offline_1000_latte.mat';
        
        output_file_13 = './log/05-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_online_1000_latte.mat';
        output_file_14 = './log/09-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_online_1000_americano.mat';
        output_file_15 = './log/12-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_online_1000_americano.mat';
        
        output_file_16 = './log/01-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_17 = './log/12-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_18 = './log/10-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_offline_MAB_1000_gcp-gpu.mat';
        
        output_file_19 = './log/08-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_online_MAB_1000_gcp-gpu.mat';
        output_file_20 = './log/13-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_online_MAB_1000_gcp-gpu.mat';
        output_file_21 = './log/13-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_online_MAB_1000_gcp-gpu.mat';
        
    case 'CIFAR-100C-unshuffled'
        
    case 'STL10-unshuffled'
        
        output_file_00 ='./log/01-Nov-2017/K_main_classifier_STL10_nonstationary_k_0_baseline_1000_americano.mat';
        
        output_file_06 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_1_cluster_oracle_staged_1000_americano.mat';
        
        output_file_07 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_oracle_staged_1000_americano.mat';
        output_file_08 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_4_cluster_oracle_staged_1000_americano.mat';
        output_file_09 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_oracle_staged_1000_americano.mat';
        
        output_file_10 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_offline_1000_americano.mat';
        output_file_11 ='./log/04-Nov-2017/K_main_classifier_STL10_nonstationary_k_4_cluster_offline_1000_americano.mat';
        output_file_12 ='./log/04-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_offline_1000_americano.mat';
        
        output_file_13 ='./log/04-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_online_1000_americano.mat';
        output_file_14 ='./log/03-Nov-2017/K_main_classifier_STL10_nonstationary_k_4_cluster_online_1000_americano.mat';
        output_file_15 ='./log/03-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_online_1000_americano.mat';
        
        output_file_16 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_17 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_offline_MAB_1000_americano.mat';
        output_file_18 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_offline_MAB_1000_americano.mat';
        
        output_file_19 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_online_MAB_1000_americano.mat';
        output_file_20 ='./log/03-Nov-2017/K_main_classifier_STL10_nonstationary_k_4_cluster_online_MAB_1000_americano.mat';
        output_file_21 ='./log/03-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_online_MAB_1000_americano.mat';
        
    otherwise
        
        disp('wrong dataset!')
        
end

%% load data files

% [W_01,P_01,result_01,01,accuracy_01,embacc_01] = read_results([path 'results/W_main_classifier_01_latte'],1);
% [W_02,P_02,result_02,02,accuracy_02,embacc_02] = read_results([path 'results/W_main_classifier_02_espresso'],2);
% [W_03,P_03,result_03,03,accuracy_03,embacc_03] = read_results([path 'results/W_main_classifier_03_latte'],3);
% [W_04,P_04,result_04,04,accuracy_04,embacc_04] = read_results([path 'results/W_main_classifier_04_americano'],4);

[accuracy_00,learn_ns_z_00] = K_read_results(output_file_00,1);
[accuracy_06,learn_ns_z_06] = K_read_results(output_file_06,1);
[accuracy_07,learn_ns_z_07] = K_read_results(output_file_07,1);
[accuracy_08,learn_ns_z_08] = K_read_results(output_file_08,0);
[accuracy_09,learn_ns_z_09] = K_read_results(output_file_09,0);
[accuracy_10,learn_ns_z_10] = K_read_results(output_file_10,0);
[accuracy_11,learn_ns_z_11] = K_read_results(output_file_11,0);
[accuracy_12,learn_ns_z_12] = K_read_results(output_file_12,0);
[accuracy_13,learn_ns_z_13] = K_read_results(output_file_13,0);
[accuracy_14,learn_ns_z_14] = K_read_results(output_file_14,1);
[accuracy_15,learn_ns_z_15] = K_read_results(output_file_15,1);
[accuracy_16,learn_ns_z_16] = K_read_results(output_file_16,1);
[accuracy_17,learn_ns_z_17] = K_read_results(output_file_17,1);
[accuracy_18,learn_ns_z_18] = K_read_results(output_file_18,1);
[accuracy_19,learn_ns_z_19] = K_read_results(output_file_19,1);
[accuracy_20,learn_ns_z_20] = K_read_results(output_file_20,1);
[accuracy_21,learn_ns_z_21] = K_read_results(output_file_21,1);

save(['result-' dataset]);
