---
layout: project
section: projects
date: 2021-11-30
title: "Taxi Demanding Inpainting Using Partial Convolution"
excerpt: "We use image inpainting technique -- partial convolution network, to inpaint raster taxi demand data in NYC."
image:
  feature:
  teaser: taxi-inpainting.png
  thumb:
---

<img class="teaser" src="https://github.com/billhowe/homepage/blob/master/images/taxi-inpainting.png">

Urban data usually contains missing values, such that part of the region has values for the variables of interest, while other regions do not. The missing values could potentially hinder the usability of urban data in urban computing. Traditionally, there are statistical approaches to impute missing values, such as global/local mean imputing, interpolations, spatial regression models etc. But in recent years, it has been spotted that deep learning methods are powerful to model non-linear interactions of features and generate promising results in many domains, including image inpainting techniques in computer vision. Image inpainting techniques are capable of recovering missing piexels such that the reconstructed images are realistic.

Image inpainting models are not limited to the application of recovering natural images. Some existing literature has shown some promising results of utilizing image inpainting models to impute geo-spatial missing data, such as missing sea surface temperature or climate information from satellite images. Those images are different from natural images, in the sense that they are highly specialized and are not as diverse as natural images. But image inpainting approaches are successful in completing the missing information. Given the success of inpainting models in geo-spatial impainting, and given the similar format of natural images and grid/raster urban data, we hypothesize that it is also promising to implement image inpainting techniques to impute missing urban data. The completed urban data with high-quality imputed values would increase its usability.

However, urban data is also different from either natural images or satellite images. Urban data has another prominent feature --- sparsity. The distribution of almost any variables in urban setting will likely highly resemble the population distribution --- wherever there are more population, there are more human activities and higher values of variables of interest. For example, in our study we focused on taxi demand in New York city. Most of the demand came from Manhattan area with its surrounding, with significantly less demand from Brooklyn and Queens. This sparsity problem is common in urban computing, but problematic if we want to impute missing values using image impainting techniques. To better align the image inpainting techniques with the urban dynamics, we propose a biased masking method and a new loss function. Together, they help us address the sparsity issues aforementioned and achieve the goal to give different attention to different areas. The biased masking method can mask out highly centralized areas, which benefits the model learning. The new loss function alleviates the issue of the model predicting everything to be zero in less-demanded areas. In summary, our contributions include:

- As far as we acknowledge, we are the first group to utilize image inpaintng techniques in urban computing to address the issue of missing values in urban data. Our experiments demonstrated promising utility of image inpainting models in urban domain and encourage future work in the domain catering to more urban-specific issues.
- Given the sparsity nature of urban data, we propose a new and simple relative loss function that alleviates the issue of inpainting zeros in less-demanded areas. The new loss function can bridge the absolute gaps between the inpainted values and ground truth values, as well as giving more attention to those less-demanded areas. 
- We propose a new masking paradigm --- biased masking, to address the concern that it is highly likely that the masks will cover areas that are entirely zeros, given the sparsity nature of urban data. The biased masking approach will ensure part of the highly signaled areas are covered, which potentially benefits the learning process of the model.
    
### Students
* Bin Han
