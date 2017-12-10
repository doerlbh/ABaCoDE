%gcp3

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 8, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, MNIST-s, nonstationary,shuffled, 8, full_history_CB, 1000, gcp-gpu, 20000)')

F_main_classifier(1, 'MNIST-s', 'nonstationary','shuffled', 8, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,MNIST-s,nonstationary,shuffled,8,minibatch_embedding,1000,gcp-gpu, 20000)')

