{{ config(
    materialized = 'table',
    schema = 'dw_oliver'
    )
}}

SELECT
    EMPLOYEE_ID,
    PARSE_JSON(CERTIFICATION_JSON):certification_name::string AS certification_name,
    PARSE_JSON(CERTIFICATION_JSON):certification_cost::float AS certification_cost,
    PARSE_JSON(CERTIFICATION_JSON):certification_awarded_date::date AS certification_awarded_date
FROM {{ source('oliver_landing', 'employee_certifications') }}