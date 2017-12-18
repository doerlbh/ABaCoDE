% gcp-gpu - stl10 - half

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','unshuffled', 1, 'baseline', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,unshuffled, 1, baseline, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled half, 1, baseline >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','unshuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,unshuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled half, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','unshuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, halfnegativenonstationary, unshuffled, 2, minibatch_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled half, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','unshuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, halfnegativenonstationary, unshuffled, 2, online_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled half, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,unshuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled half, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','unshuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,unshuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled half, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled half, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativenonstationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativenonstationary,unshuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled half, 2, multimode_full_history_CB >> done'  ]);

% gcp-gpu - STL10 - rand

F_main_classifier(1, 'STL10', 'randnegativenonstationary','unshuffled', 1, 'baseline', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,unshuffled, 1, baseline, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled rand, 1, baseline >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','unshuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,unshuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled rand, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','unshuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, randnegativenonstationary, unshuffled, 2, minibatch_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled rand, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','unshuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, randnegativenonstationary, unshuffled, 2, online_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled rand, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,unshuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled rand, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','unshuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,unshuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled rand, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled rand, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativenonstationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativenonstationary,unshuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled rand, 2, multimode_full_history_CB >> done'  ]);

% gcp-gpu - STL10 - randstat

F_main_classifier(1, 'STL10', 'randnegativestationary','unshuffled', 1, 'baseline', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,unshuffled, 1, baseline, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled randstat, 1, baseline >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','unshuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,unshuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled randstat, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','unshuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, randnegativestationary, unshuffled, 2, minibatch_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled randstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','unshuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, randnegativestationary, unshuffled, 2, online_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled randstat, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,unshuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled randstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','unshuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,unshuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled randstat, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled randstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'randnegativestationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, randnegativestationary,unshuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled randstat, 2, multimode_full_history_CB >> done'  ]);


% gcp-gpu - STL10 - halfstat

F_main_classifier(1, 'STL10', 'halfnegativestationary','unshuffled', 1, 'baseline', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,unshuffled, 1, baseline, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled halfstat, 1, baseline >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','unshuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,unshuffled, 1, universal_embedding, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled halfstat, 1, universal_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','unshuffled', 2, 'minibatch_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, halfnegativestationary, unshuffled, 2, minibatch_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled halfstat, 2, minibatch_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','unshuffled', 2, 'online_embedding', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1,STL10, halfnegativestationary, unshuffled, 2, online_embedding,1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled halfstat, 2, online_embedding >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','unshuffled', 2, 'minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,unshuffled, 2, minibatch_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled halfstat, 2, minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','unshuffled', 2, 'full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,unshuffled, 2, full_history_CB, 1000, gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled halfstat, 2, full_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','unshuffled', 2, 'multimode_minibatch_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,unshuffled, 2, multimode_minibatch_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled halfstat, 2, multimode_minibatch_history_CB >> done'  ]);

F_main_classifier(1, 'STL10', 'halfnegativestationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 20000)
disp('F_main_classifier(1, STL10, halfnegativestationary,unshuffled, 2, multimode_full_history_CB, 1000,gcp-gpu, 20000)')
system(['echo gcpstl10negunshuffled STL10 unshuffled halfstat, 2, multimode_full_history_CB >> done'  ]);



