{{ 
    config
    ( 
        materialized='table'
    )
}}

-- select concat('123Street','Chicago') as address

select {{ concat_macro('123Street','Chicago') }} as address

