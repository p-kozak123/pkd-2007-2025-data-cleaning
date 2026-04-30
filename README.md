# PKD 2007 → PKD 2025: OCR Data Cleaning & SQL Validation Project

## Project overview

This portfolio project demonstrates a data cleaning and validation process for mapping Polish Classification of Activities codes from PKD 2007 to PKD 2025.

The input data was prepared from OCR output and required standardization, cleaning, duplicate detection and quality checks before it could be used for analysis or reporting.

## Business problem

Changes in business activity classification require reliable mapping between old and new PKD codes. OCR-generated data may contain formatting issues, missing values, duplicate records and recognition errors, which can reduce data quality and make further analysis unreliable.

The goal of this project was to transform raw OCR-based data into a clean, structured and business-ready dataset.

## Tools used

- SQL
- Excel
- Power Query
- OCR
- Data cleaning
- Data quality checks

## Scope of work

- Imported raw OCR data into a structured SQL table.
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
