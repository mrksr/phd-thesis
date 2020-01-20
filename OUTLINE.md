Structure with Gaussian Processes
=================================

Introduction
------------
1. What is ML and Bayesian ML?
2. What are uncertainties and why are they useful?
3. Why are uncertainties subjective? What does a prior mean?
4. How do we interpret uncertainties? Why are the tasks we want to solve important?
5. Why do we have to keep experts in mind when formulating models.


Theory: Hierarchical Gaussian Processes
---------------------------------------
1. Graphical models and GPs
2. Efficient probabilistic inference, MCMC and Variational methods
2. Sparse GPs
3. Deep GPs


Structure from Composite Problems
---------------------------------
1. "Classical" Bayesian view of Likelihood maximization vs. semantic hierarchies. The latter can be used to impose structure.
2. Case Study: Data Association
    - Clear separation of responsibilities through modelling
    - Semantic components
    - Challenge: How to measure success?
3. Case Study: Time-Alignments and Wind-Power
    - Hierarchical model follows true generative process
    - Enforce constraints on dependent observations
    - Even more challenging to measure success - we want good samples!
4. Discussion: What makes a good model? Why are current metrics insufficient? What could we do instead?


Structure from Composite Tasks
------------------------------
1. Previously, we imposed structure through the generative process. Now, we impose structure through the measure of success (the task) itself.
2. Motivation: Probabilistic Numerics??
    - Introduce basic formulation
    - Discuss why task-based uncertainties make sense
    - Give a few examples for algorithms?
3. Case Study: BO
    - Introduce classic formulation
    - Reinterpret in fully Bayesian way
    - Erik's work: A good surrogate needn't be a good model of the objective
    - Experiments comparing the two?
4. Case Study: Reinforcement Learning
    - Derive Bayesian Model-Based continuous RL
    - Show relationship to "standard" RL
    - Uncertainty in policy is task-based uncertainty
    - Suggest new inference algorithms and compare?
5. Discussion: What to do with uncertainty? How to interpret marginal likelihoods?


Conclusion
----------
1. Through the progress in inference and computational power, we can now formulate much more interesting Bayesian models.
2. With abundant data, this allows for powerful black-box models. In the low-data scheme, we can use the power to do (approximate) inference in hierarchical models with ambiguities. We presented how to formulate such hierarchies based on problem and task properties.
3. The most imporatnt open question is how to measure whether such a model is good and expressive. What are sensible measures of success beyond marginal likelihoods? How do we judge if samples drawn from a generative model are actually sensible?
4. As the answer to this can only be subjective, a promising direction might be human-in-the-loop-learning where we ask experts to judge success.
