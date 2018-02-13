% load results
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% updated December 2017

% clear all; close all;

%%

function F_load_results_compress(dataset,loc)

% dataset = 'warfarin-linear-0.5-0-unshuffled'
% dataset = 'warfarin-AE-0.5-0-unshuffled'
% dataset = 'warfarin-linear-0.5-0-shuffled'
% dataset = 'warfarin-AE-0.5-0-shuffled'

% dataset = 'warfarin-linear-0.5-0.5-unshuffled'
% dataset = 'warfarin-AE-0.5-0.5-unshuffled'
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

%% setup

% loc = 'americano';

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
addpath([path 'log/outputs'])
addpath('/home/sunnylin/Dropbox/Git/IBM_Internal_Attentive_Bandit/')

%% for data files

switch dataset
    
    %         case 'test'
    %
    %         output_file_100 = ''
    %         output_file_50 = ''
    %         output_file_25 = ''
    %         output_file_5 = ''
    %         output_file_mhCB = ''
    %         output_file_fhCB = ''
    
    case 'warfarin-linear-0.5-0.5-shuffled'
        
        output_file_100 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_100_single_linear_1000_0.5_0.5_galao.mat'
        output_file_50 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_50_single_linear_1000_0.5_0.5_galao.mat'
        output_file_25 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_25_single_linear_1000_0.5_0.5_galao.mat'
        output_file_5 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_single_linear_1000_0.5_0.5_galao.mat'
        output_file_mhCB = 'log/25-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_25_50_100_minibatch_history_linear_CB_1000_0.5_0.5_americano.mat'
        output_file_fhCB = 'log/25-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_25_50_100_full_history_linear_CB_1000_0.5_0.5_americano.mat'
        
    case 'warfarin-linear-0.5-0.5-unshuffled'
        
        output_file_100 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_100_single_linear_1000_0.5_0.5_galao.mat'
        output_file_50 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_50_single_linear_1000_0.5_0.5_galao.mat'
        output_file_25 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_25_single_linear_1000_0.5_0.5_galao.mat'
        output_file_5 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_single_linear_1000_0.5_0.5_galao.mat'
        output_file_mhCB = 'log/25-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_25_50_100_minibatch_history_linear_CB_1000_0.5_0.5_americano.mat'
        output_file_fhCB = 'log/25-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_25_50_100_full_history_linear_CB_1000_0.5_0.5_americano.mat'
        
    case 'warfarin-linear-0.5-0-unshuffled'
        
        output_file_100 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_100_single_linear_1000_0.5_0_galao.mat'
        output_file_50 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_50_single_linear_1000_0.5_0_galao.mat'
        output_file_25 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_25_single_linear_1000_0.5_0_galao.mat'
        output_file_5 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_single_linear_1000_0.5_0_galao.mat'
        output_file_mhCB = 'log/25-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_25_50_100_minibatch_history_linear_CB_1000_0.5_0_americano.mat'
        output_file_fhCB = 'log/25-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_25_50_100_full_history_linear_CB_1000_0.5_0_americano.mat'
        
    case 'warfarin-AE-0.5-0.5-unshuffled'
        
        output_file_100 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_100_single_AE_1000_0.5_0.5_galao.mat'
        output_file_50 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_50_single_AE_1000_0.5_0.5_galao.mat'
        output_file_25 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_25_single_AE_1000_0.5_0.5_galao.mat'
        output_file_5 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_single_AE_1000_0.5_0.5_galao.mat'
        output_file_mhCB = 'log/25-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_25_50_100_minibatch_history_AE_CB_1000_0.5_0.5_latte.mat'
        output_file_fhCB = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_25_50_100_full_history_AE_CB_1000_0.5_0.5_latte.mat'
        
    case 'warfarin-linear-0.5-0-shuffled'
        
        output_file_100 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_100_single_linear_1000_0.5_0_galao.mat'
        output_file_50 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_50_single_linear_1000_0.5_0_galao.mat'
        output_file_25 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_25_single_linear_1000_0.5_0_galao.mat'
        output_file_5 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_single_linear_1000_0.5_0_americano.mat'
        output_file_mhCB = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_25_50_100_minibatch_history_AE_CB_1000_0.5_0_latte.mat'
        output_file_fhCB = 'log/25-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_25_50_100_full_history_AE_CB_1000_0.5_0_latte.mat'
        
    case 'warfarin-AE-0.5-0-shuffled'
        
        output_file_100 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_100_single_AE_1000_0.5_0_galao.mat'
        output_file_50 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_50_single_AE_1000_0.5_0_galao.mat'
        output_file_25 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_25_single_AE_1000_0.5_0_galao.mat'
        output_file_5 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_single_AE_1000_0.5_0_galao.mat'
        output_file_mhCB = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_25_50_100_minibatch_history_AE_CB_1000_0.5_0_latte.mat'
        output_file_fhCB = 'log/25-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_25_50_100_full_history_AE_CB_1000_0.5_0_latte.mat'
        
    case 'warfarin-AE-0.5-0-unshuffled'
        
        output_file_100 = 'log/26-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_100_single_AE_1000_0.5_0_americano.mat'
        output_file_50 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_50_single_AE_1000_0.5_0_galao.mat'
        output_file_25 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_25_single_AE_1000_0.5_0_galao.mat'
        output_file_5 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_single_AE_1000_0.5_0_galao.mat'
        output_file_mhCB = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_25_50_100_minibatch_history_AE_CB_1000_0.5_0_latte.mat'
        output_file_fhCB = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_unshuffled_c_5_25_50_100_full_history_AE_CB_1000_0.5_0_latte.mat'
        
    case 'warfarin-AE-0.5-0.5-shuffled'
        
        output_file_100 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_100_single_AE_1000_0.5_0.5_galao.mat'
        output_file_50 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_50_single_AE_1000_0.5_0.5_galao.mat'
        output_file_25 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_25_single_AE_1000_0.5_0.5_galao.mat'
        output_file_5 = 'log/24-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_single_AE_1000_0.5_0.5_galao.mat'
        output_file_mhCB = 'log/26-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_25_50_100_minibatch_history_AE_CB_1000_0.5_0.5_americano.mat'
        output_file_fhCB = 'log/26-Jan-2018/F_main_compression_warfarin_nonstationary_shuffled_c_5_25_50_100_full_history_AE_CB_1000_0.5_0.5_americano.mat'
        
    otherwise
        
        disp('wrong dataset!')
        
end


[accuracy_100,reward_100,compress_100] = F_read_results_compress(output_file_100,1);
[accuracy_50,reward_50,compress_50]  = F_read_results_compress(output_file_50,1);
[accuracy_25,reward_25,compress_25] = F_read_results_compress(output_file_25,1);
[accuracy_5,reward_5,compress_5] = F_read_results_compress(output_file_5,1);
[accuracy_mhCB,reward_mhCB,compress_mhCB] = F_read_results_compress(output_file_mhCB,1);
[accuracy_fhCB,reward_fhCB,compress_fhCB] = F_read_results_compress(output_file_fhCB,1);

save(['result-' dataset '.mat']);

end