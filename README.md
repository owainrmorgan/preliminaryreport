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

## Finished
The completed report was submitted 2 Dec 21 in the evening.
The plan was mainly adhered to but with a few additions after Gustav meeting,
mainly adding in the historical context and a greater emphasis on literature I'd read.
The final structure was as follows:
* A short introduction explaining KDE seeks to find an estimate for the pdf & claiming KDE will converge to pdf.
* Historical context of KDE as an improvement over histograms
* The method employed- kernel functions and summing these.
* Choices to be made
  * Kernel Function- gave formulas for rectangular and Gaussian and included graphs of both.
  * Bandwidth- its choice is important and is a trade-off but Sheather paper is a good compromise
* Examples of KDE
  * 100 samples from a normal distribution used to demonstrate diff. between rectangular and Gaussian (mentioned smoothness but Gaussian harder to eval.
  * Bimodal created dataset used to show importnace of bandwidth: demonstrated using Sheather, narrow and wide bandwidths.
* Included 6 references of which 5 are cited in the paper corpus.

Sadly, there was no space to show converegence to a real pdf, however the code to do this has been written and can be found in the
exploratory file. 
