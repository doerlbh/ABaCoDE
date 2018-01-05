gpuDevice(3)

% americano - Caltech101S - half

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 1, 'baseline', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativenonstationary,shuffled, 1, baseline, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 1, 'universal_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativenonstationary,shuffled, 1, universal_embedding, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, halfnegativenonstationary, shuffled, 2, minibatch_embedding,1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 2, 'online_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, halfnegativenonstationary, shuffled, 2, online_embedding,1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativenonstationary,shuffled, 2, minibatch_history_CB, 1000, americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativenonstationary,shuffled, 2, full_history_CB, 1000, americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativenonstationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativenonstationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 2, multimode_full_history_CB >> done'  ]);

% americano - Caltech101S - rand

F_main_classifier_local(1, 'Caltech101S', 'randnegativenonstationary','shuffled', 1, 'baseline', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativenonstationary,shuffled, 1, baseline, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled rand, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativenonstationary','shuffled', 1, 'universal_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativenonstationary,shuffled, 1, universal_embedding, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled rand, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativenonstationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, randnegativenonstationary, shuffled, 2, minibatch_embedding,1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled rand, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativenonstationary','shuffled', 2, 'online_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, randnegativenonstationary, shuffled, 2, online_embedding,1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled rand, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativenonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativenonstationary,shuffled, 2, minibatch_history_CB, 1000, americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled rand, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativenonstationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativenonstationary,shuffled, 2, full_history_CB, 1000, americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled rand, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativenonstationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativenonstationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled rand, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativenonstationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativenonstationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled rand, 2, multimode_full_history_CB >> done'  ]);

% americano - Caltech101S - randstat

F_main_classifier_local(1, 'Caltech101S', 'randnegativestationary','shuffled', 1, 'baseline', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativestationary,shuffled, 1, baseline, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled randstat, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativestationary','shuffled', 1, 'universal_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativestationary,shuffled, 1, universal_embedding, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled randstat, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativestationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, randnegativestationary, shuffled, 2, minibatch_embedding,1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled randstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativestationary','shuffled', 2, 'online_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, randnegativestationary, shuffled, 2, online_embedding,1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled randstat, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativestationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativestationary,shuffled, 2, minibatch_history_CB, 1000, americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled randstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativestationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativestationary,shuffled, 2, full_history_CB, 1000, americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled randstat, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativestationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativestationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled randstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'randnegativestationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, randnegativestationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled randstat, 2, multimode_full_history_CB >> done'  ]);


% americano - Caltech101S - halfstat

F_main_classifier_local(1, 'Caltech101S', 'halfnegativestationary','shuffled', 1, 'baseline', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativestationary,shuffled, 1, baseline, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled halfstat, 1, baseline >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativestationary','shuffled', 1, 'universal_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativestationary,shuffled, 1, universal_embedding, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled halfstat, 1, universal_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativestationary','shuffled', 2, 'minibatch_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, halfnegativestationary, shuffled, 2, minibatch_embedding,1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled halfstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativestationary','shuffled', 2, 'online_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, halfnegativestationary, shuffled, 2, online_embedding,1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled halfstat, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativestationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativestationary,shuffled, 2, minibatch_history_CB, 1000, americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled halfstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativestationary','shuffled', 2, 'full_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativestationary,shuffled, 2, full_history_CB, 1000, americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled halfstat, 2, full_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativestationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativestationary,shuffled, 2, multimode_minibatch_history_CB, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled halfstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativestationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativestationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled halfstat, 2, multimode_full_history_CB >> done'  ]);

exit



