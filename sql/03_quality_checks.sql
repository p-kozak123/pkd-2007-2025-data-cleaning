-- Total number of raw rows
SELECT COUNT(*) AS total_raw_rows
FROM raw_pkd_mapping;

-- Total number of cleaned rows
SELECT COUNT(*) AS total_clean_rows
FROM clean_pkd_mapping;

-- Records requiring manual review
SELECT COUNT(*) AS rows_requiring_manual_review
FROM clean_pkd_mapping
WHERE requires_manual_review = TRUE;

-- Summary by cleaning flag
SELECT
    cleaning_flag,
    COUNT(*) AS rows_count
FROM clean_pkd_mapping
GROUP BY cleaning_flag
ORDER BY rows_count DESC;

-- Missing PKD 2007 codes
SELECT *
FROM clean_pkd_mapping
WHERE pkd_2007_code IS NULL
   OR TRIM(pkd_2007_code) = '';

-- Missing PKD 2025 codes
SELECT *
FROM clean_pkd_mapping
WHERE pkd_2025_code IS NULL
   OR TRIM(pkd_2025_code) = '';

-- Duplicate mappings
SELECT
    pkd_2007_code,
    pkd_2025_code,
    COUNT(*) AS duplicate_count
FROM clean_pkd_mapping
GROUP BY pkd_2007_code, pkd_2025_code
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC;

-- One-to-one simplified relations
SELECT COUNT(*) AS simplified_one_to_one_relations
FROM clean_pkd_mapping
WHERE is_simplified_one_to_one = TRUE;

-- Records with multiple corresponding PKD 2025 classes
SELECT *
FROM clean_pkd_mapping
WHERE matching_classes_count > 1;

-- Potential OCR issue: letter O instead of zero in PKD codes
SELECT *
FROM clean_pkd_mapping
WHERE pkd_2007_code LIKE '%O%'
   OR pkd_2025_code LIKE '%O%';

-- Potential invalid PKD code format
SELECT *
FROM clean_pkd_mapping
WHERE LENGTH(pkd_2007_code) < 2
   OR LENGTH(pkd_2025_code) < 2;
