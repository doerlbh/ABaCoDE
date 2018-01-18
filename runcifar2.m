% americano - CIFAR-10

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','unshuffled', 1, 'baseline', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,unshuffled, 1, baseline, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled half, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','unshuffled', 1, 'universal_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,unshuffled, 1, universal_embedding, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled half, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','unshuffled', 2, 'minibatch_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, halfnegativenonstationary, unshuffled, 2, minibatch_embedding,1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled half, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','unshuffled', 2, 'online_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, halfnegativenonstationary, unshuffled, 2, online_embedding,1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled half, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,unshuffled, 2, minibatch_history_CB, 1000, americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled half, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','unshuffled', 2, 'full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,unshuffled, 2, full_history_CB, 1000, americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled half, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled half, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,unshuffled, 2, multimode_full_history_CB, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled half, 2, multimode_full_history_CB >> done'  ]);

% americano - CIFAR-10 - rand

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','unshuffled', 1, 'baseline', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,unshuffled, 1, baseline, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled rand, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','unshuffled', 1, 'universal_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,unshuffled, 1, universal_embedding, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled rand, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','unshuffled', 2, 'minibatch_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, randnegativenonstationary, unshuffled, 2, minibatch_embedding,1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled rand, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','unshuffled', 2, 'online_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, randnegativenonstationary, unshuffled, 2, online_embedding,1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled rand, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,unshuffled, 2, minibatch_history_CB, 1000, americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled rand, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','unshuffled', 2, 'full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,unshuffled, 2, full_history_CB, 1000, americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled rand, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled rand, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,unshuffled, 2, multimode_full_history_CB, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled rand, 2, multimode_full_history_CB >> done'  ]);

% americano - CIFAR-10 - randstat

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','unshuffled', 1, 'baseline', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,unshuffled, 1, baseline, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled randstat, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','unshuffled', 1, 'universal_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,unshuffled, 1, universal_embedding, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled randstat, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','unshuffled', 2, 'minibatch_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, randnegativestationary, unshuffled, 2, minibatch_embedding,1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled randstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','unshuffled', 2, 'online_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, randnegativestationary, unshuffled, 2, online_embedding,1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled randstat, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,unshuffled, 2, minibatch_history_CB, 1000, americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled randstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','unshuffled', 2, 'full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,unshuffled, 2, full_history_CB, 1000, americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled randstat, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled randstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,unshuffled, 2, multimode_full_history_CB, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled randstat, 2, multimode_full_history_CB >> done'  ]);


% americano - CIFAR-10 - halfstat

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','unshuffled', 1, 'baseline', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,unshuffled, 1, baseline, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled halfstat, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','unshuffled', 1, 'universal_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,unshuffled, 1, universal_embedding, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled halfstat, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','unshuffled', 2, 'minibatch_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, halfnegativestationary, unshuffled, 2, minibatch_embedding,1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled halfstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','unshuffled', 2, 'online_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, halfnegativestationary, unshuffled, 2, online_embedding,1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled halfstat, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,unshuffled, 2, minibatch_history_CB, 1000, americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled halfstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','unshuffled', 2, 'full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,unshuffled, 2, full_history_CB, 1000, americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled halfstat, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled halfstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,unshuffled, 2, multimode_full_history_CB, 1000,americano, 10000)')
system(['echo runcifar2 CIFAR-10 unshuffled halfstat, 2, multimode_full_history_CB >> done'  ]);

exit

