% Reinforcement Learning with Internal and External Attention with GPU
% Online learning with uncertain information
% Baihan Lin
% Columbia University
% October 2017 at IBM Research
%
% K_main_classifier(dataset, dist, k, type, window, loc)
%
% options:
% dataset: {'MNIST','MNIST-s','CIFAR-10','CIFAR-100','CIFAR-100C','STL10','Caltech101S'}
% dist: {'stationary', 'nonstationary'}
% rewd: {'unshuffled','shuffled'}
% k: {0,1,2,4,8}
% type: {'baseline','oracle','oracle_staged','minibatch_embedding','online_embedding','minibatch_history_CB','full_history_CB','all_option_select'}
% window: {1000,5000}
% loc: {'Hyak','Hyakqsub','americano','galao','latte','espresso','mocha','doerlbh','compbio3','c2b2','gcp-gpu'}
%
% e.g.
% K_main_classifier('MNIST', 'stationary','shuffled', 2, 'oracle', 1000, 'doerlbh')

function F_main_classifier_gpu(dataset, dist, k, type, window, loc)

% rng(1);

%% setup

% loc = 'Hyak';
% loc = 'Hyakqsub';
% loc = 'americano';
% loc = 'galao';
% loc = 'latte';
% loc = 'espresso';
% loc = 'mocha';
% loc = 'doerlbh';
% loc = 'compbio03';
% loc = 'c2b2';
% loc = 'gcp-gpu'

switch loc
    case {'Hyak', 'Hyakqsub'}
        path = '/gscratch/stf/sunnylin/IBM/IBM_Internal_Attentive_Bandit/';
    case 'c2b2'
        path = '/ifs/scratch/c2b2/ip_lab/bl2681/Other/IBM_Internal_Attentive_Bandit/';
    case 'compbio03'
        path = '/data2/baihan/';
    case 'IBM'
        path = '/data/baihan/Code/IBM_Internal_Attentive_Bandit/';
    case 'doerlbh'
        path = '/Users/DoerLBH/Dropbox/git/IBM_Internal_Attentive_Bandit/';
    case {'mocha','latte','espresso','americano','galao'}
        path = '/home/sunnylin/Dropbox/Git/IBM_Internal_Attentive_Bandit/';
    case 'gcp-gpu'
        path = '/home/doerlbh/Dropbox/Git/IBM_Internal_Attentive_Bandit/';
    otherwise
        disp('Wrong location!');
end

addpath(path);
addpath([path 'utils']);
addpath([path 'parameters']);
addpath([path 'embeddings']);
addpath([path 'cifar-10-batches-mat']);
addpath([path 'cifar-100-matlab'])
addpath([path 'stl10_matlab'])

dateToday = date;

system(['mkdir ' path 'log/' dateToday]);
system(['echo >  ' path 'log/' dateToday '/log_K_main_classifier_' dataset '_' dist '_k_' num2str(k) '_' type '_' num2str(window) '_' loc '.txt']);
dumpfile = [path 'log/' dateToday '/dump_K_main_classifier_' dataset '_' dist '_k_' num2str(k) '_' type '_' num2str(window) '_' loc '.txt'];
dumpcopy = [path 'log/' dateToday '/dump_K_main_classifier_' dataset '_' dist '_k_' num2str(k) '_' type '_' num2str(window) '_' loc '.copy'];
system(['echo real-time dump >  ' dumpfile]);

diary([path 'log/' dateToday '/log_K_main_classifier_' dataset '_' dist '_k_' num2str(k) '_' type '_' num2str(window) '_' loc  '.txt']);

diary on;
disp(date);

disp(['running experiment on ' loc]);
disp(['info: ' dataset ' ' dist ' k = ' num2str(k) ' ' type ' ' num2str(window)]);
disp('===================')

%% load training and testing sets

