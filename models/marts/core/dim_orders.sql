{{
config(materialized = "incremental",
transient = false,
full_refresh = false
)
}}
select 3 as id from dual
