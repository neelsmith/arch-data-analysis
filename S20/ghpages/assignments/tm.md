---
layout: page
title: "Introduction to topic modelling"
---


Topic modelling is a form of unsupervised classification.  It is normally applied to collections of texts, but in an example we'll look at, David Mimno has applied the technique to look at collections of finds from rooms in Pompeiian houses.

Concisely,

>A  **topic** is a *recurring pattern of co-occurring terms*.

Unlikely some forms of classification, a topic model does not place a document in a single class, or topic.  Rather, it evaluates how much of a document belongs to every single class, or topic, it has defined.  This is useful for the Pompeiian material Mimno looked at: instead of assigning a single class to each room, topic modelling allowed for the possibility that a room might have multiple functions, reflected by different mixes of co-occurring artifacts (the "terms" of his model).

## The art of topic modelling

If you want to apply topic modelling to a corpus of texts (for example, the nearly 100,000 short texts on issues of Roman imperial coinage that you saw in the OCRE data set), you first have to decide, what is a term?  There are two main issues you need to address:  *eliminating stop words* and *lemmatizing* the text.

*Stop words* are terms that are so common that they add no information to the model.  If you topic model a raw corpus of texts in English, for example, you will wind up with a "topic" composed of words like "the," "and," "of," "a" because they do in fact co-occur repeatedly.  However, all they are really telling you is that "This text is in English."


*Lemmatization* refers to unifying different forms of a word.  Normally, for topic modelling you would be interested in treating instances of a word like "sing" as a single term, even if the forms in your document were "sang," "sung," "sings," and "singing."  One reason that topic modelling has not been more widely applied to Greek and Latin texts is the difficulty of lemmatizing morphologically complex languages.

And there's one last bit of art.  You have to predefine the number of topics for the algorithm to find.  This sounds like a circular problem:  how can you know ahead of time the number of topics you want to find?  We'll consider  in our workshop some approaches to solving this problem.


## Reading


Introduction to topic modelling:


- Ted Underwood, "[Topic modeling made just simple enough](https://tedunderwood.com/2012/04/07/topic-modeling-made-just-simple-enough/
)."

On how the algorithm works:

- Matthew Jockers, "[The LDA Buffet is Now Open; or, Latent Dirichlet Allocation for English Majors](http://www.matthewjockers.net/2011/09/29/the-lda-buffet-is-now-open-or-latent-dirichlet-allocation-for-english-majors/)"
