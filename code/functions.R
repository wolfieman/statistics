checkWD <- function() {
    if (!(getwd() == "/Users/wsanyer/projects/statistics")) {
        setwd("/Users/wsanyer/projects/statistics")
    }
    
    getwd()
}

downloadFileCSV <- function() {
    dateDownloaded <- date()
    fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.csv?accessType=DOWNLOAD"
    destFile <- "./data/cameras.csv"
    method <- "curl"
    
    download.file(fileUrl, destFile, method)
}

downloadFileXLSX <- function() {
    fileUrl <- "https://data.baltimorecity.gov/api/views/dz54-2aru/rows.xlsx?accessType=DOWNLOAD"
    destFile <- "./data/cameras.xlsx"
    method <- "curl"
    
    download.file(fileUrl, destFile, method)
    dateDownloaded <- date()
}

downloadJiraFilterXLSX <- function(fileUrl = "", rootDir = "./data/jira/", fileName = "jira1.xls") {
    if(!file.exists(rootDir)) { dir.create(rootDir) }
    destFile <- paste(rootDir, fileName, sep = "")
    method <- "curl"
    
    download.file(fileUrl, destFile, method)
    dateDownloaded <- date()
}

downloadFileXML <- function(fileUrl="http://www.w3schools.com/xml/simple.xml") {
    doc <- xmlTreeParse(fileUrl, useInternal = TRUE)
    rootNode <- xmlRoot(doc)
    xmlName(rootNode)
}

columnmean <- function(y, removeNA = TRUE) {
    nc <- ncol(y)
    means <- numeric(nc)
    
    for (i in 1:nc) {
        means[i] <- mean(y[, i], na.rm = removeNA)
    }
    
    means
}
