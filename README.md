# PKD 2007 → PKD 2025: OCR Data Cleaning & SQL Validation Project

## Project overview

This portfolio project demonstrates a practical data cleaning workflow based on PKD classification tables published in a legal PDF document.

The source data was extracted from PDF tables using OCR and exported to Excel. Because OCR output often contains formatting issues, missing values, duplicated rows and recognition errors, the dataset required cleaning and validation before it could be used for analysis or reporting.

The cleaned data was processed in SQL and then exported back to Excel as a business-ready output file.

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
7. Clean data was exported back to Excel as the final business-ready file.

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
- Standardized PKD code formats and activity descriptions.
- Removed unnecessary spaces and formatting inconsistencies.
- Identified duplicate records.
- Checked missing values and invalid code formats.
- Flagged records requiring manual review.
- Prepared a clean Excel output for business users.

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
├── output/
│   └── pkd_mapping_clean_sample.xlsx
└── docs/
    └── project_summary.pdf
Example data quality checks
Missing PKD codes
Duplicate records
Invalid code format
Empty activity descriptions
OCR-related formatting errors
Records requiring manual verification
Final output

The final output is a cleaned PKD dataset prepared in Excel, including:

cleaned PKD table,
data quality summary,
list of records requiring manual review,
short documentation of the cleaning process.
Key takeaway

This project shows a practical data analysis workflow: from PDF source data and OCR extraction, through SQL-based cleaning and validation, to a clean Excel output prepared for business users.
