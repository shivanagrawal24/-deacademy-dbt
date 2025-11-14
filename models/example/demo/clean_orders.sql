{{
    config
    (
        materialized = 'ephemeral'
    )
}}


WITH base_orders AS(
    SELECT
        ORDER_ID,
        ORDER_DATE,
        CUSTOMER_ID,
        CASE WHEN CUSTOMER_NAME IS NULL THEN 'NA'
             ELSE UPPER(CUSTOMER_NAME)
        END AS CUSTOMER_NAME,
        CREATED_AT
    FROM
        -- DBT_DB.PUBLIC.BASE_ORDERS
        {{source ('orders','BASE_ORDERS')}}
    where
        ORDER_DATE IS NOT NULL

)

SELECT * FROM base_orders