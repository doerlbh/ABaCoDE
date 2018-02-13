
F_main_compression_local(0, 'warfarin', 'nonstationary','shuffled', [5 25 50 100], 'minibatch_history_AE_CB', 1000, 'latte', 5000, 0.5, 0)
system(['echo runcompressa warfarin unshuffled, 5 25 50 100, mhAE, 0.5 0 >> done'  ]);

F_main_compression_local(0, 'warfarin', 'nonstationary','shuffled', [5 25 50 100], 'full_history_AE_CB', 1000, 'latte', 5000, 0.5, 0)
system(['echo runcompressa warfarin unshuffled, 5 25 50 100, fhAE, 0.5 0 >> done'  ]);


F_main_compression_local(0, 'MNIST-s', 'nonstationary','shuffled', [5 25 50 100], 'minibatch_history_AE_CB', 1000, 'espresso', 20000, 0.5, 0)
system(['echo runcompressa MNIST-s shuffled, 5 25 50 100, mhAE, 0.5 0 >> done'  ]);

F_main_compression_local(0, 'MNIST-s', 'nonstationary','shuffled', [5 25 50 100], 'full_history_AE_CB', 1000, 'espresso', 20000, 0.5, 0)
system(['echo runcompressa MNIST-s shuffled, 5 25 50 100, fhAE, 0.5 0 >> done'  ]);

F_main_compression_local(0, 'MNIST-s', 'nonstationary','unshuffled', [5 25 50 100], 'minibatch_history_AE_CB', 1000, 'espresso', 20000, 0.5, 0)
system(['echo runcompressa MNIST-s unshuffled, 5 25 50 100, mhAE, 0.5 0 >> done'  ]);

F_main_compression_local(0, 'MNIST-s', 'nonstationary','unshuffled', [5 25 50 100], 'full_history_AE_CB', 1000, 'espresso', 20000, 0.5, 0)
system(['echo runcompressa MNIST-s unshuffled, 5 25 50 100, fhAE, 0.5 0 >> done'  ]);

exit

