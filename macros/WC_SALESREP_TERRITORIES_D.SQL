{% macro WC_SALESREP_TERRITORIES_D() %}
--To Do -- Clean up added records that are no longer needed

  {% set sql %}
  
  --Delete inserted records

truncate table  OBIEE_DW.WC_SALESREP_TERRITORIES_D;


  --Inserts records that don't have actuals for a given day, but have a daily budget
    insert into OBIEE_DW.WC_SALESREP_TERRITORIES_D
(
X_SALESREP_ID	,
X_TERRITORY_ID	,
X_ORG_ID	,
X_TOP	,
X_SUPERGEO	,
X_DIVISION	,
X_REGION	,
X_DISTRICT	,
X_TERRITORY_NAME	,
X_EMP_NUM	,
X_FIRST_NAME	,
X_LAST_NAME	,
X_FULL_NAME	,
CREATED_BY_ID	,
CHANGED_BY_ID	,
CREATED_ON_DT	,
CHANGED_ON_DT	,
AUX1_CHANGED_ON_DT	,
SRC_EFF_FROM_DT	,
SRC_EFF_TO_DT	,
INTEGRATION_ID	,
X_SALESREP_NUM	,
X_RESOURCE_ID	,
DELETE_FLG	,
DATASOURCE_NUM_ID	,
X_CUSTOM	
)
select 
X_SALESREP_ID	,
X_TERRITORY_ID	,
X_ORG_ID	,
X_TOP	,
X_SUPERGEO	,
X_DIVISION	,
X_REGION	,
X_DISTRICT	,
X_TERRITORY_NAME	,
X_EMP_NUM	,
X_FIRST_NAME	,
X_LAST_NAME	,
X_FULL_NAME	,
CREATED_BY_ID	,
CHANGED_BY_ID	,
CREATED_ON_DT	,
CHANGED_ON_DT	,
AUX1_CHANGED_ON_DT	,
SRC_EFF_FROM_DT	,
SRC_EFF_TO_DT	,
INTEGRATION_ID	,
X_SALESREP_NUM	,
X_RESOURCE_ID	,
DELETE_FLG	,
DATASOURCE_NUM_ID	,
X_CUSTOM		
from  OBIEE_DW.WC_SALESREP_TERRITORIES_DS;

{% endset %}

{% do run_query(sql) %}

{% do log("WC_SALESREP_TERRITORIES_D", info=True) %}

{% endmacro %}