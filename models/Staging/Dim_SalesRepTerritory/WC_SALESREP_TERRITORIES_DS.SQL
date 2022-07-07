{{ config (
    materialized="table"
)}}

with STUSA as (

    select * from {{ ref('SALESREP_TERRITORIES_NONUSA')}}

),

STNONUSA as (

    select * from {{ ref('SALESREP_TERRITORIES_USA') }}

),


 SREPT as (

   select * from STUSA
   UNION ALL
   select * from STNONUSA
)


SELECT * FROM SREPT