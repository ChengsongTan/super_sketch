# The `super_sketch` and `super_fix` tools manual

This is the development repository for the `super_sketch` and `super_fix` tools presented in 
[*FormaliSE 2025*](https://conf.researchr.org/home/Formalise-2025#event-overview) for the 
[Isabelle](https://isabelle.in.tum.de/) proof assistant. 

The `super_sketch` tool automatically generates proofs for lemmas that may be split into 
multiple subgoals. It is based and inspire by Isabelle's *Sledgehammer* tool and Florian Haftman's 
[`Sketch_and_Explore`](https://isabelle.in.tum.de/dist/library/HOL/HOL-ex/Sketch_and_Explore.html)
library.

The `super_fix` tool was designed to automate the process of fixing an almost-correct theory file 
in the same way a human user would. The *almost-correct* usage refers to states where definitions, 
functions, and datatypes are assumed to be valid, but there are some proofs about them that are
not accepted, often due to an upstream modification of a definition.

Together with some Python scripting, these tools have helped in a large invariant verification 
project with 800 conjuncts and almost 54000 proof obligations. See below for usage examples.

## Requirements
  * The `supper_sketch` tool currently supports both Isabelle2023 and Isabelle2024.
    - To make it work for Isabelle2024, copy the files `Super.thy` and `Sledgehammer_Commands1.ML` into your working folder and import the theory as `Super`.
    - To make it work for Isabelle2023, copy the files `Super2023.thy` and `SC2023.ML` into your working folder and impor the theory as `Super2023`.
  * The `supper_fix` tool has been tested using Isabelle2024 in Unix systems.

## Getting started

### Super sketch

Invoke the utility by the command `super_sketch(...)`, where you fill in the `...` with some methods like `intro conjI`,`induct $VAR`, `cases $VAR` (where $VAR is a variable appearing in your theorem/lemma) and etc.

### Super fix