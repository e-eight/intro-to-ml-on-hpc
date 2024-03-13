+++
title = "Introduction to ML on HPC"
draft = false
outputs = ["Reveal"]
+++

# Introduction to ML on HPC

---

# What is ML?

---

> "The training of programs developed by allowing a computer to learn from its experience, rather than through manually coding the individual steps."
>
> <cite>fastai book</cite>

---

It’s just like doing science.

``` mermaid
flowchart LR
    A[Create a model to explain some observations] --> B[Use the model to predict new observations]
```

Except in this case the machine - the computer - is "doing the science", with a "little" help from us.

---

# ML workflow

---

## Training
``` mermaid
flowchart LR
    A[Model
    with random parameters] --> B{Training}
    C[Data] --> B
    B --> D[Model
    with trained parameters]
```

---

## Inference
``` mermaid
flowchart LR
    E[Inputs] --> F[Model
    with trained parameters] --> G[Predictions]
```

---

# What can we do with ML?

---

- Play chess, go, ..
- Classify data: 🐶 vs. 🐱, galaxies, 🐦 species from their calls, ...
- Recommender systems: 🎥 / 📚 / 📜 suggestions, ...
- Solve {{< math "\frac{\partial u}{\partial t} + u \frac{\partial u}{\partial x} = \nu\frac{\partial^2 u}{\partial x^2}" />}}
- Cluster data into different groups
- Write poetry, create art, write your thesis 🚫

--- 

# Things to keep in mind

--- 

- Computers aren't smart, but can be (over)confident
- The "little" help that we provide is actually big
  - We decide which model, data, training hyperparameters, ...
- **Data is central to machine learning.** 
  - Untrained model is no better than random chance
  - Trained models often learn biases in data
- Lot of machine learning has traditionally been known as Statistics

--- 

# ML on HPC

---

## Why use (UA) HPC for ML?

- Datasets are becoming larger and more varied
- Models are becoming larger
- You don't have to worry about setting up and maintaining hardware

---

## Tools for ML on (UA) HPC

- [ML with Python]({{% relref "/python" %}})
- [ML with R]({{% relref "/r" %}})
- ML with Matlab, Mathematica, C++, ...
