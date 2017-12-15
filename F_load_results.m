% load results
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% updated December 2017

% clear all; close all;

%% setup

loc = 'americano';

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
addpath([path 'log/10-Dec-2017'])
addpath([path 'log/11-Dec-2017'])
addpath([path 'log/12-Dec-2017'])
addpath([path 'log/13-Dec-2017'])
addpath([path 'log/14-Dec-2017'])
addpath([path 'log/15-Dec-2017'])
addpath('/home/sunnylin/Dropbox/Git/IBM_Internal_Attentive_Bandit/')

% dataset = 'MNIST-unshuffled'
% dataset = 'Caltech101S-unshuffled'
% dataset = 'CIFAR-10-unshuffled'
% dataset = 'CIFAR-100C-unshuffled'
% dataset = 'STL10-unshuffled'
dataset = 'MNIST-shuffled'
% dataset = 'Caltech101S-shuffled'
% dataset = 'CIFAR-10-shuffled'
% dataset = 'CIFAR-100C-shuffled'
% dataset = 'STL10-shuffled'

%% for data files

switch dataset
    case 'MNIST-shuffled'
        
        output_file_b = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_0_baseline_1000_gcp-gpu.mat'
        
        output_file_orS1 = ''
        output_file_orS2 = ''
        output_file_orS4 = ''
        output_file_orS8 = ''
        
        output_file_mE2 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_mE4 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_4_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_mE8 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_8_minibatch_embedding_1000_gcp-gpu.mat'
        
        output_file_uE = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        
        output_file_oE2 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_oE4 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_4_online_embedding_1000_gcp-gpu.mat'
        output_file_oE8 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_8_online_embedding_1000_gcp-gpu.mat'
        
        output_file_mhCB2 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mhCB4 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_4_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mhCB8 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_8_minibatch_history_CB_1000_gcp-gpu.mat'
        
        output_file_fhCB2 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB4 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_4_full_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB8 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_8_full_history_CB_1000_gcp-gpu.mat'
        
        output_file_mmmhCB2 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB4 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_4_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB8 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_8_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        
        output_file_mmfhCB2 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB4 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_4_multimode_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB8 = 'F_main_classifier_MNIST-s_nonstationary_shuffled_k_8_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'STL10-shuffled'
        
                output_file_b = ''
        
                output_file_orS1 = ''
                output_file_orS2 = ''
                output_file_orS4 = ''
                output_file_orS8 = ''
        
                output_file_mE2 = ''
                output_file_mE4 = ''
                output_file_mE8 = ''
        
                output_file_uE = 'F_main_classifier_STL10_nonstationary_shuffled_k_1_universal_embedding_1000_gcp'
        
                output_file_oE2 = ''
                output_file_oE4 = ''
                output_file_oE8 = ''
        
                output_file_mhCB2 = ''
                output_file_mhCB4 = ''
                output_file_mhCB8 = ''
        
                output_file_fhCB2 = ''
                output_file_fhCB4 = ''
                output_file_fhCB8 = ''
         
                output_file_mmmhCB2 = ''
                output_file_mmmhCB4 = ''
                output_file_mmmhCB8 = ''
        
                output_file_mmfhCB2 = ''
                output_file_mmfhCB4 = ''
                output_file_mmfhCB8 = ''
        
        case 'CIFAR-10-shuffled'
        
        %         output_file_b =
        %
        %         output_file_orS1 =
        %         output_file_orS2 =
        %         output_file_orS4 =
        %         output_file_orS8 =
        %
        %         output_file_mE2 =
        %         output_file_mE4 =
        %         output_file_mE8 =
        %
        %         output_file_uE =
        %
        %         output_file_oE2 =
        %         output_file_oE4 =
        %         output_file_oE8 =
        %
        %         output_file_mhCB2 =
        %         output_file_mhCB4 =
        %         output_file_mhCB8 =
        %
        %         output_file_fhCB2 =
        %         output_file_fhCB4 =
        %         output_file_fhCB8 =
        %
        %         output_file_mmmhCB2 =
        %         output_file_mmmhCB4 =
        %         output_file_mmmhCB8 =
        %
        %         output_file_mmfhCB2 =
        %         output_file_mmfhCB4 =
        %         output_file_mmfhCB8 =
        
    case 'MNIST-unshuffled'
        output_file_b ='./log/31-Oct-2017/K_main_classifier_MNIST-s_nonstationary_k_0_b_1000_americano.mat';
        
        output_file_orS1 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_1_cluster_oracle_staged_1000_americano.mat';
        
        output_file_orS2 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_oracle_staged_1000_americano.mat';
        output_file_orS4 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_oracle_staged_1000_americano.mat';
        output_file_orS8 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_oracle_staged_1000_americano.mat';
        
        output_file_mE2 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_offline_1000_americano.mat';
        output_file_mE4 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_offline_1000_americano.mat';
        output_file_mE8 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_offline_1000_americano.mat';
        
        output_file_oE2 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_online_1000_americano.mat';
        output_file_oE4 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_online_1000_americano.mat';
        output_file_oE8 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_online_1000_americano.mat';
        
        output_file_mhCB2 ='./log/31-Oct-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_offline_MAB_1000_americano.mat';
        output_file_mhCB4 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_offline_MAB_1000_americano.mat';
        output_file_mhCB8 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_offline_MAB_1000_americano.mat';
        
        output_file_fhCB2 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_2_cluster_online_MAB_1000_americano.mat';
        output_file_fhCB4 ='./log/01-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_4_cluster_online_MAB_1000_americano.mat';
        output_file_fhCB8 ='./log/02-Nov-2017/K_main_classifier_MNIST-s_nonstationary_k_8_cluster_online_MAB_1000_americano.mat';
        
        output_file_uE = 'F_main_classifier_MNIST-s_nonstationary_unshuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        
        output_file_mmmhCB2 = 'F_main_classifier_MNIST-s_nonstationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB4 = 'F_main_classifier_MNIST-s_nonstationary_unshuffled_k_4_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB8 = 'F_main_classifier_MNIST-s_nonstationary_unshuffled_k_8_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        
        output_file_mmfhCB2 = 'F_main_classifier_MNIST-s_nonstationary_unshuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB4 = 'F_main_classifier_MNIST-s_nonstationary_unshuffled_k_4_multimode_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB8 = 'F_main_classifier_MNIST-s_nonstationary_unshuffled_k_8_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'Caltech101S-unshuffled'
        
        output_file_b = './log/04-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_0_b_1000_americano.mat';
        output_file_orS1 = './log/31-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_1_cluster_oracle_staged_1000_americano.mat';
        
        output_file_03 = './log/28-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_oracle_1000_doerlbh.mat';
        output_file_04 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_oracle_1000_gcp-gpu.mat';
        output_file_05 = './log/02-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_oracle_1000_americano.mat';
        
        output_file_orS2 = './log/07-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_oracle_staged_1000_americano.mat';
        output_file_orS4 = './log/31-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_oracle_staged_1000_gcp-gpu.mat';
        output_file_orS8 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_oracle_staged_1000_americano.mat';
        
        output_file_mE2 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_offline_1000_gcp-gpu.mat';
        output_file_mE4 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_offline_1000_americano.mat';
        output_file_mE8 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_offline_1000_americano.mat';
        
        output_file_oE2 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_online_1000_americano.mat';
        output_file_oE4 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_online_1000_americano.mat';
        output_file_oE8 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_online_1000_gcp-gpu.mat';
        
        output_file_mhCB2 = './log/30-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_mhCB4 = './log/31-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_mhCB8 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_offline_MAB_1000_americano.mat';
        
        output_file_fhCB2 = './log/29-Oct-2017/K_main_classifier_Caltech101S_nonstationary_k_2_cluster_online_MAB_1000_gcp-gpu.mat';
        output_file_fhCB4 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_4_cluster_online_MAB_1000_americano.mat';
        output_file_fhCB8 = './log/01-Nov-2017/K_main_classifier_Caltech101S_nonstationary_k_8_cluster_online_MAB_1000_americano.mat';
        
        output_file_uE = ''
        
        output_file_mmmhCB2 = ''
        output_file_mmmhCB4 = ''
        output_file_mmmhCB8 = ''
        
        output_file_mmfhCB2 = ''
        output_file_mmfhCB4 = ''
        output_file_mmfhCB8 = ''

    case 'CIFAR-10-unshuffled'
        
        output_file_b = './log/05-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_0_b_1000_americano.mat';
        
        output_file_orS1 = './log/13-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_1_cluster_oracle_staged_1000_gcp-gpu.mat';
        output_file_orS2 = './log/12-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_oracle_staged_1000_gcp-gpu.mat';
        output_file_orS4 = './log/09-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_oracle_staged_1000_latte.mat';
        output_file_orS8 = './log/02-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_oracle_staged_1000_latte.mat';
        
        output_file_mE2 = './log/05-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_offline_1000_latte.mat';
        output_file_mE4 = './log/09-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_offline_1000_latte.mat';
        output_file_mE8 = './log/02-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_offline_1000_latte.mat';
        
        output_file_oE2 = './log/05-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_online_1000_latte.mat';
        output_file_oE4 = './log/09-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_online_1000_americano.mat';
        output_file_oE8 = './log/12-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_online_1000_americano.mat';
        
        output_file_mhCB2 = './log/01-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_mhCB4 = './log/12-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_mhCB8 = './log/10-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_offline_MAB_1000_gcp-gpu.mat';
        
        output_file_fhCB2 = './log/08-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_2_cluster_online_MAB_1000_gcp-gpu.mat';
        output_file_fhCB4 = './log/13-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_4_cluster_online_MAB_1000_gcp-gpu.mat';
        output_file_fhCB8 = './log/13-Nov-2017/K_main_classifier_CIFAR-10_nonstationary_k_8_cluster_online_MAB_1000_gcp-gpu.mat';
                
        output_file_uE = ''
        
        output_file_mmmhCB2 = ''
        output_file_mmmhCB4 = ''
        output_file_mmmhCB8 = ''
        
        output_file_mmfhCB2 = ''
        output_file_mmfhCB4 = ''
        output_file_mmfhCB8 = ''

    case 'CIFAR-100C-unshuffled'
        
    case 'STL10-unshuffled'
        
        output_file_b ='./log/01-Nov-2017/K_main_classifier_STL10_nonstationary_k_0_b_1000_americano.mat';
        
        output_file_orS1 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_1_cluster_oracle_staged_1000_americano.mat';
        
        output_file_orS2 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_oracle_staged_1000_americano.mat';
        output_file_orS4 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_4_cluster_oracle_staged_1000_americano.mat';
        output_file_orS8 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_oracle_staged_1000_americano.mat';
        
        output_file_mE2 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_offline_1000_americano.mat';
        output_file_mE4 ='./log/04-Nov-2017/K_main_classifier_STL10_nonstationary_k_4_cluster_offline_1000_americano.mat';
        output_file_mE8 ='./log/04-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_offline_1000_americano.mat';
        
        output_file_oE2 ='./log/04-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_online_1000_americano.mat';
        output_file_oE4 ='./log/03-Nov-2017/K_main_classifier_STL10_nonstationary_k_4_cluster_online_1000_americano.mat';
        output_file_oE8 ='./log/03-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_online_1000_americano.mat';
        
        output_file_mhCB2 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_offline_MAB_1000_gcp-gpu.mat';
        output_file_mhCB4 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_offline_MAB_1000_americano.mat';
        output_file_mhCB8 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_offline_MAB_1000_americano.mat';
        
        output_file_fhCB2 ='./log/02-Nov-2017/K_main_classifier_STL10_nonstationary_k_2_cluster_online_MAB_1000_americano.mat';
        output_file_fhCB4 ='./log/03-Nov-2017/K_main_classifier_STL10_nonstationary_k_4_cluster_online_MAB_1000_americano.mat';
        output_file_fhCB8 ='./log/03-Nov-2017/K_main_classifier_STL10_nonstationary_k_8_cluster_online_MAB_1000_americano.mat';
                
        output_file_uE = 'F_main_classifier_STL10_nonstationary_unshuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        
        output_file_mmmhCB2 = 'F_main_classifier_STL10_nonstationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB4 = 'F_main_classifier_STL10_nonstationary_unshuffled_k_4_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB8 = 'F_main_classifier_STL10_nonstationary_unshuffled_k_8_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        
        output_file_mmfhCB2 = 'F_main_classifier_STL10_nonstationary_unshuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB4 = 'F_main_classifier_STL10_nonstationary_unshuffled_k_4_multimode_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB8 = 'F_main_classifier_STL10_nonstationary_unshuffled_k_8_multimode_full_history_CB_1000_gcp-gpu.mat'

    otherwise
        
        disp('wrong dataset!')
        
