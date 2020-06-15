
F_main_classifier_local_2018(0, 'mix-mnisfarin', 'purenonstationary','unshuffled', 1, 'universal_embedding', 1000, 'americano', 10000)
disp('F_main_classifier_local(0,mix-mnisfarin, purenonstationary, unshuffled, 1, universal_embedding,1000,latte, 10000)')
system(['echo runmix-mnisfarin mix-mnisfarin unshuffled, 1, universal_embedding >> done'  ]);

% ==============

F_main_classifier_local_2018(0, 'mix-mnisfarin', 'purenonstationary','unshuffled', 2, 'online_embedding', 1000, 'latte', 10000)
disp('F_main_classifier_local(0,mix-mnisfarin, purenonstationary, unshuffled, 2, online_embedding,1000,latte, 10000)')
system(['echo runmix-mnisfarin mix-mnisfarin unshuffled, 2, online_embedding >> done'  ]);

F_main_classifier_local_2018(0, 'mix-mnisfarin', 'purenonstationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'latte', 10000)
disp('F_main_classifier_local(0, mix-mnisfarin, purenonstationary,unshuffled, 2, minibatch_history_CB, 1000, latte, 10000)')
system(['echo runmix-mnisfarin mix-mnisfarin unshuffled, 2, minibatch_history_CB >> done'  ]);

F_main_classifier_local_2018(0, 'mix-mnisfarin', 'purenonstationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'latte', 10000)
disp('F_main_classifier_local(0, mix-mnisfarin, purenonstationary,unshuffled, 2, multimode_minibatch_history_CB, 1000, latte, 10000)')
system(['echo runmix-mnisfarin mix-mnisfarin unshuffled, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local_2018(0, 'mix-mnisfarin', 'purenonstationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'latte', 10000)
disp('F_main_classifier_local(0, mix-mnisfarin, purenonstationary,unshuffled, 2, multimode_full_history_CB, 1000, latte, 10000)')
system(['echo runmix-mnisfarin mix-mnisfarin unshuffled, 2, multimode_full_history_CB >> done'  ]);

% ==============

F_main_classifier_local_2018(0, 'mix-mnisfarin', 'purenonstationary','unshuffled', 4, 'multimode_minibatch_history_CB', 1000, 'latte', 10000)
disp('F_main_classifier_local(0, mix-mnisfarin, purenonstationary,unshuffled, 4, multimode_minibatch_history_CB, 1000, latte, 10000)')
system(['echo runmix-mnisfarin mix-mnisfarin unshuffled, 4, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local_2018(0, 'mix-mnisfarin', 'purenonstationary','unshuffled', 4, 'multimode_full_history_CB', 1000, 'latte', 10000)
disp('F_main_classifier_local(0, mix-mnisfarin, purenonstationary,unshuffled, 4, multimode_full_history_CB, 1000, latte, 10000)')
system(['echo runmix-mnisfarin mix-mnisfarin unshuffled, 4, multimode_full_history_CB >> done'  ]);

% ==============

F_main_classifier_local_2018(0, 'mix-mnisfarin', 'purenonstationary','unshuffled', 8, 'multimode_minibatch_history_CB', 1000, 'latte', 10000)
disp('F_main_classifier_local(0, mix-mnisfarin, purenonstationary,unshuffled, 8, multimode_minibatch_history_CB, 1000, latte, 10000)')
system(['echo runmix-mnisfarin mix-mnisfarin unshuffled, 8, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier_local_2018(0, 'mix-mnisfarin', 'purenonstationary','unshuffled', 8, 'multimode_full_history_CB', 1000, 'latte', 10000)
disp('F_main_classifier_local(0, mix-mnisfarin, purenonstationary,unshuffled, 8, multimode_full_history_CB, 1000, latte, 10000)')
system(['echo runmix-mnisfarin mix-mnisfarin unshuffled, 8, multimode_full_history_CB >> done'  ]);

%============================

exit



