% americano - MNIST-s

F_main_classifier_local(1, 'MNIST-s', 'randnegativestationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, randnegativestationary,shuffled, 2, full_history_CB, 1000, americano, 20000)')
system(['echo runmnistrandstat MNIST-s shuffled randstat, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'MNIST-s', 'randnegativestationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, randnegativestationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 20000)')
system(['echo runmnistrandstat MNIST-s shuffled randstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'MNIST-s', 'randnegativestationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, randnegativestationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 20000)')
system(['echo runmnistrandstat MNIST-s shuffled randstat, 2, multimode_full_history_CB >> done'  ]);



