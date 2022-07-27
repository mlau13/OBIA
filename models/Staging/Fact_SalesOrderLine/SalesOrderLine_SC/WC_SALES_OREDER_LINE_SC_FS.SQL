{{ config (
    materialized="table"
)}}

with SC_TMP1 as (

    select * from {{ ref('WC_SALES_OREDER_LINE_FS_SC_TMP1')}}

),

SC_TMP2 as (

    select * from {{ ref('WC_SALES_OREDER_LINE_FS_SC_TMP2') }}

),

SC_TMP3 as (

    select * from {{ ref('WC_SALES_OREDER_LINE_FS_SC_TMP3') }}

),



 SC_TMP as (

   select * from SC_TMP1
   UNION ALL
   select * from SC_TMP2
   UNION ALL
   select * from SC_TMP3
)


SELECT * FROM SC_TMP