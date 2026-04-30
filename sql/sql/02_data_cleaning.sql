INSERT INTO clean_pkd_data (
    source_row_id,
    pkd_code,
    pkd_name,
    section,
    source_file,
    requires_manual_review,
    cleaning_flag
)
SELECT
    source_row_id,

    UPPER(TRIM(REPLACE(pkd_code_raw, ' ', ''))) AS pkd_code,

    TRIM(pkd_name_raw) AS pkd_name,

    UPPER(TRIM(section_raw)) AS section,

    source_file,

    CASE
        WHEN pkd_code_raw IS NULL
          OR pkd_name_raw IS NULL
          OR TRIM(pkd_code_raw) = ''
          OR TRIM(pkd_name_raw) = ''
        THEN TRUE
        ELSE FALSE
    END AS requires_manual_review,

    CASE
        WHEN pkd_code_raw IS NULL OR TRIM(pkd_code_raw) = ''
            THEN 'missing_code'
        WHEN pkd_name_raw IS NULL OR TRIM(pkd_name_raw) = ''
            THEN 'missing_description'
        WHEN pkd_code_raw <> TRIM(pkd_code_raw)
            THEN 'extra_spaces'
        WHEN pkd_code_raw LIKE '%O%'
            THEN 'possible_ocr_error_letter_o'
        ELSE 'ok'
    END AS cleaning_flag

FROM raw_pkd_data;
