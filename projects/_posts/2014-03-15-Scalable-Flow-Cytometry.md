---
layout: project
section: projects
date: 2014-04-20 14:00:00
title: "Scalable Flow Cytometry"
excerpt: "We have developed algorithms, methods, systems, and applications in support of the Seaflow project in the Armbrust Lab in the UW department of Oceanography."
image:
  feature:
  teaser: seaflow.png
  thumb:
---

<img class="teaser" src="{{ site.baseurl }}/images/seaflow.png"/>


Recent technological innovations in flow cytometry now allow oceanographers to collect high-frequency flow cytometry data from particles in aquatic environments on a scale far surpassing conventional flow cytometers. The SeaFlow cytometer continuously profiles microbial phytoplankton populations across thousands of kilometers of the surface ocean. The data streams produced by instruments such as SeaFlow challenge the traditional sample-by- sample approach in cytometric analysis and illuminate the need for scalable clustering algorithms to extract population information from these large-scale, high-frequency flow cytometers.

We explore how available algorithms commonly used for medical applications perform at classification of such a large-scale, environmental flow cytometry data. We apply large-scale Gaussian mixture models (GMM) to massive data sets using Hadoop. This approach outperforms current state-of-the-art cytometry classification algorithms in accuracy, and can be coupled with manual or automatic partitioning of data into homogeneous sections for further classification gains. We propose the GMM with partitioning approach for classification of large-scale, high-frequency flow cytometry data.

In earlier work, we developed systems for managing ad hoc sensor data, recommending visualizations, and managing complex workflows all motivated in part by SeaFlow.

## People

* Dan Halperin, lead
* Jeremy Hyrkas
* Shrainik Jain
* Sagar Chitnis


## Papers
{% bibliography --query @*[key=hyrkas2016clustering] %}
{% bibliography --query @*[key=hyrkas2015time] %}
{% bibliography --query @*[key=maas2015gaussian] %}
{% bibliography --query @*[key=halperin2013ocean] %}
{% bibliography --query @*[key=howe2013collaborative] %}
{% bibliography --query @*[key=howe2013sqlshare] %}

