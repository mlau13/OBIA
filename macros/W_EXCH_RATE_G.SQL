{% macro W_EXCH_RATE_G() %}
--To Do -- Clean up added records that are no longer needed

  {% set sql %}
  
  --Delete inserted records

delete from OBIEE_DW.W_EXCH_RATE_G where INTEGRATION_ID in(
select 	
	TARGET_TABLE.INTEGRATION_ID INTEGRATION_ID 
from	"PC_FIVETRAN_DB"."OBIEE_DW"."W_EXCH_RATE_G"  TARGET_TABLE, "PC_FIVETRAN_DB"."OBIEE_DW"."W_EXCH_RATE_GS"    PE_STAGE_TABLE
where TARGET_TABLE.INTEGRATION_ID=PE_STAGE_TABLE.INTEGRATION_ID);


  --Inserts records that don't have actuals for a given day, but have a daily budget
    insert into OBIEE_DW.W_EXCH_RATE_G
(
END_DT	,
EXCH_DT	,
EXCH_RATE	,
START_DT	,
W_FROM_CURCY_CODE	,
RATE_TYPE	,
W_TO_CURCY_CODE	,
CREATED_BY_ID	,
CHANGED_BY_ID	,
CREATED_ON_DT	,
CHANGED_ON_DT	,
DELETE_FLG	,
INTEGRATION_ID	,
LAST_DATE	
)
select 
 END_DT	,
EXCH_DT	,
EXCH_RATE	,
START_DT	,
W_FROM_CURCY_CODE	,
RATE_TYPE	,
W_TO_CURCY_CODE	,
CREATED_BY_ID	,
CHANGED_BY_ID	,
CREATED_ON_DT	,
CHANGED_ON_DT	,
DELETE_FLG	,
INTEGRATION_ID	,
LAST_DATE	
from  OBIEE_DW.W_EXCH_RATE_GS;

{% endset %}

{% do run_query(sql) %}

{% do log("W_EXCH_RATE_G", info=True) %}

{% endmacro %}