%gcp10

F_main_classifier(1, 'STL10', 'nonstationary','unshuffled', 2, 'multimode_full_history_CB', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1, STL10, nonstationary,unshuffled, 2,multimode_full_history_CB, 1000,gcp-gpu, 10000)')

F_main_classifier(1, 'STL10', 'nonstationary','unshuffled', 4, 'multimode_full_history_CB', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1, STL10, nonstationary,unshuffled, 4,multimode_full_history_CB, 1000,gcp-gpu, 10000)')

F_main_classifier(1, 'STL10', 'nonstationary','unshuffled', 8, 'multimode_full_history_CB', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1, STL10, nonstationary,unshuffled, 8,multimode_full_history_CB, 1000,gcp-gpu, 10000)')

F_main_classifier(1, 'STL10', 'nonstationary','unshuffled', 1, 'universal_embedding', 1000, 'gcp-gpu', 10000)
disp('F_main_classifier(1, STL10, nonstationary,unshuffled, 1,universal_embedding, 1000,gcp-gpu, 10000)')

disp('gcp10')

