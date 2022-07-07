{% macro W_LEDGER_D() %}
--To Do -- Clean up added records that are no longer needed

  {% set sql %}
  
  --Delete inserted records

truncate table  OBIEE_DW.W_LEDGER_D;


  --Inserts records that don't have actuals for a given day, but have a daily budget
    insert into OBIEE_DW.W_LEDGER_D
(
LEDGER_NAME	,
LEDGER_SHORT_NAME	,
LEDGER_DESC	,
CHART_OF_ACCOUNTS	,
CURRENCY_CODE	,
CALENDER_NAME	,
SLA_ACCOUNTING_METHOD_CODE	,
PERIOD_TYPE	,
LEDGER_CATEGORY_CODE	,
CREATED_BY_ID	,
CHANGED_BY_ID	,
CREATED_ON_DT	,
CHANGED_ON_DT	,
DATASOURCE_NUM_ID	,
INTEGRATION_ID	,
LAST_DATE	
)
select 
LEDGER_NAME	,
LEDGER_SHORT_NAME	,
LEDGER_DESC	,
CHART_OF_ACCOUNTS	,
CURRENCY_CODE	,
CALENDER_NAME	,
SLA_ACCOUNTING_METHOD_CODE	,
PERIOD_TYPE	,
LEDGER_CATEGORY_CODE	,
CREATED_BY_ID	,
CHANGED_BY_ID	,
CREATED_ON_DT	,
CHANGED_ON_DT	,
DATASOURCE_NUM_ID	,
INTEGRATION_ID	,
LAST_DATE	
from  OBIEE_DW.W_LEDGER_DS;

{% endset %}

{% do run_query(sql) %}

{% do log("W_LEDGER_D", info=True) %}

{% endmacro %}