disp('==== Loading data =======')
switch dataset
    case 'MNIST'
        load mnist_uint8;
        learn_x = double(train_x);
        learn_y = double(train_y);
        prior_x  = double(test_x);
        %         prior_y  = double(test_y);
        clearvars train_x train_y test_x test_y
        
    case 'MNIST-s'
        load mnist_uint8;
        pick = randi(60000,20000,1);
        learn_x = double(train_x(pick,:));
        learn_y = double(train_y(pick,:));
        prior_x  = double(test_x);
        %         prior_y  = double(test_y);
        clearvars train_x train_y test_x test_y
        
    case 'CIFAR-100'
        load test
        prior_x  = double(data(randi(10000,2000,1),:));
        %         prior_y  = double(vec2mat(fine_labels+1,length(unique(fine_labels))));
        clearvars data fine_labels coarse_labels filenames batch_label
        
        load train
        learn_x  = double(data);
        learn_y  = double(vec2mat(fine_labels+1,length(unique(fine_labels))));
        pick = randi(50000,20000,1);
        learn_x = learn_x(pick,:);
        learn_y = learn_y(pick,:);
        clearvars data fine_labels coarse_labels filenames batch_label
        
    case 'CIFAR-100C'
        load test
        prior_x  = double(data(randi(10000,2000,1),:));
        %         prior_y  = double(vec2mat_gpu(coarse_labels+1,length(unique(coarse_labels))));
        clearvars data fine_labels coarse_labels filenames batch_label
        
        load train
        learn_x  = double(data);
        learn_y  = double(vec2mat_gpu(coarse_labels+1,length(unique(coarse_labels))));
        pick = randi(50000,20000,1);
        learn_x = learn_x(pick,:);
        learn_y = learn_y(pick,:);
        clearvars data fine_labels coarse_labels filenames batch_label
        
    case 'CIFAR-10'
        load test_batch
        prior_x  = double(data(randi(10000,2000,1),:));
        %         prior_y  = double(vec2mat(labels+1,length(unique(labels))));
        clearvars data labels batch_label
        
        randBatch = randi(5,2,1);
        learn_x = [];
        learn_y = [];
        for b = 1:2
            switch randBatch(b)
                case 1
                    load data_batch_1
                    learn_x  = [learn_x; double(data)];
                    learn_y  = [learn_y; double(vec2mat(labels+1,length(unique(labels))))];
                    clearvars data labels batch_label
                case 2
                    load data_batch_2
                    learn_x  = [learn_x; double(data)];
                    learn_y  = [learn_y; double(vec2mat(labels+1,length(unique(labels))))];
                    clearvars data labels batch_label
                case 3
                    load data_batch_3
                    learn_x  = [learn_x; double(data)];
                    learn_y  = [learn_y; double(vec2mat(labels+1,length(unique(labels))))];
                    clearvars data labels batch_label
                case 4
                    load data_batch_4
                    learn_x  = [learn_x; double(data)];
                    learn_y  = [learn_y; double(vec2mat(labels+1,length(unique(labels))))];
                    clearvars data labels batch_label
                case 5
                    load data_batch_5
                    learn_x  = [learn_x; double(data)];
                    learn_y  = [learn_y; double(vec2mat(labels+1,length(unique(labels))))];
                    clearvars data labels batch_label
                otherwise
                    disp('wrong pick')
            end
        end
        
    case 'STL10'
        disp('picked dataset:');
        pick = randi(5)
        [learn_x,learn_y,prior_x] = K_readmatv73(['stl10_data_' num2str(pick)]);
         
        %     case 'STL10'
        %         load stl10_unlabeled
        %         prior_x  = double(X(randi(100000,2000,1),:));
        %         %         prior_y  = 0;
        %         clearvars X
        %
        %         load stl10_test
        %         learn_x  = double(X);
        %         learn_y  = double(vec2mat_gpu(y,length(unique(y))));
        %         clearvars class_names X y
        %
        %         load stl10_train
        %         learn_x  = [learn_x; double(X)];
        %         learn_y  = [learn_y; double(vec2mat_gpu(y,length(unique(y))))];
        %         clearvars class_names fold_indices X y
        
    case 'Caltech101S'
        load caltech101_silhouettes_28
        all_x = double(X);
        all_y = vec2mat_gpu(Y,length(unique(Y)));
        
        prior_x  = all_x(1:671,:);
        learn_x = all_x(672:end,:);
        learn_y = all_y(672:end,:);
        clearvars X Y all_x all_y classnames
        
    otherwise
        disp('wrong dataset.');
