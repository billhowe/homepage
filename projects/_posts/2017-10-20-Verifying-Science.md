---
layout: project
section: projects
date: 2017-10-20 14:00:00
title: "EZLearn+Automatic Claim Validation"
excerpt: "We are developing an end-to-end system for validating scientific claims against open data repositories using NLP, machine learning, and data integration techniques."
image:
  feature:
  teaser: claimverification.png
  thumb:
---

<img class="teaser" src="{{ site.baseurl }}/images/claimverification.png">

We combine distant supervision and co-learning to classify scientific datasets with no training data. 
The method, which we refer to as EZLearn can handle potentially thousands of classes that may change frequently, such that supervised approaches become infeasible. 

The key insight is to leverage the abundant unlabeled data together with two sources of ``organic'' supervision: 
a lexicon for the annotation classes and free-text descriptions that often accompany unlabeled data. 
Such indirect supervision is readily available in science and other high-value applications. 

To exploit these sources of information, EZLearn introduces an auxiliary natural language processing system, which uses the lexicon to generate initial noisy labels from the text descriptions, and then co-teaches the main classifier until convergence. Effectively, EZLearncombines distant supervision and co-training into a new learning paradigm for leveraging unlabeled data. 
Because no hand-labeled examples are required, EZLearn is naturally applicable to domains with a long tail of classes and/or frequent updates. 

We evaluated EZLearn on applications  in functional  genomics and scientific figure comprehension. In both cases, using text descriptions as the pivot, EZLearn learned to accurately annotate data samples without direct supervision, even substantially outperforming the state-of-the-art supervised methods trained on tens of thousands of annotated examples.

EZLearn is one component of a broader agenda to automatically validate scientific claims against published data. Researchers are increasingly required to submit data to public repositories as a condition of publication or funding, but this data remains underused and concerns about reproducibility continue to mount. We are developing an end-to-end system that can capture scientific claims from papers, validate them against the data associated with the paper, then generalize and adapt the claims to other relevant datasets in the repository to gather additional statistical evidence. 

<!---
The system consists of a claim expression language for representing statistical queries against the data, an information extraction subsystem for extracting claimsfrom free text, a schema matching subsystem to adapt the queriesto a particular dataset, and a Bayesian model for executing queries against other datasets in the repository. 

Although each of these steps involves significant uncertainty, the key insight is that executing a candidate claim against the data can be used as the basis for new algorithms to resolve ambiguity in data integration and information extraction tasks. Since we are guided by a published hypothesis, we avoid p-hacking concerns that have plagued other attempts at mining public repositories. We have evaluated our aproach by applying it to transcriptomics (gene expression) and producing reports summarizing the evidence for or against the claim based on the entirety of the collected knowledge in the repository. We find that the claim-based algorithms we propose outperform conventional data integration methods and achieve high accuracy relative to manual validation.
-->

### Collaborators
* Hoifung Poon, Microsoft Research

### Students
* Maxim Grechkin

### Publications
{% bibliography --query @*[key=grechkin17ezlearn] %}
{% bibliography --query @*[key=grechkin2017wide] %}

### Sponsors
* [NSF BIGDATA Award #1740996 Foundations of Responsible Data Management](https://www.nsf.gov/awardsearch/showAward?AWD_ID=1740996)
* Microsoft
