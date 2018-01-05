% gcp - CIFAR-10

F_main_classifier_local(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'full_history_CB', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 8, full_history_CB, 1000, gcp-gpu, 10000)')
system(['echo gcpcifar2 CIFAR-10 shuffled, 8, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 8, multimode_minibatch_history_CB, 1000,gcp-gpu, 10000)')
system(['echo gcpcifar2 CIFAR-10 shuffled, 8, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'multimode_full_history_CB', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 8, multimode_full_history_CB, 1000,gcp-gpu, 10000)')
system(['echo gcpcifar2 CIFAR-10 shuffled, 8, multimode_full_history_CB >> done'  ]);


