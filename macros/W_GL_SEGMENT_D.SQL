{% macro W_GL_SEGMENT_D() %}
--To Do -- Clean up added records that are no longer needed

  {% set sql %}
  
  --Delete inserted records

delete from OBIEE_DW.W_GL_SEGMENT_D where INTEGRATION_ID in(
select 	
	TARGET_TABLE.INTEGRATION_ID INTEGRATION_ID 
from	"PC_FIVETRAN_DB"."OBIEE_DW"."W_GL_SEGMENT_D"  TARGET_TABLE, "PC_FIVETRAN_DB"."OBIEE_DW"."W_GL_SEGMENT_DS"    PE_STAGE_TABLE
where TARGET_TABLE.INTEGRATION_ID=PE_STAGE_TABLE.INTEGRATION_ID);


  --Inserts records that don't have actuals for a given day, but have a daily budget
    insert into OBIEE_DW.W_GL_SEGMENT_D
(
SEGMENT_LOV_ID	,
EGMENT_VAL_CODE	,
CREATED_BY_ID	,
CHANGED_BY_ID	,
CREATED_ON_DT	,
CHANGED_ON_DT	,
AUX1_CHANGED_ON_DT	,
SRC_EFF_FROM_DT	,
SRC_EFF_TO_DT	,
DELETE_FLG	,
INTEGRATION_ID	
)
select 
 SEGMENT_LOV_ID	,
EGMENT_VAL_CODE	,
CREATED_BY_ID	,
CHANGED_BY_ID	,
CREATED_ON_DT	,
CHANGED_ON_DT	,
AUX1_CHANGED_ON_DT	,
SRC_EFF_FROM_DT	,
SRC_EFF_TO_DT	,
DELETE_FLG	,
INTEGRATION_ID	
from  OBIEE_DW.W_GL_SEGMENT_DS;

{% endset %}

{% do run_query(sql) %}

{% do log("W_GL_SEGMENT_D", info=True) %}

{% endmacro %}