end

%% load data files

[accuracy_b,learn_ns_z_b] = F_read_results(output_file_b,1);
% [accuracy_orS1,learn_ns_z_orS1] = F_read_results(output_file_orS1,1);
% [accuracy_orS2,learn_ns_z_orS2] = F_read_results(output_file_orS2,1);
% [accuracy_orS4,learn_ns_z_orS4] = F_read_results(output_file_orS4,1);
% [accuracy_orS8,learn_ns_z_orS8] = F_read_results(output_file_orS8,1);
[accuracy_uE,learn_ns_z_uE] = F_read_results(output_file_uE,1);
[accuracy_mE2,learn_ns_z_mE2] = F_read_results(output_file_mE2,1);
[accuracy_mE4,learn_ns_z_mE4] = F_read_results(output_file_mE4,1);
[accuracy_mE8,learn_ns_z_mE8] = F_read_results(output_file_mE8,1);
[accuracy_oE2,learn_ns_z_oE2] = F_read_results(output_file_oE2,1);
[accuracy_oE4,learn_ns_z_oE4] = F_read_results(output_file_oE4,1);
[accuracy_oE8,learn_ns_z_oE8] = F_read_results(output_file_oE8,1);
[accuracy_mhCB2,learn_ns_z_mhCB2] = F_read_results(output_file_mhCB2,1);
[accuracy_mhCB4,learn_ns_z_mhCB4] = F_read_results(output_file_mhCB4,1);
[accuracy_mhCB8,learn_ns_z_mhCB8] = F_read_results(output_file_mhCB8,1);
[accuracy_fhCB2,learn_ns_z_fhCB2] = F_read_results(output_file_fhCB2,1);
[accuracy_fhCB4,learn_ns_z_fhCB4] = F_read_results(output_file_fhCB4,1);
[accuracy_fhCB8,learn_ns_z_fhCB8] = F_read_results(output_file_fhCB8,1);
[accuracy_mmmhCB2,learn_ns_z_mmmhCB2] = F_read_results(output_file_mmmhCB2,1);
[accuracy_mmmhCB4,learn_ns_z_mmmhCB4] = F_read_results(output_file_mmmhCB4,1);
[accuracy_mmmhCB8,learn_ns_z_mmmhCB8] = F_read_results(output_file_mmmhCB8,1);
[accuracy_mmfhCB2,learn_ns_z_mmfhCB2] = F_read_results(output_file_mmfhCB2,1);
[accuracy_mmfhCB4,learn_ns_z_mmfhCB4] = F_read_results(output_file_mmfhCB4,1);
[accuracy_mmfhCB8,learn_ns_z_mmfhCB8] = F_read_results(output_file_mmfhCB8,1);

save(['result-' dataset]);
