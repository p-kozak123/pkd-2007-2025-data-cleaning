# PKD 2007 → PKD 2025: OCR Data Cleaning & SQL Validation Project

## Project overview

This portfolio project demonstrates a practical data cleaning workflow based on PKD classification tables published in a legal PDF document.

The source data was extracted from PDF tables using OCR and exported to Excel. Because OCR output often contains formatting issues, missing values, duplicated rows and recognition errors, the dataset required cleaning and validation before it could be used for analysis or reporting.

The cleaned data was processed in SQL and prepared as a business-ready dataset.

## Business problem

PKD classification tables published in PDF documents are not always convenient for analysis, reporting or further data processing. When tables are extracted from PDF using OCR, the resulting data may contain errors such as:

- unnecessary spaces,
- inconsistent code formatting,
- missing values,
- duplicated records,
- incorrect characters caused by OCR recognition,
- rows requiring manual verification.

The goal of this project was to transform OCR-based Excel data into a clean, structured and validated dataset that could be used by business users.

## Data source and workflow

The project followed this workflow:

1. Source tables were available in a legal PDF document.
2. Tables were extracted from PDF using OCR.
3. OCR output was exported to Excel.
4. Raw Excel data was imported into SQL.
5. Data was cleaned, standardized and validated using SQL queries.
6. Quality checks were performed to identify duplicates, missing values and formatting issues.
7. Clean data was prepared as a final business-ready dataset.

## Tools used

- SQL
- Excel
- Power Query
- OCR
- Data cleaning
- Data quality checks

## Scope of work

- Extracted tabular data from a PDF legal document using OCR.
- Imported OCR-generated Excel data into a structured SQL table.
- Standardized PKD 2007 and PKD 2025 code formats.
- Cleaned activity names and scope descriptions.
- Removed unnecessary spaces and formatting inconsistencies.
- Identified duplicate records.
- Checked missing values and invalid code formats.
- Flagged records requiring manual review.
- Prepared a clean dataset for business users.

## Repository structure

```text
pkd-2007-2025-data-cleaning/
├── data/
│   ├── raw_sample.csv
│   └── clean_sample.csv
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_data_cleaning.sql
│   └── 03_quality_checks.sql
└── README.md
Note on sample data

This repository includes a small sample dataset for portfolio demonstration purposes. The sample reflects the structure of the OCR-exported PKD mapping table and shows typical cleaning issues such as extra spaces, duplicate-like mappings and possible OCR recognition errors.

The full dataset is not included.

Example data quality checks
Missing PKD codes
Duplicate records
Invalid code format
Empty activity descriptions
OCR-related formatting errors
Records requiring manual verification
Records with multiple corresponding PKD 2025 classes
Final output

The final output is a cleaned sample PKD dataset, including:

standardized PKD 2007 and PKD 2025 codes,
cleaned activity names,
cleaned scope descriptions,
relation markers,
data quality flags,
records requiring manual review.
Key takeaway

This project shows a practical data analysis workflow: from PDF source data and OCR extraction, through SQL-based cleaning and validation, to a clean dataset prepared for business users.

It demonstrates skills useful in Data Analyst and Business Analyst roles: working with imperfect source data, structuring raw information, applying data quality checks and documenting the cleaning process.
