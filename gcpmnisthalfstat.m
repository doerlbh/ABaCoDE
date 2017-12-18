% gcp-gpu - MNIST-s

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','shuffled', 1, 'baseline', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,shuffled, 1, baseline, 1000,gcp-gpu, 20000)')
system(['echo gcpmnisthalfstat MNIST-s shuffled halfstat, 1, baseline >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','shuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,shuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
system(['echo gcpmnisthalfstat MNIST-s shuffled halfstat, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','shuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,MNIST-s, halfnegativestationary, shuffled, 2, minibatch_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpmnisthalfstat MNIST-s shuffled halfstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','shuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,MNIST-s, halfnegativestationary, shuffled, 2, online_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpmnisthalfstat MNIST-s shuffled halfstat, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','shuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,shuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpmnisthalfstat MNIST-s shuffled halfstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','shuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,shuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpmnisthalfstat MNIST-s shuffled halfstat, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,shuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpmnisthalfstat MNIST-s shuffled halfstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'MNIST-s', 'halfnegativestationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, MNIST-s, halfnegativestationary,shuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpmnisthalfstat MNIST-s shuffled halfstat, 2, multimode_full_history_CB >> done'  ]);



