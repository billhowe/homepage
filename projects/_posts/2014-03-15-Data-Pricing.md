---
layout: project
section: projects
date: 2013-04-20 14:00:00
title: "Data Pricing"
excerpt: "We developed theory and systems related to buying and selling data online."
image:
  feature:
  teaser: datapricing.png
  thumb:
---

<img class="teaser" src="{{ site.baseurl }}/images/datapricing.png"/>

There exists a growing market for structured data on the
Internet today, motivating a theoretical study of how relational
data should be priced. We advocate for a framework where the seller
defines a pricing scheme by stipulating the price of some
queries and allowing the buyer to purchase data expressed by any
query they wish; the system will derive the price automatically from
the pricing scheme. In this project, we explore query determinancy as 
a basis for pricing and build systems to manage price-equipped data.

More generally, the centralization afforded by cloud computing is spurring
new the creation of new digital markets for data and associated services. The database
community has an opportunity to set the trajectory of research and practice
for these markets.  In our work project, we explored some of the key
challenges that such markets face and discuss the associated
research problems that our community can help solve.

My interest in particular is to explore the value of data in science 
and link this value to attribution, scientometrics, and resource allocation for 
taxpayer-funded science.

## People
Leads: Dan Suciu, Magda Balazinska, Bill Howe

* Prasang Upadhyaya
* Paris Koutris 


## Papers

{% bibliography --query @*[author~=Koutris && title^=atalog] %}
{% bibliography --query @*[title~=icing] %}
