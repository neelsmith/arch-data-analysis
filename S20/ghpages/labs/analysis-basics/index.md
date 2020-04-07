---
layout: page
title: "Individual module: analysis basics"
---

## Overview

You will answer a straightforward question about an archaeological data set recording information about necropoleis (cemetery sites) in the region of ancient Lycia (southwestern Turkey):  how many tombs are covered in the data set?

You will compose a Jupyter notebook that answers the question, and commit your notebook to your github repository.

## Due date

May 6.



## Background


![Myra/Demre](https://upload.wikimedia.org/wikipedia/commons/c/c7/Myra_Tombs_Temples.jpg)

In ancient Lycia, rock-cut tombs often clustered together in cemetery sites, or necropoleis, like ancient Myra (modern Demre), illustrated above.  The data set you will work with contains data about Lycian necropoleis including the number of tombs at each site.  You will figure out how many total tombs are represented in the data set.


## Instructions

### The data set

The dataset is available as a delimited-text file [here](http://shot.holycross.edu/courses/ada/S20/data/lycianNecropoleis.cex). The format is one record per row, and columns are delimited by the pound sign (hash tag) `#`.  The file includes a header row:

`sitename#ztype#tombcount#comments#ztypetext#rageid`

The records describe for each site its name, a typological classification by the Danish scholar Jan Zahle, the number of tombs, an English-language summary, and an identifier in a geographic data set.


## Retrieve the data set

To download the data set, you can use the Scala `Source` object.  You'll need to import its class:

`import scala.io.Source`

and use the object's `fromURL` method.  The object this creates is not immediately useful to us, but it includes `getLines` method that we can convert to a Vector.  You can see examples in our previous classwork of how to chain these methods together to create a Vector of Strings from our source URL.

## Extract the numeric count of tombs

You should now have a Vector of Strings.  You want to split up each String on the `#` character, to create a new Vector -- this time, a Vector of Vectors.  You'll be mapping each line of the source data to a Vector of strings, one per column.

The `tombcount` is in the third column (index number 2) of each record.  Now we need to create a new Vector that contains  only the tomb count.  Again, you'll be mapping one Vector to another.  

Notice that the result is a Vector of Strings.  We want a Vector of integer values.  We can use the String class's `toInt` method to create an `Int` from a `String`, for example, `"10".toInt` produces the `Int` value 10.

If you try to map *every* value in your Vector of Strings for tomb counts, you'll get an error, however, because the header line has the String `tombcount`, and that can't be converted to an integer!  Recall that the `tail` method gives you all the elements of a Vector *after* the first one.  (Its the complement of the `head` method, that gives you just the first element.)  So, take the tail of your Vector of tomb count Strings and map that to integer values by applying the `toInt` method to each element.    For example, if your Vector of tomb count Strings was named `tombCountStrings`, you could do this with

    val tombCounts = tombCountStrings.tail.map(s => s.toInt)

At this point, you're essentially done, because Scala collections have a `sum` method that will handily sum up a Vector of numeric values. You answer will be `tombCounts.sum` !




### Submitting your work

- save your Jupyter notebook in a file on your computer
- add the file to your github course repository, and push it so I can see it



## Specifications for grading

1. you publish a Jupyter notebook in your github repository
2. the notebook correctly computes the total number of tombs covered in the data set
