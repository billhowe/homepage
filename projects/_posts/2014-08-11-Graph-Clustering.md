---
layout: project
section: projects
title: Clustering Billion-Edge Graphs
excerpt: "Working at the intersection of network science, databases, and high-performance computing, we developed a series of novel parallel algorithms based on Infomap serial graph clustering algorithm.  Infomap has been shown to produce higher quality clusters in multiple third-party benchmarks; our parallel methods achieve comparable quality at massive scale through novel approximations."
image:
  feature:
  teaser: gossipmap.png
  thumb:
---

<img class="teaser" src="{{ site.baseurl }}/images/gossipmap.png"/>

We developed a family of parallel and high-throughput algorithms for computing graph clusters based on the [Infomap equation](http://www.mapequation.org/), a flow-based clustering objective function that encodes the information content of a random walk through the graph: short encodings involve big jumps between well-defined clusters, just like geographic maps use landmarks effectively.  Infomap has won several third-party benchmarks, but remains constrained by its serial implementation.

Seung-Hee Bae developed a multi-core generalization of Infomap called RelaxMap, a new technique called prioritization that can improve nearly any graph clustering algorithm, and a highly scalable approximation algorithm called GossipMap. Relaxmap "relaxes" concurrency assumptions to avoid lock overhead, achieving high parallel efficiency in shared-memory multicore experiments while exhibiting similar convergence properties and finding similar community structures as the serial algorithm.  Prioritization focuses the algorithm on the neighborhoods surrounding the vertices moved in the previous iteration, providing a nearly fre 30% speedup in any clustering algorithm based on vertex movement.  Gossipmap uses a local-only approximation to the infomap objective function to avoid expensive global computations.  Empricially and quite surprisingly, this aggressive approximation achieves very competitive results with the serial Infomap algorithm and allows us to cluster billion-edge directed graphs using the methods with the highest-known quality.

# People
* Bill Howe
* Seung-Hee Bae

# Software 
See the [project page on github](http://uwescience.github.io/RelaxMap/)

# Papers

{% bibliography --query @*[author~=Seung] %}
