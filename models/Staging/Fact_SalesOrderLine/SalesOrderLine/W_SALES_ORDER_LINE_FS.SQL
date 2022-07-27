{{ config (
    materialized="table"
)}}

with OM as (

    select * from {{ ref('W_SALES_ORDER_LINE_OM_FS')}}

),

PA as (

    select * from {{ ref('W_SALES_ORDER_LINE_PA_FS') }}

),

SC as (

    select * from {{ ref('W_SALES_ORDER_LINE_SC_FS') }}

),



 ORDER_LINE as (

   select * from OM
   UNION ALL
   select * from PA
    UNION ALL
   select * from SC
)


SELECT * FROM ORDER_LINE