end

tic;
prior_x = gpuArray(prior_x);
learn_x = gpuArray(learn_x);
learn_y = gpuArray(learn_y);
tGPUload = toc;

disp(['GPU transferring takes ' num2str(tGPUload) ' s']);

if strcmp(dist, 'nonstationary')
    disp('==== nonstationizing dataset =======')
    [learn_x, learn_y, learn_ns_z] = K_nonstationary_track_gpu(learn_x,learn_y,window);
end

%% pre-clustering and generate embedding

disp('==== Pretraining Phase =======')

hiddenSize1 = 100;
MaxEpochs1 = 500;

switch type
    case 'baseline'
        clusters = 0;
        k = 0;
    case 'oracle'
        [oracle_z,clusters] = K_update_cluster_emb_gpu(k,[prior_x;learn_x],0,dataset,type,dist,hiddenSize1,MaxEpochs1,path);
        learn_z = oracle_z(size(prior_x,1)+1:end);
    case 'oracle_staged'
        [oracle_z,clusters] = K_update_cluster_emb_gpu(k,[prior_x;learn_x(1:window,:)],0,dataset,type,dist,hiddenSize1,MaxEpochs1,path);
        learn_z = oracle_z(size(prior_x,1)+1:end);
    otherwise
        [prior_z,clusters] = K_update_cluster_emb_gpu(k,prior_x,0,dataset,type,dist,hiddenSize1,MaxEpochs1,path);
end

%% parameter setting

disp('==== Online Learning Phase =======')
disp('--> initializing');

maZ_iter = 1;         % number of iterations
% emb_size = 1;       % sample size of embedding
% by = 1000;          % update every by
by = 1;

N = size(learn_x, 1);     % number of training samples
D = size(learn_x, 2);     % dimension of feature vector
P = size(learn_y,2);      % number of possible decisions
E = k;                    % number of embeddings

disp(['# case: ' num2str(N)]);
disp(['# input: ' num2str(D)]);
disp(['# label: ' num2str(P)]);
disp(['# embedding: ' num2str(E)]);

switch type
    case 'baseline'
        Z_size = D;
    otherwise
        Z_size = hiddenSize1;
end

%% bandit initialization

[B_k,g_k,hat_mu_k,vsqr_k] = K_init_MAB_gpu(E,D);
[B_p,g_p,hat_mu_p,vsqr_p] = K_init_MAB_gpu(P,Z_size);

n = 0;
r = zeros(E,P,'gpuArray');
cluster_count = zeros(1,E,'gpuArray');

%% statistics

learn_W = zeros(E,N*maZ_iter,'gpuArray');          % record all selected embeds
learn_P = zeros(1,N*maZ_iter,'gpuArray');          % record all made decision
learn_result = zeros(1,N*maZ_iter,'gpuArray');     % record all comparison results
learn_time = zeros(1,N*maZ_iter,'gpuArray');       % record all time elapsed
learn_accuracy = zeros(P+1,N*maZ_iter,'gpuArray'); % record all accuracy, end = all
% embed_accuracy = zeros(E+1,N*maZ_iter,'gpuArray'); % record all accuracy of embedding selection, end = all

disp('<-- initializing done');

%% online learning

disp('--> online learning');
tic

