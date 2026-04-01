---
layout: post
title: Computer Science Master Semester 1
date: 2026-03-30 19:12:00 +0000
categories: oml nlp algorithms master
---
Today marks the end of my first semester back at university! Last year I decided to go back to studying in order to do my Masters degree in computer science. It had been an exciting time period as I need to get used to working and studying part time again. I just wanted to use this opportunity to share what i have actually learned now that the exams are over and I will inevitably forget about most of the less relevant stuff. I took three courses. Each of which has its own little section.

Optimization for Machine Learning
This course was all about optimization, which just means minimizing a function. This is more interesting, when you can't compute the derivatives analytically. In these cases you need to use iterative approaches. The simplest one is called gradient descent. The basic idea behind it is to start at some point, take the gradient at that point and move in the opposite direction. Repeat this a few times and you may find the minimum. There are more complicated approaches that at into account the Hessian and maybe a momentum term, but the core logic is the same.

All this is relevant for machine learning in that this is what optimizers such as Adam do during training. They take the information from backpropagation and adjust the parameters of the model so that we get closes to the minimum of the loss function. This works especially well, when the objective function is convex, because then there is only one minimum, namely the global one. This is the case in linear regression for example.

Natural Language Processing
I originally expected this course to be much more technical with some insights into how LLMs work. Instead, we talked a lot about linguistics and theoretical approaches to question answering systems or hate speech detection for instance. The tutorials, however, were a lot more hands on. In the beginning we worked a lot with traditional approaches to language analysis such as Hearst patterns. In the later parts we moved to using actual language models such as BERT variants or Qwen for text classification. This was my first exposure to the Huggingface ecosystem, which I found especially interesting.

Algorithms
You can probably imagine what this module was all about. There weren't a lot of entirely new topic in this course. It was mostly about what you typically already learn when you do a Bachelor's degree in computer science. Graph theory played a big part, but also complexity analysis and geometric problems. I will just pick a two examples that I found interesting.

- We spent a lot of time discussing the structural analysis of graphs, flow problems and shortest path calculations. I was surprised how often a simple DFS run was actually helpful. DFS can be used to check for many properties that a graph may have. For example, you can use it to check if the graph is bipartite, planar, cyclic or for finding strongly connected components.

- The scan line algorithm is useful for solving many geometric problems. Imagine a set of parallel line segments that start and end at different points. You want to find out which line segments are visible to each other. You can do this by moving a sweeping line across the field by managing an event queue for the starting and end points of all line segments. The sweeping line keeps track of which line segments are currently intersected in a separate data structure. It is updated with every event from the queue. This basic principle can be used in many instances. For example, when you rotate the sweeping line through a point cloud, you can use it to compute the convex hull.
