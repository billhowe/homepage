---
layout: default
section: publications
title: "Publications"
---

[Google Scholar](https://scholar.google.com/citations?user=dQ-x9NQAAAAJ) --- [DBLP](http://dblp.uni-trier.de/pers/hd/h/Howe:Bill)

{% for year in (2002..2016) reversed %}
  <h2>{{ year }}</h2>
  {% bibliography --query @*[year = {{year}}] %}
{% endfor %}

