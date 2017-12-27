% load results
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
% updated December 2017

% clear all; close all;

%%


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

%  dataset = 'MNIST-half-shuffled'
% dataset = 'Caltech101S-half-shuffled'
% dataset = 'CIFAR-10-half-shuffled'
% dataset = 'STL10-half-shuffled'

% dataset = 'MNIST-halfstat-shuffled'
% dataset = 'Caltech101S-halfstat-shuffled'
% dataset = 'CIFAR-10-halfstat-shuffled'
% dataset = 'STL10-halfstat-shuffled'

dataset = 'MNIST-rand-shuffled'
% dataset = 'Caltech101S-rand-shuffled'
% dataset = 'CIFAR-10-rand-shuffled'
% dataset = 'STL10-rand-shuffled'

% dataset = 'MNIST-randstat-shuffled'
% dataset = 'Caltech101S-randstat-shuffled'
% dataset = 'CIFAR-10-randstat-shuffled'
% dataset = 'STL10-randstat-shuffled'

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
addpath([path 'log/outputs'])
addpath([path 'log/16-Dec-2017'])
addpath([path 'log/17-Dec-2017'])
addpath([path 'log/18-Dec-2017'])
addpath([path 'log/19-Dec-2017'])
addpath([path 'log/20-Dec-2017'])
addpath([path 'log/21-Dec-2017'])
addpath([path 'log/22-Dec-2017'])
addpath([path 'log/23-Dec-2017'])
addpath([path 'log/24-Dec-2017'])
% addpath([path 'log/25-Dec-2017'])
% addpath([path 'log/26-Dec-2017'])
% addpath([path 'log/27-Dec-2017'])
addpath('/home/sunnylin/Dropbox/Git/IBM_Internal_Attentive_Bandit/')

%% for data files

