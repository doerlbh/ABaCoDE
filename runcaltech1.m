gpuDevice(3)

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 2, 'online_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, halfnegativenonstationary, shuffled, 2, online_embedding,1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 2, online_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativenonstationary,shuffled, 2, minibatch_history_CB, 1000, americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 2, minibatch_history_CB >> done'  ]);

runcifar1

exit



