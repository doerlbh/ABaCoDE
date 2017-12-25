
% americano - MNIST-s - half
% gpuDevice(5)

% F_main_classifier(1, 'MNIST-s', 'halfnegativenonstationary','unshuffled', 1, 'baseline', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativenonstationary,unshuffled, 1, baseline, 1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled half, 1, baseline >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativenonstationary','unshuffled', 1, 'universal_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativenonstationary,unshuffled, 1, universal_embedding, 1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled half, 1, universal_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativenonstationary','unshuffled', 2, 'minibatch_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, halfnegativenonstationary, unshuffled, 2, minibatch_embedding,1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled half, 2, minibatch_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativenonstationary','unshuffled', 2, 'online_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, halfnegativenonstationary, unshuffled, 2, online_embedding,1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled half, 2, online_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativenonstationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativenonstationary,unshuffled, 2, minibatch_history_CB, 1000, americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled half, 2, minibatch_history_CB >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativenonstationary','unshuffled', 2, 'full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativenonstationary,unshuffled, 2, full_history_CB, 1000, americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled half, 2, full_history_CB >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativenonstationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativenonstationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled half, 2, multimode_minibatch_history_CB >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativenonstationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativenonstationary,unshuffled, 2, multimode_full_history_CB, 1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled half, 2, multimode_full_history_CB >> done'  ]);

% americano - MNIST-s - halfstat

% F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','unshuffled', 1, 'baseline', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,unshuffled, 1, baseline, 1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled halfstat, 1, baseline >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','unshuffled', 1, 'universal_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,unshuffled, 1, universal_embedding, 1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled halfstat, 1, universal_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','unshuffled', 2, 'minibatch_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, halfnegativestationary, unshuffled, 2, minibatch_embedding,1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled halfstat, 2, minibatch_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','unshuffled', 2, 'online_embedding', 1000, 'americano', 20000)
disp('F_main_classifier(1,MNIST-s, halfnegativestationary, unshuffled, 2, online_embedding,1000,americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled halfstat, 2, online_embedding >> done'  ]);

% F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,unshuffled, 2, minibatch_history_CB, 1000, americano, 20000)')
% system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled halfstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','unshuffled', 2, 'full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,unshuffled, 2, full_history_CB, 1000, americano, 20000)')
system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled halfstat, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,americano, 20000)')
system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled halfstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'americano', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,unshuffled, 2, multimode_full_history_CB, 1000,americano, 20000)')
system(['echo gcpmnisthalfunshuffled MNIST-s unshuffled halfstat, 2, multimode_full_history_CB >> done'  ]);

% exit
