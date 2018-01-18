gpuDevice(5)

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','unshuffled', 2, 'minibatch_embedding', 1000, 'americano', 8000)
disp('F_main_classifier_local(1,Caltech101S, halfnegativenonstationary, unshuffled, 2, minibatch_embedding,1000,americano, 8000)')
system(['echo runcaltechnegunshuffled Caltech101S unshuffled half, 2, minibatch_embedding >> done'  ]);

F_main_classifier_local(1, 'Caltech101S', 'halfnegativenonstationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 8000)
disp('F_main_classifier_local(1, Caltech101S, halfnegativenonstationary,shuffled, 2, multimode_full_history_CB, 1000,americano, 8000)')
system(['echo runcaltechneg Caltech101S shuffled half, 2, multimode_full_history_CB >> done'  ]);

runcifar2

exit

