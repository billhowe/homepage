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
Researhers formally communicate through published papers, books and conferences proceedings. These published works summarize results in many forms: text, citations, figures, schematics, visualizations, equations, etc. Most of the research in scientometrics/bibliometrics -- the quantitative study of the academic literature -- has been done on the text and citations. In this project, we focus our efforts on the figures and images. These information dense objects are largely ignored in scientometrics yet they are many times the cornerstone of a paper. If you have ever picked up a cell biology paper, you will often see the entire paper summarized in one schematic. We want to include them both in our analysis of scholarly communication but also in improving information retrieval in science. These objects have been ignored primarily because they are big, unwieldy and hard to analyze. New, scalable approaches to machine learning provide a new toolset for doing this kind of research.

### Methods
We use patch-based machine vision techniques to classify figures by visualization type.  We achieved 91% accuracy obtained by 10-fold validation from our training set with 5 categories – equations (394), photos (782), tables (436), visualizations (890), and scheme (769). The visualization set includes quantitative figures such as bar charts, scatter plots, line charts, etc. The scheme set includes non-quantitative figures for illustration purpose such as flow chart, graphs, trees, etc. For the real task of classifying millions of images that we extracted from source papers, we found approximate 35% of them contains multiple sub-figures, named composite figures, and our classifier recognizes them as schemes or visualizations in most cases. However, they should not belong to any one of the five categories. A dismantling algorithm we proposed in ICPRAM 2015 resolves this issue. It splits a composite figure into small sub-images recursively, then classifies them into two types - auxiliaries such as text fragments and standalone figures, and finally merges sub-images to form a final segmentation based on their types and positions. From the result of dismantler, we can perform a more precise classification for composite figures.

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
* Amazon
