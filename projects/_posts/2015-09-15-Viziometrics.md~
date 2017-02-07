---
layout: project
section: projects
date: 2015-01-15 14:00:00
title: "Viziometrics"
excerpt: "Machine vision, machine learning, and bibliometric analysis to understand how visualization is used to convey ideas in the scientific literature."
image:
  feature:
  teaser: viziometrics.png
  thumb:
---

<img class="teaser" src="{{ site.baseurl }}/images/viziometrics.png">

### About [Viziometrics](http://viziometrics.org/)
Scientific results are communicated visually in the literature through diagrams, visualizations, and photographs. These information-dense objects have been largely ignored in bibliometrics and scientometrics studies when compared to citations and text. In this project, we use techniques from computer vision and machine learning to classify more than 8 million figures from PubMed into 5 figure types and study the resulting patterns of visual information as they relate to impact. We find that the distribution of figures and figure types in the literature has remained relatively constant over time, but can vary widely across field and topic.  We find a significant correlation between scientific impact and the use of visual information, where higher impact papers tend to include more diagrams, and to a lesser extent more plots and photographs.  To explore these results and other ways of extracting this visual information, we have built a visual browser to illustrate the concept and explore design alternatives for supporting viziometric analysis and organizing visual information. We use these results to articulate a new research agenda -- viziometrics -- to study the organization and presentation of visual information in the scientific literature.

### Press and Recognition

* June 2016: The Economist has written a [nice print piece](http://www.economist.com/news/science-and-technology/21700617-scientific-study-importance-diagrams-science-graphic-details) on our arXiv paper.

* June 2016: Featured on LabWorm, a discovery platform that exposes top research tools with the goal of promoting a more open, collaborative and cutting edge science. 

* June 2016: MIT Technology Review wrote a nice piece on our project: [The First Visual Search Engine for Scientific Diagrams](https://www.technologyreview.com/s/601589/the-first-visual-search-engine-for-scientific-diagrams/)


### Methods
We originally used patch-based machine vision techniques to classify figures by visualization type, achieving 91% accuracy on a test set with 5 categories – equations (394), photos (782), tables (436), visualizations (890), and diagrams (769).  More recently, we have begun using deep learning to achieve higher quality results at the expense of training time.
For the task of classifying millions of images that we extracted from source papers, we found approximate 35% of them contains multiple sub-figures. A dismantling algorithm we proposed in ICPRAM 2015 resolves this issue by parsing each composite figure into multiple sub-figures. The algorithm splits each composite figure into visual "tokens" recursively, classifies each token as either auxiliary (e.g., text fragments) or standalone figures, then merges the tokens recursively to reconstruct whole figures.  The algorithm terminates when the reonstructed figure achieve a certain "completeness" score based on their types and positions. Using the results of the dismantler, we can more precisely classify the sub-figures.

### Data
Our data for this research project comes from several sources. Currently, the prototype includes more than 8 million images from PubMed Central. We plan to add other data sets as they become available.

### People
* Po-shen Lee, PhD Student, University of Washington, Electrical Engineering
* Bill Howe, Associate Director, University of Washington, eScience Institute
* Jevin D. West, Assistant Professor, University of Washington, Information School

### Papers

{% bibliography --query @*[key=lee2016viziometrics] %}
{% bibliography --query @*[key=lee2016viziometrix] %}
{% bibliography --query @*[key=lee2015dismantling] %}

### Sponsors
* Gordon and Betty Moore Foundation and Alfred P. Sloan Foundation
* UW eScience Institute
* University of Washington iSchool
* Amazon
