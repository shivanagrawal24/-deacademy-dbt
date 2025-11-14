{{
    config
    (
        materialized = 'table'
    )
}}
-- SELECT concat('John','Smith') AS name

SELECT {{ concat_macro('John','Smith')}} AS name

