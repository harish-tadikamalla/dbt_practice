{{ config(materialized="table") }}

with
    customers_sample as (
        select 
        id as id,
        first_name as first_name, 
        last_name as last_name
        from {{source('sample_file','customers')}}
    )

select *
from customers_sample