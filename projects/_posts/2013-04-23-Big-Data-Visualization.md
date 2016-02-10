---
layout: project
section: projects
title: Scalable Visualization meets Relational Algebra
excerpt: "With funding from EMC and NSF, we explore new approaches to scalable visualization making use of large-scale database and dataflow engines."
image:
  feature:
  teaser: scalablevis.png
  thumb:
---

## Visualization Algorithms as Big Data Queries

<img class="teaser" src="{{ site.baseurl }}/images/scalablevis.png"/>

Large-scale visualization systems are typically designed to efficiently "push" datasets through the graphics hardware. However, exploratory visualization systems are increasingly expected to support scalable data manipulation, restructuring, and querying capabilities in addition to core visualization algorithms. We posit that new emerging abstractions for parallel data processing, in particular computing clouds, can be leveraged to support large-scale data exploration through visualization. In this paper, we take a first step in evaluating the suitability of the MapReduce framework to implement large-scale visualization techniques. MapReduce is a lightweight, scalable, general-purpose parallel data processing framework increasingly popular in the context of cloud computing. Specifically, we implement and evaluate a representative suite of visualization tasks (mesh rendering, isosurface extraction, and mesh simplification) as MapReduce programs, and report quantitative performance results applying these algorithms to realistic datasets. For example, we perform isosurface extraction of up to l6 isovalues for volumes composed of 27 billion voxels, simplification of meshes with 30GBs of data and subsequent rendering with image resolutions up to 80000 2 pixels. Our results indicate that the parallel scalability, ease of use, ease of access to computing resources, and fault-tolerance of MapReduce offer a promising foundation for a combined data manipulation and data visualization system deployed in a public cloud or a local commodity cluster.

## Visual Query Analysis for Distributed Databases

<img class="teaser" src="{{ site.baseurl }}/images/perfopticon.png"/>

Distributed database performance is often unpredictable due to issues such as system complexity, network congestion, or imbalanced data distribution. These issues are difficult for users to assess in part due to the opaque mapping between declaratively specified queries and actual physical execution plans. Database developers currently must expend significant time and effort scanning log files to isolate and debug the root causes of performance issues. In response, we present Perfopticon, an interactive query profiling tool that enables rapid insight into common problems such as performance bottlenecks and data skew. Perfopticon combines interactive visualizations of (1) query plans, (2) overall query execution, (3) data flow among servers, and (4) execution traces. These views coordinate multiple levels of abstraction to enable detection, isolation, and understanding of performance issues. We evaluate our design choices through engagements with system developers, scientists, and students. We demonstrate that Perfopticon enables performance debugging for real-world tasks.

## People

* Dominik Moritz
* Huy Vo
* Claudio Silva
* Dan Halperin
* Jeff Heer

## Papers

{% bibliography --query @*[key=moritz2015perfopticon || key=vo2011parallel] %}
