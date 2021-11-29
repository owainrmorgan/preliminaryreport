# Preliminary Report

This is the repository for my preliminary report in my fisheries dissertation.

## Markscheme
The markscheme of the report is as follows (out of 10)

7.
This is first class writing and the student gets across an understanding of the
project topic that can be expected from a first-class student. The mistakes in the
writing do not distract from the readability. The student describes the wider
background of the project and supports this with relevant references.

8.
This is well written and a pleasure to read. The student presents most ideas
clearly and exhibits a good understanding of the wider background. The writing
is well supported by relevant references.

9.
This is exceptionally well written. The student presents the ideas of the project
with clarity and sets them in the wider context, painting a complete picture,
making good use of the limited space. The references are comprehensive and
relevant and they include references to research papers, not only textbooks.

10.
This is exceptionally well written. It is difficult to see how the presentation could
be improved. The student demonstrates an excellent understanding of the wider
relevance of the project. The student cites a wide range of relevant literature.


## The Plan
I will discuss Kernel Density Estimation (KDE) in my report.
I aim to give an overview of the principle of finding an empirical probability.
I will introduce some of the formulae that are used (eg. Parzen window, Gaussian)
and graph these. 
I will introduce the concept of bandwidth and how its choice is crucial,
but will probably not dither too long on the algorithms used to estimate a sensible estimate as used by R.
I will then include two examples
(hopefully made using ggplot).
The first will be of a simulated normal distribution,
including the automatic R procedure
and showing the difference that different window shapes make.
I will then include a bimodal data set that I have made up and consider how well it is fitted
and use this to show the impact of bandwidth on any KDE.
Finally, I will demonstrate (empirically) that
KDE converges to the true density 
(as shown by Parzen, 1962)
using a common but not normal distribution.
