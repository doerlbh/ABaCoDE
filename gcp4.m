%gcp2

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 2,online_embedding, 1000,gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 4, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 4,online_embedding, 1000,gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 4, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 4, minibatch_history_CB, 1000, gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 8,online_embedding, 1000,gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','shuffled', 8, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,shuffled, 8, minibatch_history_CB, 1000, gcp-gpu, 20000)')

F_main_classifier(1, 'CIFAR-10', 'nonstationary','unshuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, CIFAR-10, nonstationary,unshuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
