% gcp - CIFAR-10

F_main_classifier_local(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'minibatch_embedding', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1,CIFAR-10, nonstationary, shuffled, 8, minibatch_embedding,1000,gcp-gpu, 10000)')
system(['echo gcpcifar2 CIFAR-10 shuffled, 8, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'online_embedding', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1,CIFAR-10, nonstationary, shuffled, 8, online_embedding,1000,gcp-gpu, 10000)')
system(['echo gcpcifar2 CIFAR-10 shuffled, 8, online_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'minibatch_history_CB', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 8, minibatch_history_CB, 1000, gcp-gpu, 10000)')
system(['echo gcpcifar2 CIFAR-10 shuffled, 8, minibatch_history_CB >> done'  ]);

