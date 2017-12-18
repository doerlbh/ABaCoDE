% gcp-gpu - stl10 - half

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','shuffled', 1, 'baseline', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,shuffled, 1, baseline, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled half, 1, baseline >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','shuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,shuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled half, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','shuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, halfnegativenonstationary, shuffled, 2, minibatch_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled half, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','shuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, halfnegativenonstationary, shuffled, 2, online_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled half, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,shuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled half, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','shuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,shuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled half, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,shuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled half, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,shuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled half, 2, multimode_full_history_CB >> done'  ]);

% gcp-gpu - STL10 - rand

F_main_classifier(1, 'STL10', 'randnegativenonstationary','shuffled', 1, 'baseline', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,shuffled, 1, baseline, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled rand, 1, baseline >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','shuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,shuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled rand, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','shuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, randnegativenonstationary, shuffled, 2, minibatch_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled rand, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','shuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, randnegativenonstationary, shuffled, 2, online_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled rand, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','shuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,shuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled rand, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','shuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,shuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled rand, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,shuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled rand, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,shuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled rand, 2, multimode_full_history_CB >> done'  ]);

% gcp-gpu - STL10 - randstat

F_main_classifier(1, 'STL10', 'randnegativestationary','shuffled', 1, 'baseline', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,shuffled, 1, baseline, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled randstat, 1, baseline >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','shuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,shuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled randstat, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','shuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, randnegativestationary, shuffled, 2, minibatch_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled randstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','shuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, randnegativestationary, shuffled, 2, online_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled randstat, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','shuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,shuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled randstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','shuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,shuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled randstat, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,shuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled randstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,shuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled randstat, 2, multimode_full_history_CB >> done'  ]);


% gcp-gpu - STL10 - halfstat

F_main_classifier(1, 'STL10', 'halfnegativestationary','shuffled', 1, 'baseline', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,shuffled, 1, baseline, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled halfstat, 1, baseline >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','shuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,shuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled halfstat, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','shuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, halfnegativestationary, shuffled, 2, minibatch_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled halfstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','shuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, halfnegativestationary, shuffled, 2, online_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled halfstat, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','shuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,shuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled halfstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','shuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,shuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled halfstat, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','shuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,shuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled halfstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','shuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,shuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10neg STL10 shuffled halfstat, 2, multimode_full_history_CB >> done'  ]);

gcpstl10negunshuffled




