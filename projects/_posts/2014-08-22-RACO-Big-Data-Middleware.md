---
layout: project
section: projects
date: 2014-08-22 14:40:45
title: "Myria Middleware for Polystores"
excerpt: "Part of the Myria project, RACO (the Relational Algebra COmpiler) is a polystore middleware system that provides query translation, optimization, and orchestration across complex multi-system big data ecosystems."
image:
  feature:
  teaser: raco.png
  thumb:
---


RACO (the Relational Algebra COmpiler) is a polystore middleware system that provides query translation, optimization, and orchestration across complex multi-system big data ecosystems.  RACO provides language and optimization services for the [Myria big data management stack](http://myria.cs.washington.edu/) and serves as a core component of that project.  In addition to Myria, RACO includes support for Spark, SciDB, Grappa, C, and SQL backends. 

<img class="teaser" src="{{ site.baseurl }}/images/raco_arch.png"/>

Why does RACO exist?

There has been a &quot;Cambrian explosion&quot; of big data systems proposed and evaluated in the last eight years, but relatively little understanding of how these systems or the ideas they represent compare and complement one another. In both enterprise and science situations, &quot;one size does not fit all&quot;: we see analytics teams running multiple systems simultaneously, including specialized systems for limited use cases.

The proliferation of systems has lead to a surfeit of languages and APIs. It is time to consider a new framework that can span these systems and simplify the programming and maintenance of Big Data applications. There are two key goals for such a framework:

* Portability: It should be relatively easy to move an application or tool developed on one platform to op- erate against another. As a corollary, back-end data and analytics services should be swappable. At best, interoperability between current systems amounts to reading and writing files via HDFS or running ETL procedures, then switching to a new programming en- vironment. However, we see relatively few data mod- els (relations, arrays, graphs, key-value pairs) and relatively few computational models (relational algebra, parallel data-flow, iteration, linear algebra), suggesting that the heterogeneity we see in practice may amount to implementation details rather than fundamental in- compatibilities.

* Multi-Server Applications: It will be more common than not that a particular application will need to in- voke the services of multiple systems. The framework should make is easy to construct such applications, optimize and manage their execution, and keep track of the results in a shared catalog.

We are designing RACO to fullfill these requirements.  More generally, we are interested in measuring the price of abstraction: Can we generate code that competes with hand-authored programs, including programs in HPC contexts? Our hypothesis is that we can: there seem to be similarities between the ``tricks'' used in enterprise big data systems and scientific programming contexts related to handling skew, dynamic partitioning, and managing iteration.  We aim to model and exploit these tricks to provide a common programming model without paying performance penalties.


### Current Team

* Dylan Hutchison
* Dominik Moritz
* Shrainik Jain

### Alumni
* Brandon Myers (now at University of Iowa)
* Seung-Hee Bae (now at University of Western Michigan)
* Jeremy Hyrkas (now at Microsoft)
* Marianne Shaw (now at Tableau)
* Dan Halperin (now at Google)
* Andrew Whitaker (now at Amazon)

### Software

* [RACO](https://github.com/uwescience/raco)
* [myriaweb](https://github.com/uwescience/myria-web)


### Papers

{% bibliography --query @*[author~=Myers || author~=Jain || author~=Mattson || title~=Myria] %}
