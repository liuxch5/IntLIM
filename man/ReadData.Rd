% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/01_ReadData.R
\name{ReadData}
\alias{ReadData}
\title{Read in CSV file}
\usage{
ReadData(inputFile, metabid = NULL, geneid = NULL, logmetab = FALSE,
  loggene = FALSE)
}
\arguments{
\item{inputFile}{input file in CSV format (see Despcription)}

\item{metabid}{name of column from metabolite meta data to be used as id
(required if a metabolite meta dadta file is present, must match metabolite abundances data)}

\item{geneid}{name of column from gene meta data to be used as id
(required if a gene meta data file is present, must match gene expression data)}

\item{logmetab}{whether or not to log metabolite values (T/F)}

\item{loggene}{whether or not to log gene values (T/F)}
}
\value{
MultiDataSet object with input data
}
\description{
The metadata associated with data files to be analyzed in IntLim is supplied
as a CSV file with two columns and 6 rows: 
   type,filenames
   metabData,myfilename
   geneData,myfilename
   metabMetaData,myfilename (optional)
   geneMetaData,myfilename (optional)
   sampleMetaData,myfilename
}
\details{
Note that all files supplied in the CSV file, and the CSV file itself should be placed in the same folder.  The software assumes will automatically retrieve the file path of
the input files (based on location of CSV files).  
Note also that the input data files should be in a specific format:
metabData: rows are metabolites, columns are samples
geneData: rows are genes, columns are samples
metabMetaData: rows are metabolites, features are columns
geneMetaData: rows are genes, features are columns
sampleMetaData: rows are samples, features are columns
In addition, the first column of the sampleMetaData file is assumed to be the sample id, 
and those sample ids should match the columns of metabData and geneData (e.g. it is required
that all sample ids in the metabData and geneData are also in the sampleMetaDatafile).
}
\examples{
dir <- system.file("extdata", package="IntLIM", mustWork=TRUE)
csvfile <- file.path(dir, "NCItestinput.csv")
mydata <- ReadData(csvfile,metabid='id',geneid='id')
}
