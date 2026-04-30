INSERT INTO clean_pkd_mapping (
    source_row_id,
    pkd_2007_code,
    pkd_2007_name,
    pkd_2025_code,
    pkd_2025_name,
    scope,
    matching_classes_count,
    relation_marker,
    is_simplified_one_to_one,
    requires_manual_review,
    cleaning_flag
)
SELECT
    source_row_id,

    UPPER(TRIM(REPLACE(pkd_2007_code_raw, ' ', ''))) AS pkd_2007_code,
    TRIM(pkd_2007_name_raw) AS pkd_2007_name,

    UPPER(TRIM(REPLACE(pkd_2025_code_raw, ' ', ''))) AS pkd_2025_code,
    TRIM(pkd_2025_name_raw) AS pkd_2025_name,

    TRIM(scope_raw) AS scope,

    CASE
        WHEN TRIM(matching_classes_count_raw) ~ '^[0-9]+$'
        THEN CAST(TRIM(matching_classes_count_raw) AS INTEGER)
        ELSE NULL
    END AS matching_classes_count,

    TRIM(relation_marker_raw) AS relation_marker,

    CASE
        WHEN TRIM(relation_marker_raw) = '1'
        THEN TRUE
        ELSE FALSE
    END AS is_simplified_one_to_one,

    CASE
        WHEN pkd_2007_code_raw IS NULL
          OR pkd_2025_code_raw IS NULL
          OR pkd_2007_name_raw IS NULL
          OR pkd_2025_name_raw IS NULL
          OR TRIM(pkd_2007_code_raw) = ''
          OR TRIM(pkd_2025_code_raw) = ''
        THEN TRUE
        ELSE FALSE
    END AS requires_manual_review,

    CASE
        WHEN pkd_2007_code_raw IS NULL OR TRIM(pkd_2007_code_raw) = ''
            THEN 'missing_pkd_2007_code'
        WHEN pkd_2025_code_raw IS NULL OR TRIM(pkd_2025_code_raw) = ''
            THEN 'missing_pkd_2025_code'
        WHEN pkd_2007_name_raw IS NULL OR TRIM(pkd_2007_name_raw) = ''
            THEN 'missing_pkd_2007_name'
        WHEN pkd_2025_name_raw IS NULL OR TRIM(pkd_2025_name_raw) = ''
            THEN 'missing_pkd_2025_name'
        WHEN pkd_2007_code_raw <> TRIM(pkd_2007_code_raw)
          OR pkd_2025_code_raw <> TRIM(pkd_2025_code_raw)
            THEN 'extra_spaces'
        WHEN pkd_2007_code_raw LIKE '%O%'
          OR pkd_2025_code_raw LIKE '%O%'
            THEN 'possible_ocr_error_letter_o'
        ELSE 'ok'
    END AS cleaning_flag

FROM raw_pkd_mapping;
