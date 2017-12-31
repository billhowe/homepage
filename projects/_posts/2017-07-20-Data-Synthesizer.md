---
layout: project
section: projects
date: 2017-07-20 14:00:00
title: "Privacy-Preserving Synthetic Data"
excerpt: "We are developing usable, general tools to generate shareable synthetic datasets with strong privacy guarantees from any input dataset."
image:
  feature:
  teaser: datasynth.png
  thumb:
---

<img class="teaser" src="{{ site.baseurl }}/images/datasynth.png">

To facilitate collaboration over sensitive data, we developed DataSynthesizer, a tool that takes a sensitive dataset as input and generates a structurally and statistically similar synthetic dataset with strong privacy guarantees. The data owners need not release their data, while potential  collaborators can begin developing models and methods with some confidence that their results will work similarly on the real dataset.  The distinguishing feature of DataSynthesizer is its usability --- the data owner need not make any assumptions, set any parameters, nor take on any liability to start generating and sharing data safely and effectively.

DataSynthesizer consists of three high-level modules --- DataDescriber, DataGenerator and ModelInspector. DataDescriber investigates the data types, correlations and distributions of the attributes in the private dataset and produces a model of the data, adding noise to the model to preserve privacy.
DataGenerator samples from the noisy model and outputs synthetic data. ModelInspector shows an intuitive description of the model that was computed by the DataDescriber, allowing the data owner to evaluate the results of the summarization process and optionally adjust parameters to fine tune the process. 

We have been using DataSynthesizer in an urban science context, where sharing sensitive, legally encumbered data between agencies and with outside collaborators is reported as a major obstacle to data-driven decision-making. 


### Software
[DataSynthesizer is available on github](https://github.com/DataResponsibly/DataSynthesizer)

### Collaborators
* Julia Stoyanovich, Drexel University
* Gerome Miklau, UMass Amherst
* Ariel Rokem, UW eScience Institute

### Students
* Luke Rodriguez, UW iSchool
* Haoyue Ping, Drexel University

### Publications

{% bibliography --query @*[key=howe17bloombergdatasynthesizer] %}
{% bibliography --query @*[key=ping17datasynthesizer] %}

### Sponsors
* [NSF BIGDATA Award #1740996 Foundations of Responsible Data Management](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1740996)
* Microsoft
* University of Washington Information School
* UW eScience Institute