switch dataset
    
    case 'MNIST-half-shuffled'
        
        output_file_b = 'log/19-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_shuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = 'log/19-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_shuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = 'log/19-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_shuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = 'log/19-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_shuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = 'log/19-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_shuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = 'log/20-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_shuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = 'log/24-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_shuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = 'log/25-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_shuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'MNIST-halfstat-shuffled'
        
        output_file_b = 'log/25-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_shuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = 'log/25-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_shuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = 'log/25-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_shuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = 'log/26-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_shuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = 'log/26-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_shuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 =  'log/26-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_shuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = 'log/26-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_shuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = 'log/26-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_shuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
        
    case 'MNIST-rand-shuffled'
        
        output_file_b = 'log/21-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_shuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = 'log/21-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_shuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = 'log/21-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_shuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = 'log/21-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_shuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = 'log/25-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_shuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = 'log/25-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_shuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = 'log/26-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_shuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = 'log/26-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_shuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
        
    case 'MNIST-half-unshuffled'
        
        output_file_b = 'log/17-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_unshuffled_k_0_baseline_1000_americano.mat'
        output_file_uE = 'log/18-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_unshuffled_k_1_universal_embedding_1000_americano.mat'
        output_file_mE2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_unshuffled_k_2_minibatch_embedding_1000_americano.mat'
        output_file_oE2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_unshuffled_k_2_online_embedding_1000_americano.mat'
        output_file_mhCB2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_unshuffled_k_2_minibatch_history_CB_1000_americano.mat'
        output_file_fhCB2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_unshuffled_k_2_full_history_CB_1000_americano.mat'
        output_file_mmmhCB2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_americano.mat'
        output_file_mmfhCB2 = 'log/20-Dec-2017/F_main_classifier_MNIST-s_halfnegativenonstationary_unshuffled_k_2_multimode_full_history_CB_1000_americano.mat'
        
        
    case 'MNIST-rand-unshuffled'
        
        output_file_b = 'log/17-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_unshuffled_k_0_baseline_1000_americano.mat'
        output_file_uE = 'log/18-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_unshuffled_k_1_universal_embedding_1000_americano.mat'
        output_file_mE2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_unshuffled_k_2_minibatch_embedding_1000_americano.mat'
        output_file_oE2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_unshuffled_k_2_online_embedding_1000_americano.mat'
        output_file_mhCB2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_unshuffled_k_2_minibatch_history_CB_1000_americano.mat'
        output_file_fhCB2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_unshuffled_k_2_full_history_CB_1000_americano.mat'
        output_file_mmmhCB2 = 'log/18-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_americano.mat'
        output_file_mmfhCB2 = 'log/19-Dec-2017/F_main_classifier_MNIST-s_randnegativenonstationary_unshuffled_k_2_multimode_full_history_CB_1000_americano.mat'
        
        
    case 'MNIST-randstat-unshuffled'
        
        output_file_b = 'log/19-Dec-2017/F_main_classifier_MNIST-s_randnegativestationary_unshuffled_k_0_baseline_1000_americano.mat'
        output_file_uE = 'log/19-Dec-2017/F_main_classifier_MNIST-s_randnegativestationary_unshuffled_k_1_universal_embedding_1000_americano.mat'
        output_file_mE2 = 'log/19-Dec-2017/F_main_classifier_MNIST-s_randnegativestationary_unshuffled_k_2_minibatch_embedding_1000_americano.mat'
        output_file_oE2 = 'log/20-Dec-2017/F_main_classifier_MNIST-s_randnegativestationary_unshuffled_k_2_online_embedding_1000_americano.mat'
        output_file_mhCB2 = 'log/20-Dec-2017/F_main_classifier_MNIST-s_randnegativestationary_unshuffled_k_2_minibatch_history_CB_1000_americano.mat'
        output_file_fhCB2 = 'log/20-Dec-2017/F_main_classifier_MNIST-s_randnegativestationary_unshuffled_k_2_full_history_CB_1000_americano.mat'
        output_file_mmmhCB2 = 'log/21-Dec-2017/F_main_classifier_MNIST-s_randnegativestationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_americano.mat'
        output_file_mmfhCB2 = 'log/23-Dec-2017/F_main_classifier_MNIST-s_randnegativestationary_unshuffled_k_2_multimode_full_history_CB_1000_americano.mat'
        
        
    case 'MNIST-halfstat-unshuffled'
        
        output_file_b = 'log/20-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_unshuffled_k_0_baseline_1000_americano.mat'
        output_file_uE = 'log/21-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_unshuffled_k_1_universal_embedding_1000_americano.mat'
        output_file_mE2 = 'log/21-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_unshuffled_k_2_minibatch_embedding_1000_americano.mat'
        output_file_oE2 = 'log/21-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_unshuffled_k_2_online_embedding_1000_americano.mat'
        output_file_mhCB2 = 'log/23-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_unshuffled_k_2_minibatch_history_CB_1000_americano.mat'
        output_file_fhCB2 = 'log/24-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_unshuffled_k_2_full_history_CB_1000_americano.mat'
        output_file_mmmhCB2 = 'log/24-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_americano.mat'
        output_file_mmfhCB2 = 'log/25-Dec-2017/F_main_classifier_MNIST-s_halfnegativestationary_unshuffled_k_2_multimode_full_history_CB_1000_americano.mat'
        
        
    case 'STL10-half-unshuffled'
        
        output_file_b = 'log/21-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_unshuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = 'log/21-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_unshuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = 'log/21-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_unshuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = 'log/21-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_unshuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = 'log/22-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_unshuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = 'log/22-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_unshuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = 'log/22-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = 'log/22-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_unshuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'STL10-rand-unshuffled'
        
        output_file_b = 'log/22-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_unshuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = 'log/22-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_unshuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = 'log/22-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_unshuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = 'log/22-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_unshuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = 'log/22-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_unshuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = 'log/23-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_unshuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = 'log/23-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = 'log/23-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_unshuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'STL10-randstat-unshuffled'
        
        output_file_b = 'log/23-Dec-2017/F_main_classifier_STL10_randnegativestationary_unshuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = 'log/23-Dec-2017/F_main_classifier_STL10_randnegativestationary_unshuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = 'log/23-Dec-2017/F_main_classifier_STL10_randnegativestationary_unshuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = 'log/23-Dec-2017/F_main_classifier_STL10_randnegativestationary_unshuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = 'log/23-Dec-2017/F_main_classifier_STL10_randnegativestationary_unshuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = 'log/23-Dec-2017/F_main_classifier_STL10_randnegativestationary_unshuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = 'log/24-Dec-2017/F_main_classifier_STL10_randnegativestationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = 'log/24-Dec-2017/F_main_classifier_STL10_randnegativestationary_unshuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'STL10-halfstat-unshuffled'
        
        output_file_b = 'log/24-Dec-2017/F_main_classifier_STL10_halfnegativestationary_unshuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = 'log/24-Dec-2017/F_main_classifier_STL10_halfnegativestationary_unshuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = 'log/24-Dec-2017/F_main_classifier_STL10_halfnegativestationary_unshuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = 'log/24-Dec-2017/F_main_classifier_STL10_halfnegativestationary_unshuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = 'log/24-Dec-2017/F_main_classifier_STL10_halfnegativestationary_unshuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = 'log/24-Dec-2017/F_main_classifier_STL10_halfnegativestationary_unshuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = 'log/24-Dec-2017/F_main_classifier_STL10_halfnegativestationary_unshuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = 'log/25-Dec-2017/F_main_classifier_STL10_halfnegativestationary_unshuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'STL10-half-shuffled'
        
        output_file_b = '18-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_shuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = '18-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_shuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = '18-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_shuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = '18-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_shuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = '18-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_shuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = '18-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_shuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = '18-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_shuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = '19-Dec-2017/F_main_classifier_STL10_halfnegativenonstationary_shuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'STL10-halfstat-shuffled'
        
        output_file_b = '20-Dec-2017/F_main_classifier_STL10_halfnegativestationary_shuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = '20-Dec-2017/F_main_classifier_STL10_halfnegativestationary_shuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = '21-Dec-2017/F_main_classifier_STL10_halfnegativestationary_shuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = '21-Dec-2017/F_main_classifier_STL10_halfnegativestationary_shuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = '21-Dec-2017/F_main_classifier_STL10_halfnegativestationary_shuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = '21-Dec-2017/F_main_classifier_STL10_halfnegativestationary_shuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = '21-Dec-2017/F_main_classifier_STL10_halfnegativestationary_shuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = '21-Dec-2017/F_main_classifier_STL10_halfnegativestationary_shuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'STL10-rand-shuffled'
        
        output_file_b = '19-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_shuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = '19-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_shuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = '19-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_shuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = '19-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_shuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = '19-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_shuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = '19-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_shuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = '19-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_shuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = '20-Dec-2017/F_main_classifier_STL10_randnegativenonstationary_shuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    case 'STL10-randstat-shuffled'
        
        output_file_b = '20-Dec-2017/F_main_classifier_STL10_randnegativestationary_shuffled_k_0_baseline_1000_gcp-gpu.mat'
        output_file_uE = '20-Dec-2017/F_main_classifier_STL10_randnegativestationary_shuffled_k_1_universal_embedding_1000_gcp-gpu.mat'
        output_file_mE2 = '20-Dec-2017/F_main_classifier_STL10_randnegativestationary_shuffled_k_2_minibatch_embedding_1000_gcp-gpu.mat'
        output_file_oE2 = '20-Dec-2017/F_main_classifier_STL10_randnegativestationary_shuffled_k_2_online_embedding_1000_gcp-gpu.mat'
        output_file_mhCB2 = '20-Dec-2017/F_main_classifier_STL10_randnegativestationary_shuffled_k_2_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_fhCB2 = '20-Dec-2017/F_main_classifier_STL10_randnegativestationary_shuffled_k_2_full_history_CB_1000_gcp-gpu.mat'
        output_file_mmmhCB2 = '20-Dec-2017/F_main_classifier_STL10_randnegativestationary_shuffled_k_2_multimode_minibatch_history_CB_1000_gcp-gpu.mat'
        output_file_mmfhCB2 = '20-Dec-2017/F_main_classifier_STL10_randnegativestationary_shuffled_k_2_multimode_full_history_CB_1000_gcp-gpu.mat'
        
    otherwise
        
        disp('wrong dataset!')
        
end


[accuracy_b,learn_ns_z_b] = F_read_results(output_file_b,1);
[accuracy_uE,learn_ns_z_uE] = F_read_results(output_file_uE,1);
[accuracy_mE2,learn_ns_z_mE2] = F_read_results(output_file_mE2,1);
[accuracy_oE2,learn_ns_z_oE2] = F_read_results(output_file_oE2,1);
[accuracy_mhCB2,learn_ns_z_mhCB2] = F_read_results(output_file_mhCB2,1);
[accuracy_fhCB2,learn_ns_z_fhCB2] = F_read_results(output_file_fhCB2,1);
[accuracy_mmmhCB2,learn_ns_z_mmmhCB2] = F_read_results(output_file_mmmhCB2,1);
[accuracy_mmfhCB2,learn_ns_z_mmfhCB2] = F_read_results(output_file_mmfhCB2,1);

save(['result-' dataset]);
