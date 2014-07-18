---
layout: post
title: "What is Manifold?"
date: 2014-07-18 01:54:37 -0700
comments: true
categories: []
coverimage: 
attract_cols:
attract_rows:
---
This is a term that comes up a lot in 3D printing. Non-manifold models cause a lot of problems and lead to failed prints.

You often hear it being described in terms of "water tightness", <!--more-->but that hasn't helped me to understand it.

But [this](http://www.iheartrobotics.com/2010/01/openscad-tip-manifold-space-and-time.html) post did, especially [this comment](http://www.iheartrobotics.com/2010/01/openscad-tip-manifold-space-and-time.html?showComment=1264551125102#c7892813172347887917):
>
> Dominic Muren said...
While "watertightness" is a nice by-product of a manifold mesh, the real test of whether a mesh is manifold or not is that all edges must be shared by exactly two polygons (usually triangles). If we think about a hole (or a leak, in terms of watertightness) that would be a triangle with an edge used by only one polygon. But another way to make a non-manifold, but still technically watertight mesh is to take a manifold mesh and connect two arbitrary edges with a triangle -- that would create at least one edge shared by three polygons.
>
> nd outside are, if there are multiple volumes enclosed by meshes. 
>
> In this case, it looks like you might have had an errant triangle, or an edge that didn't terminate correctly, because of how many edges shared that upper vertex. Making the step freed the vertex up.

Extra: technically we want models to be 2-manifold. 

And [some more information here.](http://www.cs.mtu.edu/~shene/COURSES/cs3621/NOTES/model/manifold.html)