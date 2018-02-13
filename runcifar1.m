% americano - CIFAR-10

gpuDevice(3)

% F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','shuffled', 1, 'baseline', 1000, 'americano', 10000)
% disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,shuffled, 1, baseline, 1000,americano, 10000)')
% system(['echo runcifar1 CIFAR-10 shuffled half, 1, baseline >> done'  ]);

% F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','shuffled', 1, 'universal_embedding', 1000, 'americano', 10000)
% disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,shuffled, 1, universal_embedding, 1000,americano, 10000)')
% system(['echo runcifar1 CIFAR-10 shuffled half, 1, universal_embedding >> done'  ]);

% F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 10000)
% disp('F_main_classifier_local(1,CIFAR-10, halfnegativenonstationary, shuffled, 2, minibatch_embedding,1000,americano, 10000)')
% system(['echo runcifar1 CIFAR-10 shuffled half, 2, minibatch_embedding >> done'  ]);

% F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','shuffled', 2, 'online_embedding', 1000, 'americano', 10000)
% disp('F_main_classifier_local(1,CIFAR-10, halfnegativenonstationary, shuffled, 2, online_embedding,1000,americano, 10000)')
% system(['echo runcifar1 CIFAR-10 shuffled half, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,shuffled, 2, minibatch_history_CB, 1000, americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled half, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,shuffled, 2, full_history_CB, 1000, americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled half, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled half, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativenonstationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativenonstationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled half, 2, multimode_full_history_CB >> done'  ]);

% americano - CIFAR-10 - rand

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','shuffled', 1, 'baseline', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,shuffled, 1, baseline, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled rand, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','shuffled', 1, 'universal_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,shuffled, 1, universal_embedding, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled rand, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, randnegativenonstationary, shuffled, 2, minibatch_embedding,1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled rand, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','shuffled', 2, 'online_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, randnegativenonstationary, shuffled, 2, online_embedding,1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled rand, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,shuffled, 2, minibatch_history_CB, 1000, americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled rand, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,shuffled, 2, full_history_CB, 1000, americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled rand, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled rand, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativenonstationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativenonstationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled rand, 2, multimode_full_history_CB >> done'  ]);

% americano - CIFAR-10 - randstat

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','shuffled', 1, 'baseline', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,shuffled, 1, baseline, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled randstat, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','shuffled', 1, 'universal_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,shuffled, 1, universal_embedding, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled randstat, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, randnegativestationary, shuffled, 2, minibatch_embedding,1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled randstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','shuffled', 2, 'online_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, randnegativestationary, shuffled, 2, online_embedding,1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled randstat, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,shuffled, 2, minibatch_history_CB, 1000, americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled randstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,shuffled, 2, full_history_CB, 1000, americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled randstat, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled randstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'randnegativestationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, randnegativestationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled randstat, 2, multimode_full_history_CB >> done'  ]);


% americano - CIFAR-10 - halfstat

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','shuffled', 1, 'baseline', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,shuffled, 1, baseline, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled halfstat, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','shuffled', 1, 'universal_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,shuffled, 1, universal_embedding, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled halfstat, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, halfnegativestationary, shuffled, 2, minibatch_embedding,1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled halfstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','shuffled', 2, 'online_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(1,CIFAR-10, halfnegativestationary, shuffled, 2, online_embedding,1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled halfstat, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,shuffled, 2, minibatch_history_CB, 1000, americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled halfstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,shuffled, 2, full_history_CB, 1000, americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled halfstat, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled halfstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'CIFAR-10', 'halfnegativestationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 10000)
disp('F_main_classifier_local(1, CIFAR-10, halfnegativestationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 10000)')
system(['echo runcifar1 CIFAR-10 shuffled halfstat, 2, multimode_full_history_CB >> done'  ]);

exit




