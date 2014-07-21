GetCleanDataAssn
================

Assignment for Getting and Cleaning Data class.

## Files

0. README.md - This file
1. CodeBook.md - Description of variables in dataset
2. run_analysis.R - R code for analysis
3. TidyHAR.txt - Tidied dataset of the Human Activity Recognition Using Smartphones experiment Refer to Notes section on how to read into R (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
4. UCI HAR Dataset.zip - Original dataset
5. UCI HAR Dataset (folder) - Original dataset unzipped, for information on the files contained refer to UCI HAR Dataset/README.txt

## Notes

To read TidyHAR.txt use the following command in R:
```{r}
read.table("TidyHAR.txt",
    header = TRUE,
    check.names = FALSE,
    colClasses = c("factor", "factor", rep("numeric", 477)))
```