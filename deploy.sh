#!/bin/sh

jekyll build
rsync -vaz _site/ billhowe@bicycle.cs.washington.edu:public_html
rsync -vaz _site/ billhowe@ovid.u.washington.edu:public_html
