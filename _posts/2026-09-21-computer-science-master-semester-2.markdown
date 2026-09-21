---
layout: post
title: Computer Science Master Semester 2
date: 2026-09-21 13:05:00 +0000
categories: master
tags:
  - ala
  - lt
  - cv2
  - ml
abbreviations:
  UHH: University of Hamburg
  KNN: k-nearest neighbors
  PCA: principal component analysis
  QDA: quadratic discriminant analysis
---

Today, I finally had my last exam of the semester, so now is a good time to look back on what I have learned over the past six months.
I took four courses this semester, and each gets its own section. Machine Learning was a precursor to Optimization for Machine Learning,
which I took last semester, so I already had a bit of a head start there. On the other hand, I did not manage to take Computer Vision 1 during my first semester.
You can read about that semester in [my previous post]({% post_url 2026-03-30-computer-science-master-semester-1 %}).

## Analysis and Linear Algebra
This is originally a Bachelor's course in computer science at <abbr title="University of Hamburg">UHH</abbr>, but I took it as an elective because I felt I had some catching up to do, especially regarding linear algebra. The first half of the course was probably the most interesting, since I finally learned about eigenvectors and eigenvalues properly.

The second half covered various topics related to analysis. I should probably have remembered much of the material from high school, but it was still a good refresher on topics such as integration by parts.

## Language Technology
Language Technology was probably my least favorite course this semester. It was a follow-up to Natural Language Processing and focused more on how different language models work than on the contexts in which they are used, such as question answering. We learned how Hidden Markov models and Chomsky grammars work, but I am not sure whether I will ever need that knowledge again.

## Computer Vision 2
Computer Vision 1 was mostly about traditional approaches to computer vision, whereas this course focused on deep-learning approaches. We learned about various network architectures, including transformer-based ones, for solving computer vision tasks. Typical tasks are:
- Object detection
- Instance segmentation
- Semantic segmentation

The project in this course was particularly interesting because we got to build, or at least fine-tune, our own network for gaze prediction.

## Machine Learning
Many people equate machine learning with neural networks nowadays, but many other models and algorithms are relevant to the field, several of which we discussed in this course. In my opinion, it is useful to know about these simpler approaches so that you can apply them to a problem before training a large neural network for a task where a decision tree would have sufficed. To name a few examples, we discussed:
- (Regularized) Least Squares Regression
- <abbr title="k-nearest neighbors">KNN</abbr>
- k-means
- <abbr title="principal component analysis">PCA</abbr>
- <abbr title="quadratic discriminant analysis">QDA</abbr>
- Random Forests
- and many more.