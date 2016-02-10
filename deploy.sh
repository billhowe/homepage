#!/bin/sh

jekyll build
rsync -vaz _site/ billhowe@tricycle.cs.washington.edu:public_html
