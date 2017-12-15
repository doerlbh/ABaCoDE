% gcp1 - Caltech101S

F_main_classifier(1, 'Caltech101S', 'nonstationary','unshuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 8000)
disp('F_main_classifier(1, Caltech101S, nonstationary,unshuffled, 1, universal_embedding, 1000,gcp-gpu, 8000)')
system(['echo Caltech101S unshuffled, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'Caltech101S', 'nonstationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 8000)
disp('F_main_classifier(1, Caltech101S, nonstationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 8000)')
system(['echo Caltech101S unshuffled, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'Caltech101S', 'nonstationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 8000)
disp('F_main_classifier(1, Caltech101S, nonstationary,unshuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 8000)')
system(['echo Caltech101S unshuffled, 2, multimode_full_history_CB >> done'  ]);

F_main_classifier(1, 'Caltech101S', 'nonstationary','unshuffled', 4, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 8000)
disp('F_main_classifier(1, Caltech101S, nonstationary,unshuffled, 4, multimode_minibatch_history_CB, 1000,gcp-gpu, 8000)')
system(['echo Caltech101S unshuffled, 4, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'Caltech101S', 'nonstationary','unshuffled', 4, 'multimode_full_history_CB', 1000, 'gcp-gpu', 8000)
disp('F_main_classifier(1, Caltech101S, nonstationary,unshuffled, 4, multimode_full_history_CB, 1000,gcp-gpu, 8000)')
system(['echo Caltech101S unshuffled, 4, multimode_full_history_CB >> done'  ]);

F_main_classifier(1, 'Caltech101S', 'nonstationary','unshuffled', 8, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 8000)
disp('F_main_classifier(1, Caltech101S, nonstationary,unshuffled, 8, multimode_minibatch_history_CB, 1000,gcp-gpu, 8000)')
system(['echo Caltech101S unshuffled, 8, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'Caltech101S', 'nonstationary','unshuffled', 8, 'multimode_full_history_CB', 1000, 'gcp-gpu', 8000)
disp('F_main_classifier(1, Caltech101S, nonstationary,unshuffled, 8, multimode_full_history_CB, 1000,gcp-gpu, 8000)')
system(['echo Caltech101S unshuffled, 8, multimode_full_history_CB >> done'  ]);


gcpstl101