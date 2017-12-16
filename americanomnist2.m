% americano - MNIST-s

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 8, 'minibatch_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, nonstationary, shuffled, 8, minibatch_embedding,1000,americano, 20000)')
system(['echo MNIST-s shuffled, 8, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 8, 'online_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, nonstationary, shuffled, 8, online_embedding,1000,americano, 20000)')
system(['echo MNIST-s shuffled, 8, online_embedding >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 8, 'minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 8, minibatch_history_CB, 1000, americano, 20000)')
system(['echo MNIST-s shuffled, 8, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 8, 'full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 8, full_history_CB, 1000, americano, 20000)')
system(['echo MNIST-s shuffled, 8, full_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 8, 'multimode_minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 8, multimode_minibatch_history_CB, 1000,americano, 20000)')
system(['echo MNIST-s shuffled, 8, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 8, 'multimode_full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 8, multimode_full_history_CB, 1000,americano, 20000)')
system(['echo MNIST-s shuffled, 8, multimode_full_history_CB >> done'  ]);

