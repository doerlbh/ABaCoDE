% gcp1

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,CIFAR-10, nonstationary, shuffled, 2,minibatch_embedding,1000,gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 4, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 4, full_history_CB, 1000, gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 4, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,CIFAR-10, nonstationary, shuffled, 4,minibatch_embedding,1000,gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 8, full_history_CB, 1000, gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,CIFAR-10, nonstationary, shuffled, 8,minibatch_embedding,1000,gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')

