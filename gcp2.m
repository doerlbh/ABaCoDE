%gcp2

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 2,online_embedding, 1000,gcp-gpu, 20000)')

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')