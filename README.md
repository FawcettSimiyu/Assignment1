# BIOS810/CPH651: Assignment #1

## Overview

This assignment involves practicing data import techniques in SAS by working with various file formats. It consists of three main parts: reading text data, importing Excel data, and handling formatted input.

## Requirements

### Submission Instructions
1. Include the SAS program for each part of the assignment.
2. Copy your SAS program and output into a Word document.
3. Answer any questions posed in italics within the document.

### Data Files
All data files are available on Canvas. Ensure you upload the files into SAS Studio as needed.

## Part 1: Reading Data from a Text File (3 points)

### Task
Read the `organization.txt` file into a SAS dataset named `organization`.

### File Description
`organization.txt` contains data on 4 employees with colons as delimiters and missing values indicated by double colons.

### SAS Code
```sas
DATA organization;
  INFILE '/path/to/organization.txt' DSD DLM=':' MISSOVER;
  INPUT LastName $ EmpNo $ Salary;
RUN;

PROC PRINT DATA=organization;
RUN;
