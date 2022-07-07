{% macro test() %}
--To Do -- Clean up added records that are no longer needed

  {% set sql %}
  
  --truncate table 

 truncate table OBIEE_DW.W_ORA_PRODUCT_DS_TMP;

  --Inserts records that don't have actuals for a given day, but have a daily budget
    insert into OBIEE_DW.W_ORA_PRODUCT_DS_TMP
(
INVENTORY_ITEM_ID   ,
ORGANIZATION_ID ,
PRODUCT_TYPE_CODE   ,
BASIC_PRODUCT   ,
INTRODUCTION_DT ,
MAKE_BUY_IND    ,
RTRN_DEFECTIVE_FLG  ,
SALES_SRVC_FLG  ,
SERIALIZED_FLG  ,
PART_NUM    ,
DISCONTINUATION_DT  ,
HAZARD_MTL_CODE ,
SALES_UOM_CODE  ,
SHELF_LIFE  ,
BASE_UOM_CODE   ,
UNIT_GROSS_WEIGHT   ,
UNIT_NET_WEIGHT ,
UNIT_VOLUME ,
UOV_CODE    ,
UOW_CODE    ,
DEALER_INV_PRICE    ,
INVENTORY_FLG   ,
ORDERABLE_FLG   ,
STATUS_CODE ,
CREATED_BY_ID   ,
CHANGED_BY_ID   ,
CREATED_ON_DT   ,
CHANGED_ON_DT   ,
SRC_EFF_FROM_DT ,
DATASOURCE_NUM_ID   ,
INTEGRATION_ID  ,
PRODUCT_PHASE   ,
PRODUCT_CLASS   ,
PRODUCT_PARENT_CLASS    ,
PROCESS_QUALITY_ENABLED_FLG ,
MARKET_PRICE    ,
ROUNDING_FACTOR ,
LOC_CURRENCY_CODE   ,
X_ATTRIBUTE1    ,
X_ATTRIBUTE2    ,
X_ATTRIBUTE3    ,
X_ATTRIBUTE4    ,
X_ATTRIBUTE5    ,
X_ITEM_DESCR    ,
X_INVENTORY_ITEM_STATUS_CODE    ,
X_ACCOUNTING_RULE   ,
X_INVOICING_RULE    ,
X_ATTRIBUTE11   ,
SALES_PROD_FLG  ,
SRC_EFF_TO_DT   ,
DELETE_FLG  ,
TENANT_ID   ,
X_CUSTOM    ,
ETL_PROC_WID    ,
W_INSERT_DT 
)
select 
 INVENTORY_ITEM_ID  ,
ORGANIZATION_ID ,
PRODUCT_TYPE_CODE   ,
BASIC_PRODUCT   ,
INTRODUCTION_DT ,
MAKE_BUY_IND    ,
RTRN_DEFECTIVE_FLG  ,
SALES_SRVC_FLG  ,
SERIALIZED_FLG  ,
PART_NUM    ,
DISCONTINUATION_DT  ,
HAZARD_MTL_CODE ,
SALES_UOM_CODE  ,
SHELF_LIFE  ,
BASE_UOM_CODE   ,
UNIT_GROSS_WEIGHT   ,
UNIT_NET_WEIGHT ,
UNIT_VOLUME ,
UOV_CODE    ,
UOW_CODE    ,
DEALER_INV_PRICE    ,
INVENTORY_FLG   ,
ORDERABLE_FLG   ,
STATUS_CODE ,
CREATED_BY_ID   ,
CHANGED_BY_ID   ,
CREATED_ON_DT   ,
CHANGED_ON_DT   ,
SRC_EFF_FROM_DT ,
DATASOURCE_NUM_ID   ,
INTEGRATION_ID  ,
PRODUCT_PHASE   ,
PRODUCT_CLASS   ,
PRODUCT_PARENT_CLASS    ,
PROCESS_QUALITY_ENABLED_FLG ,
MARKET_PRICE    ,
ROUNDING_FACTOR ,
LOC_CURRENCY_CODE   ,
X_ATTRIBUTE1    ,
X_ATTRIBUTE2    ,
X_ATTRIBUTE3    ,
X_ATTRIBUTE4    ,
X_ATTRIBUTE5    ,
X_ITEM_DESCR    ,
X_INVENTORY_ITEM_STATUS_CODE    ,
X_ACCOUNTING_RULE   ,
X_INVOICING_RULE    ,
X_ATTRIBUTE11   ,
SALES_PROD_FLG  ,
SRC_EFF_TO_DT   ,
DELETE_FLG  ,
TENANT_ID   ,
X_CUSTOM    ,
ETL_PROC_WID    ,
W_INSERT_DT 
from  OBIEE_DW.W_ORA_PRODUCT_DS_TMP_DERIVE;

{% endset %}

{% do run_query(sql) %}

{% do log("test", info=True) %}

{% endmacro %}

