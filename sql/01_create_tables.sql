CREATE TABLE raw_pkd_mapping (
    source_row_id INTEGER,
    pkd_2007_code_raw VARCHAR(50),
    pkd_2007_name_raw TEXT,
    pkd_2025_code_raw VARCHAR(50),
    pkd_2025_name_raw TEXT,
    scope_raw TEXT,
    matching_classes_count_raw VARCHAR(50),
    relation_marker_raw VARCHAR(50),
    source_file VARCHAR(255),
    notes_raw TEXT
);

CREATE TABLE clean_pkd_mapping (
    source_row_id INTEGER,
    pkd_2007_code VARCHAR(20),
    pkd_2007_name TEXT,
    pkd_2025_code VARCHAR(20),
    pkd_2025_name TEXT,
    scope TEXT,
    matching_classes_count INTEGER,
    relation_marker VARCHAR(20),
    is_simplified_one_to_one BOOLEAN,
    requires_manual_review BOOLEAN,
    cleaning_flag TEXT
);
