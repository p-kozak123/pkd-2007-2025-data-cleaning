CREATE TABLE raw_pkd_data (
    source_row_id INTEGER,
    pkd_code_raw VARCHAR(50),
    pkd_name_raw TEXT,
    section_raw VARCHAR(50),
    source_file VARCHAR(255),
    notes_raw TEXT
);

CREATE TABLE clean_pkd_data (
    source_row_id INTEGER,
    pkd_code VARCHAR(20),
    pkd_name TEXT,
    section VARCHAR(50),
    source_file VARCHAR(255),
    requires_manual_review BOOLEAN,
    cleaning_flag TEXT);
