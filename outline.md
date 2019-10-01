Structured (Composite?) Gaussian Processes
==========================================

Introduction
------------
1. What is ML and Bayesian ML?
2. How does Bayesian Reasoning differ from "classic" ML?
3. What are uncertainties and why are they useful?
4. How do we interpret uncertainties?


Deep Gaussian Processes
-----------------------
1. Intro to GPs
2. Intro to Sparse GPs
3. Intro to Deep GPs


Structure from Composite Problems
---------------------------------
1. Case Study: Data Association
    - Clear separation of responsibilities through modelling
    - Semantic components
    - Challenge: How to measure success?
2. Case Study: Time-Alignments and Wind-Power
    - Hierarchical model follows true generative process
    - Enforce constraints on dependent observations
    - Even more challenging to measure success - we want good samples!
3. Discussion: What makes a good model? Why are current metrics insufficient?


Structure from Composite Tasks
------------------------------
1. Case Study: Probabilistic Numerics??
    - Introduce basic formulation
    - Discuss why task-based uncertainties make sense
    - Give overview of state of the art?
2. Case Study: BO
    - Introduce classic formulation
    - Reinterpret in fully Bayesian way
    - Erik's work: A good surrogate needn't be a good model of the objective
    - Experiments comparing the two?
3. Case Study: Reinforcement Learning
    - Derive Bayesian Model-Based continuous RL
    - Show relationship to "standard" RL
    - Uncertainty in policy is task-based uncertainty
    - Suggest new inference algorithms and compare?
