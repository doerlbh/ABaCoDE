% americano - MNIST-s
%gpuDevice(4)

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 1, 'baseline', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 1, baseline, 1000,americano, 20000)')
% system(['echo MNIST-s shuffled, 1, baseline >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 1, 'universal_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 1, universal_embedding, 1000,americano, 20000)')
% system(['echo MNIST-s shuffled, 1, universal_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, nonstationary, shuffled, 2, minibatch_embedding,1000,americano, 20000)')
% system(['echo MNIST-s shuffled, 2, minibatch_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 2, 'online_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, nonstationary, shuffled, 2, online_embedding,1000,americano, 20000)')
% system(['echo MNIST-s shuffled, 2, online_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 2, minibatch_history_CB, 1000, americano, 20000)')
% system(['echo MNIST-s shuffled, 2, minibatch_history_CB >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 2, full_history_CB, 1000, americano, 20000)')
% system(['echo MNIST-s shuffled, 2, full_history_CB >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 20000)')
% system(['echo MNIST-s shuffled, 2, multimode_minibatch_history_CB >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 20000)')
% system(['echo MNIST-s shuffled, 2, multimode_full_history_CB >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 4, 'minibatch_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, nonstationary, shuffled, 4, minibatch_embedding,1000,americano, 20000)')
% system(['echo MNIST-s shuffled, 4, minibatch_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 4, 'online_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, nonstationary, shuffled, 4, online_embedding,1000,americano, 20000)')
% system(['echo MNIST-s shuffled, 4, online_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 4, 'minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 4, minibatch_history_CB, 1000, americano, 20000)')
% system(['echo MNIST-s shuffled, 4, minibatch_history_CB >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 4, 'full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 4, full_history_CB, 1000, americano, 20000)')
% system(['echo MNIST-s shuffled, 4, full_history_CB >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 4, 'multimode_minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 4, multimode_minibatch_history_CB, 1000,americano, 20000)')
% system(['echo MNIST-s shuffled, 4, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 4, 'multimode_full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 4, multimode_full_history_CB, 1000,americano, 20000)')
system(['echo MNIST-s shuffled, 4, multimode_full_history_CB >> done'  ]);

gcpcifar1
% exit

