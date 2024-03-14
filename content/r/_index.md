+++
title = "ML with R on HPC"
draft = false
outputs = ["Reveal"]
+++

# ML with R on HPC

---

## Why use R?

- R has been the quintessensial language for Statistics for a while
- Comes batteries included -- tons of datasets and data visualization tools
- RStudio & Shiny

---

## (minor) Caveats

- Multiple R versions
- Bazillion packages to do the same thing 
  - Solution: Use packages from the [`tidyverse`](https://www.tidyverse.org/) universe if possible
- Installing packages on HPC clusters can sometimes be non-trivial
  - Solution: Read the [HPC docs](https://uarizona.atlassian.net/wiki/spaces/UAHPC/pages/75989456/Using+R+Packages)
- Conda 😭

--- 

# Resources for learning ML with R

---

- [An Introduction to Statistical Learning ](https://www.statlearning.com) by James, Witten, Hastie, Tibishirani
- [Tidy Modeling With R](https://www.tmwr.org/) by Kuhn, Silge
- [Deep Learning and Scientific Computing with R torch](https://skeydan.github.io/Deep-Learning-and-Scientific-Computing-with-R-torch/) by Keydana
- The Elements of Statistical Learning by Hastie, Tibishirani, Friedman

---

# Setting up R for ML on HPC

---

- R and RStudio are already installed on HPC. 
- Highly recommend reading the [HPC docs](https://uarizona.atlassian.net/wiki/spaces/UAHPC/pages/75989456/Using+R+Packages) to troubleshoot R package installation issues.

---

# Access RStudio from OOD

---

Navigate to <https://ood.hpc.arizona.edu/>. After login, you will see the Open OnDemand dashboard.
![](/images/ood_dashboard.png)

---

Select **Interactive Apps**, and then from the drop-down menu select **RStudio Server**.
![](/images/ood_dropdown.png)

---

Fill in the details in the form that opens up, and select **Launch**.
![](/images/ood_rstudio_form.png)

---

After the session becomes available, select **Connect to RStudio Server**.
![](/images/connect_to_service.png)

---

# Examples

---

For today's examples, install the `palmerpenguins`, and `naivebayes` packages.

``` R
install.packages(c("palmerpenguins, naivebayes"))
```

---

## Incomplete datasets

Realistic datasets, like R's `airquality` dataset, often come with missing values.
-   Remove observations with missing entries
-   Fill the missing entries
-   Use models / algorithms that can account for missing entries (semi-supervised learning)

Download R script: [data_prelim.R](data_prelim.R)

---

## Clustering 🐧

Cluster penguins into groups based on their bill features

<img src="/images/palmerpenguins.png" width="600">

<cite>Artwork by [Allison Horst](https://www.allisonhorst.com/)</cite>
 
---

- We will use {{< math "k" />}}-means clustering to cluster the penguins
- {{< math "k" />}}-means clustering partitions {{< math "n" />}} observations into {{< math "k" />}} clusters
- Each observation belongs to the cluster with the nearest mean (centroid)
- You have to specify the number of clusters
- Penguin data comes from the `palmerpenguins` dataset

Download R script: [penguins_kmeans.R](penguins_kmeans.R)

---

## 🍄 classification

Classify mushroom as edible or poisonous based on their physical features

Full dataset: [Mushroom](https://archive.ics.uci.edu/dataset/73/mushroom)

Download R script with Naive Bayes classifier: [mushroom_naivebayes.R](mushroom_naivebayes.R)
 
---

# Backlinks

- [Return to main presentation]({{% relref "/" %}})
- [Go to the Python version]({{% relref "/python" %}})