for iter=1:maZ_iter
    
    disp(['- iteration ' num2str(iter)]);
    trainOnePercent = int64(N*iter*0.01);
    
    system(['echo --- iteration ' num2str(iter) ' --- >> ' dumpfile]);
    system(['echo >> ' dumpfile]);
    
    for t=1:N
        disp(['case ' num2str((iter-1)*N+t)]);
        system(['echo - learning ' num2str((iter-1)*N+t) ' >> ' dumpfile]);
        
        C = learn_x((iter-1)*N+t,:);
        
        switch type
            
            case 'baseline'
                % W = zeros(1,E);
                W = 0;
                Z = C;
                
            case 'oracle'
                W = vec2mat_gpu(learn_z((iter-1)*N+t),E);
                learn_W(:,(iter-1)*N+t) = W.';
                Z = K_embedding_static_k_gpu(path,dataset,type,dist,C.',learn_z((iter-1)*N+t),k);
                
            case 'oracle_staged'
                W = vec2mat_gpu(learn_z((iter-1)*N+t),E);
                learn_W(:,(iter-1)*N+t) = W.';
                Z = K_embedding_static_k_gpu(path,dataset,type,dist,C.',learn_z((iter-1)*N+t),k);
                
                if mod((iter-1)*N+t,window) == 0 && mod((iter-1)*N+t,N) ~= 0
                    [oracle_z,clusters] = K_update_cluster_emb_gpu(k,[prior_x;learn_x(1:(iter-1)*N+t+window,:)],0,dataset,type,dist,hiddenSize1,MaxEpochs1,path);
                    learn_z = oracle_z(size(prior_x,1)+1:end);
                end
                
            case 'minibatch_embedding'
                [case_z, ~] = online_kmeans_gpu(C, clusters, cluster_count);
                learn_z((iter-1)*N+t) = case_z;
                W = vec2mat_gpu(case_z,E);
                learn_W(:,(iter-1)*N+t) = W.';
                Z = K_embedding_static_k_gpu(path,dataset,type,dist,C.',learn_z((iter-1)*N+t),k);
                
                if mod((iter-1)*N+t,window) == 0
                    [~,clusters] = K_update_cluster_emb_gpu(k,[prior_x;learn_x(1:(iter-1)*N+t,:)],0,dataset,type,dist,hiddenSize1,MaxEpochs1,path);
                end
                
            case 'online_embedding'
                [case_z, clusters] = online_kmeans_gpu(C, clusters, cluster_count);
                learn_z((iter-1)*N+t) = case_z;
                W = vec2mat_gpu(case_z,E);
                learn_W(:,(iter-1)*N+t) = W.';
                Z = K_embedding_static_k_gpu(path,dataset,type,dist,C.',learn_z((iter-1)*N+t),k);
                
                if mod((iter-1)*N+t,window) == 0
                    [~,~] = K_update_cluster_emb_gpu(k,[prior_x;learn_x(1:(iter-1)*N+t,:)],[prior_z;learn_z(1:(iter-1)*N+t).'],dataset,type,dist,hiddenSize1,MaxEpochs1,path);
                end
                
            case 'minibatch_history_CB'
                [W,Z] = K_embSelect_gpu(path,dataset,type,dist,k,C,E,B_k,hat_mu_k,vsqr_k);
                learn_W(:,(iter-1)*N+t) = W.';
                
                if mod((iter-1)*N+t,window) == 0
                    [learn_z,clusters] = K_update_cluster_emb_gpu(k,[prior_x;learn_x(1:(iter-1)*N+t,:)],0,dataset,type,dist,hiddenSize1,MaxEpochs1,path);
                    [B_k,g_k,hat_mu_k,vsqr_k] = K_init_MAB_gpu(E,D);
                end
                
            case 'full_history_CB'
                [case_z, clusters] = online_kmeans_gpu(C, clusters, cluster_count);
                learn_z((iter-1)*N+t) = case_z;
                [W,Z] = K_embSelect_gpu(path,dataset,type,dist,k,C,E,B_k,hat_mu_k,vsqr_k);
                learn_W(:,(iter-1)*N+t) = W.';
                
                if mod((iter-1)*N+t,window) == 0
                    new_x = [prior_x;learn_x(1:(iter-1)*N+t,:)];
                    new_y = [prior_z;learn_z(1:(iter-1)*N+t).'];
                    [~,~] = K_update_cluster_emb_gpu(k,new_x,new_y, dataset,type,dist,hiddenSize1,MaxEpochs1,path);
                end
                
            otherwise
                disp('wrong type.');
        end
        
        decision = K_decSelect_gpu(Z,B_p,hat_mu_p,vsqr_p);
        learn_P((iter-1)*N+t) = decision;
        expect = mat2vec_gpu(learn_y((iter-1)*N+t,:),P);
        
        if decision == expect
            reward = 1; % reward
        else
            reward = 0; % reward
        end
        
        learn_result((iter-1)*N+t) = reward;
        [B_k,g_k,hat_mu_k,B_p,g_p,hat_mu_p,n,r] = K_update_bandits(type,(iter-1)*N+t,by,reward,decision,C,W,Z,B_k,g_k,hat_mu_k,B_p,g_p,hat_mu_p,n,r);
        learn_time((iter-1)*N+t) = toc;
        
        acc = accuracy_gpu(learn_P(1:(iter-1)*N+t),learn_y(1:(iter-1)*N+t,:));
        learn_accuracy(:,(iter-1)*N+t) = acc.';
        
        system(['echo - embedding ' num2str(W, 5) ' >> ' dumpfile]);
        system(['echo - decision ' num2str(decision, 5) ' >> ' dumpfile]);
        system(['echo - expect ' num2str(expect, 5) ' >> ' dumpfile]);
        system(['echo - reward ' num2str(reward, 5) ' >> ' dumpfile]);
        
        %         if type ~= 'baseline'
        %             emb_acc = emb_accuracy(learn_W(:,1:(iter-1)*N+t),learn_z(1:(iter-1)*N+t));
        %             embed_accuracy(:,(iter-1)*N+t) = emb_acc.';
        %             system(['echo - embedding sub_accuracy ' num2str(emb_acc(1:E), 5) ' >> ' dumpfile]);
        %             system(['echo - embedding accuracy ' num2str(emb_acc(end), 5) ' >> ' dumpfile]);
        %         end
        
        system(['echo - result sub_accuracy ' num2str(acc(1:P), 5) ' >> ' dumpfile]);
        system(['echo - result accuracy ' num2str(acc(end), 5) ' >> ' dumpfile]);
        system(['echo - time elapsed ' num2str(toc) ' >> ' dumpfile]);
        system(['echo >> ' dumpfile]);
        
        if ( mod((iter-1)*N+t,trainOnePercent)==0 )
            percentage = 1*int8(((iter-1)*N+t)/trainOnePercent);
            time = learn_time((iter-1)*N+t);
            disp(['> ' num2str(percentage) '% finished in ' num2str(time) ' s']);
            disp(['---- accuracy: ' num2str(acc(end)) ' sub: ' num2str(acc(1:P))]);
            system(['cp ' dumpfile ' ' dumpcopy]);
            save([path 'log/' dateToday '/K_main_classifier_' dataset '_' dist '_k_' num2str(k) '_' type '_' num2str(window) '_' loc]);
        end
    end
    disp('> 100% finished');
end

clearvars learn_x learn_y

toc
disp('<-- online learning done');

disp(['finished experiment on ' loc]);
disp(['info: ' dataset ' ' dist ' k = ' num2str(k) ' ' type ' ' num2str(window)]);
disp('===================')

save([path 'log/' dateToday '/K_main_classifier_' dataset '_' dist '_k_' num2str(k) '_' type '_' num2str(window) '_' loc]);
diary off;

% exit;

end
