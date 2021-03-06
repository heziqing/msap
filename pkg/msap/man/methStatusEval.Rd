\name{methStatusEval}
\alias{methStatusEval}

\title{
classify a locus as either MSL or NML.
}
\description{
Classify a locus as either 'methylation-susceptible locus' (MSL) or 'non-methylated locus' (NML). See Details.  
}
\usage{
methStatusEval(x, error=0.05, uninformative=TRUE)

}
\arguments{
  \item{x}{
  A list of mixed band patterns for a given fragment across all the samples. Values of 11, 10, 1 and 0 represent patterns HPA+/MSP+,HPA+/MSP-,HPA-/MSP+,HPA-/MSP-, respectively.
}
 \item{error}{
 	Repeatibility value of MSAP assays. It provides a threshold to consider methylation events as genotyping errors.
 } 
 \item{uninformative}{
 	A logic value determining how to deal with HPA-/MSP- pattern. FALSE indicates that HPA-/MSP- stands for hypermethylated target (ignoring genetic mutation), and TRUE (default) stands for uninformative pattern (as this could be caused by genetic mutation or hypermethylation) 
 }
}
\details{
Individual fragments (loci) are classified as 'methylation-susceptible loci' (MSL) or 'non-methylated loci' (NML), depending on whether the observed proportion of discordant HPA/MSP scores suggestive of methylation(i.e. number of individuals with contrastinf HPA/MSP scores for the fragment divided by the total number of individuals assayed) exceeded a user-defined threshold (0.05 by default).
}

\author{
Andres Perez-Figueroa (\email{anpefi@uvigo.es})
}

