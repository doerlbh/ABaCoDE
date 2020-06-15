# ABaCoDE



Code for our ICDMW 2018 paper: 

**"Contextual Bandit with Adaptive Feature Extraction"** 

by [Baihan Lin](http://www.columbia.edu/~bl2681/) (Columbia)*, [Djallel Bouneffouf](https://scholar.google.com/citations?user=i2a1LUMAAAAJ&hl=en) (IBM Research), [Guillermo Cecchi](https://researcher.watson.ibm.com/researcher/view.php?person=us-gcecchi) (IBM Research) and [Irina Rish](https://sites.google.com/site/irinarish/) (Mila, UdeM).

*Corresponding



For the latest full paper: https://arxiv.org/abs/1802.00981



All the experimental results can be reproduced using the code in this repository. Feel free to contact me by doerlbh@gmail.com if you have any question about our work.




**Abstract**

We consider an online decision making setting known as contextual bandit problem, and propose an approach for improving contextual bandit performance by using an adaptive feature extraction (representation learning) based on online clustering. Our approach starts with an off-line pre-training on unlabeled history of contexts (which can be exploited by our approach, but not by the standard contextual bandit), followed by an online selection and adaptation of encoders. Specifically, given an input sample (context), the proposed approach selects the most appropriate encoding function to extract a feature vector which becomes an input for a contextual bandit, and updates both the bandit and the encoding function based on the context and on the feedback (reward). Our experiments on a variety of datasets, and both in stationary and non-stationary environments of several kinds demonstrate clear advantages of the proposed adaptive representation learning over the standard contextual bandit based on "raw" input contexts.




## Info

Language: MATLAB, bash


Platform: MacOS, Linux, Windows

by Baihan Lin, Dec 2017




## Citation

If you find this work helpful, please try the models out and cite our works. Thanks!

    @inproceedings{lin2018contextual,
      title={Contextual Bandit with Adaptive Feature Extraction},
      author={Lin, Baihan and Bouneffouf, Djallel and Cecchi, Guillermo A and Rish, Irina},
      booktitle={2018 IEEE International Conference on Data Mining Workshops (ICDMW)},
      pages={937--944},
      year={2018},
      organization={IEEE}
    }



## Tasks

* MNIST
* STL-10
* CIFAR-10
* Caltech-101 S
* Warfarin
* mix: MNIST/Warfarin



## Nonstationarity

* Nonstationary context: varying cluster distribution

* Nonstationary context: negative images

* Nonstationary reward: multi-task environment

* Nonstationary reward: shuffled class labels

  

## Requirements

* MATLAB with deep learning toolbox



