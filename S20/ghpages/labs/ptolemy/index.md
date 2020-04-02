---
layout: page
title: "Analyzing Ptolemy's Geography"
---


## Background

Ptolemy's *Geography* includes locations in longitude-latitude coordinates for more than 6,000 points.  How can we evaluate the accuracy of his spatial data?

While his scheme of longitude and latitude is the same one we use -- 360 degrees of longitude measured from an arbitrary 0 (the *origin*), and 360 degrees of latitude with 0 at the equator, running to 90 degrees North and 90 degrees south at the poles -- his raw data do not fall near the corresponding modern locations.  

Recall that we need to make **three** adjustments to Ptolemy's coordinates in order to compare them with modern values.

### Scale

Ptolemy's data cover too large a proportion of the earth (because he assumed too small a value for the circumference of the earth when he was converting ground distances to spherical longitude-latitude coordinates).  Ptolemy's figure was 180,000 stades.  A more widely accepted figure was the estimate of Eratosthenes of Cyrene: 250,000 stades.  We can rescale Ptolemy's data by reducing all his spherical coordinates in the proportion of 18/25.

### Origin of longitude

Ptolemy did not place the origin of longitude in Greenwich, England, so we need to shift all his scaled longitude values to account for that.

Comparison of almost 500 sites in Ptolemy's data set with corresponding modern locations suggests that Ptolemy's 0 of longitude was about 12.8 degrees west of Greenwich.

### Base line for measuring latitude

When Ptolemy converted ground distances to spherical coordinates, he did not use the equator (0 degrees of latitude) as his baseline to compute from.  Instead, he used "the parallel through Rhodes," which he gives as 36 degrees north of the equator.  But if we scale his raw value of 36 degrees by the ratio of 18/25, then the baseline he thought was 36 degrees north of the equator was actually less than 26 degrees north of the equator.  We need to *add* to each latitude value this difference (roughly 10 degrees) between the raw value of 36 degrees and the scaled-down value.  

In scala, we could compute the offset like this:

```scala
val ratio = 18.0 / 25.0
val rhodesRaw = 36.0
val rhodesScaled = rhodesRaw * ratio
val offset = rhodesRaw - rhodesScaled
```


## Jupyter notebook

There's a [Jupyter notebook to get you started](https://mybinder.org/v2/gh/neelsmith/arch-data-analysis-ipynb/master?filepath=nbs%2Fptolemy.ipynb) with this assignment.  [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/neelsmith/arch-data-analysis-ipynb/master?filepath=nbs%2Fptolemy.ipynb)
