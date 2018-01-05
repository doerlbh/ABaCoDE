% americano - MNIST-s

F_main_classifier(1, 'MNIST-s', 'randnegativestationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, randnegativestationary, shuffled, 2, minibatch_embedding,1000,americano, 20000)')
system(['echo runmnistrandstat MNIST-s shuffled randstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'randnegativestationary','shuffled', 2, 'online_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, randnegativestationary, shuffled, 2, online_embedding,1000,americano, 20000)')
system(['echo runmnistrandstat MNIST-s shuffled randstat, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'randnegativestationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, randnegativestationary,shuffled, 2, minibatch_history_CB, 1000, americano, 20000)')
system(['echo runmnistrandstat MNIST-s shuffled randstat, 2, minibatch_history_CB >> done'  ]);
