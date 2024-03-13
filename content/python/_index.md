+++
title = "ML with Python on HPC"
draft = false
outputs = ["Reveal"]
+++

# ML with Python on HPC

---

## Why use Python?

- Python is probably the most popular language for machine learning
- All popular machine learning platforms provide Python APIs
- All HPC consultants are very familiar with Python

---

## (minor) Caveats

- There are a lot of moving pieces:
  - Multiple Python versions 
  - Multiple machine learning platforms
  - GPUs
  - Jupyter
  - Conda 😭

---

# Setting up Python for ML on HPC

---

- It is best to use Python or Conda virtual environments (venvs) to install your packages
- To create venvs with Python:
  ``` bash
  module load python/3.8
  module load cuda11 cuda11-dnn cuda11-sdk
  python3 -m venv --system-site-packages <path-to-venv>
  source <path-to-venv>/bin/activate
  pip3 install <packages separated by space>
  pip3 install jupyter --force-reinstall
  ipython kernel install --name <kernel-name> --user \
          --display-name <optional-display-name>
  ```
- To create venvs with Conda, check [HPC docs](https://uarizona.atlassian.net/wiki/spaces/UAHPC/pages/75990839/Using+Python+Python+Packages#UsingPython&PythonPackages-UsingandInstallingPythonPackageswithConda)

---

# Access Jupyter from OOD

---

Navigate to <https://ood.hpc.arizona.edu/>. After login, you will see the Open OnDemand dashboard.
![](/images/ood_dashboard.png)

---

Select **Interactive Apps**, and then from the drop-down menu select **Jupyter Notebook**.
![](/images/ood_dropdown.png)

---

Fill in the details in the form that opens up, and select **Launch**.
![](/images/ood_jupyter_form.png)

---

After the session becomes available, select **Connect to Jupyter**.
![](/images/connect_to_service.png)

---

# Examples

---

For today's examples, install `torch`, `torchvision`, `torchaudio` and `fastai`.

- Pip 😊
  ``` bash
  pip3 install torch torchvision torchaudio \
       --index-url https://download.pytorch.org/whl/cu118
  pip3 install fastai
  ```
- Conda 🙁
  ``` bash
  conda install pytorch torchvision torchaudio \
        pytorch-cuda=11.8 -c pytorch -c nvidia
  conda install -c fastai fastai
  ```

---

## 🍄 classification

Identify fungi species by their images

![](/images/df20-sample.png)

Full dataset: [Danish Fungi 2020](https://sites.google.com/view/danish-fungi-dataset/home)

---

- Local dataset: Four species with the most images in the DF20-Mini dataset 
- You can copy the data to your working directory (under your home directory, or your PI's `/groups` or `/xdisk` share), and untar it:
  ``` bash
  cd <working-dir>
  cp /contrib/datasets/workshops/DF20M-4.tar.gz ./
  tar xvf DF20M-4.tar.gz
  ```
  
Download the Jupyter notebook: [fungi-classification.ipynb](/notebooks/fungi-classification.ipynb)

---

## Clustering 🐧 

Cluster penguins into groups based on their bill features

<img src="/images/palmerpenguins.png" width="600">

<cite>Artwork by [Allison Horst](https://www.allisonhorst.com/)</cite>
 
---

- We will use mean shift clustering to cluster the penguins
- Mean shift clustering updates candidates for centroids to be the mean of the points within  a given region
- Each observation belongs to the cluster with the nearest mean (centroid)
- You have to provide the bandwidth of the kernel
- Penguin data comes from the `palmerpenguins` dataset

Download the Jupyter notebook: [penguins-classification.ipynb](/notebooks/penguins-clustering.ipynb)
