{{ config (
    materialized="table"
)}}

with SALES_ORDLNS_SC_TEMP1 as(

select	
	DISTINCT
	SQ_W_SALES_OREDER_LINE_FS_SC.HEADER_ID	   C1_HEADER_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.ORDER_TYPE_ID	   C2_ORDER_TYPE_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.ORDER_NUMBER	   C3_ORDER_NUMBER,
	SQ_W_SALES_OREDER_LINE_FS_SC.ORDERED_DATE	   C4_ORDERED_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.CONVERSION_RATE	   C5_CONVERSION_RATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.PARTIAL_SHIPMENTS_ALLOWED	   C6_PARTIAL_SHIPMENTS_ALLOWED,
	SQ_W_SALES_OREDER_LINE_FS_SC.TRANSACTIONAL_CURR_CODE	   C7_TRANSACTIONAL_CURR_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.CUST_PO_NUMBER	   C8_CUST_PO_NUMBER,
	SQ_W_SALES_OREDER_LINE_FS_SC.PAYMENT_TERM_ID	   C9_PAYMENT_TERM_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.FREIGHT_TERMS_CODE	   C10_FREIGHT_TERMS_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.SOLD_TO_ORG_ID	   C11_SOLD_TO_ORG_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.SOLD_TO_CONTACT_ID	   C12_SOLD_TO_CONTACT_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.CREATION_DATE	   C13_CREATION_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.BOOKED_FLAG	   C14_BOOKED_FLAG,
	SQ_W_SALES_OREDER_LINE_FS_SC.SALESREP_ID	   C15_SALESREP_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.PAYMENT_TYPE_CODE	   C16_PAYMENT_TYPE_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.SALES_CHANNEL_CODE	   C17_SALES_CHANNEL_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.LAST_ACK_DATE	   C18_LAST_ACK_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.FLOW_STATUS_CODE	   C19_FLOW_STATUS_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.BOOKED_DATE	   C20_BOOKED_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.LINE_ID	   C21_LINE_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.SERVICE_LINE_ID	   C22_SERVICE_LINE_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.ORG_ID	   C23_ORG_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.PROJECT_ID	   C24_PROJECT_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.TASK_ID	   C25_TASK_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.LINE_NUMBER	   C26_LINE_NUMBER,
	SQ_W_SALES_OREDER_LINE_FS_SC.REQUEST_DATE	   C27_REQUEST_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.PROMISE_DATE	   C28_PROMISE_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.SCHEDULE_SHIP_DATE	   C29_SCHEDULE_SHIP_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.ORDER_QUANTITY_UOM	   C30_ORDER_QUANTITY_UOM,
	SQ_W_SALES_OREDER_LINE_FS_SC.CANCELLED_QUANTITY	   C31_CANCELLED_QUANTITY,
	SQ_W_SALES_OREDER_LINE_FS_SC.SHIPPED_QUANTITY	   C32_SHIPPED_QUANTITY,
	SQ_W_SALES_OREDER_LINE_FS_SC.ORDERED_QUANTITY	   C33_ORDERED_QUANTITY,
	SQ_W_SALES_OREDER_LINE_FS_SC.SHIP_FROM_ORG_ID	   C34_SHIP_FROM_ORG_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.SHIP_TO_ORG_ID	   C35_SHIP_TO_ORG_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.INVOICE_TO_ORG_ID	   C36_INVOICE_TO_ORG_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.INVENTORY_ITEM_ID	   C37_INVENTORY_ITEM_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.FREIGHT_TERMS_CODE1	   C38_FREIGHT_TERMS_CODE1,
	SQ_W_SALES_OREDER_LINE_FS_SC.UNIT_SELLING_PRICE	   C39_UNIT_SELLING_PRICE,
	SQ_W_SALES_OREDER_LINE_FS_SC.UNIT_LIST_PRICE	   C40_UNIT_LIST_PRICE,
	SQ_W_SALES_OREDER_LINE_FS_SC.CREATION_DATE_1	   C41_CREATION_DATE_1,
	SQ_W_SALES_OREDER_LINE_FS_SC.CREATED_BY	   C42_CREATED_BY,
	SQ_W_SALES_OREDER_LINE_FS_SC.LAST_UPDATE_DATE	   C43_LAST_UPDATE_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.LAST_UPDATED_BY	   C44_LAST_UPDATED_BY,
	SQ_W_SALES_OREDER_LINE_FS_SC.TOP_MODEL_LINE_ID	   C45_TOP_MODEL_LINE_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.ITEM_TYPE_CODE	   C46_ITEM_TYPE_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.LINE_CATEGORY_CODE	   C47_LINE_CATEGORY_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.SCHEDULE_STATUS_CODE	   C48_SCHEDULE_STATUS_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.CANCELLED_FLAG	   C49_CANCELLED_FLAG,
	SQ_W_SALES_OREDER_LINE_FS_SC.BOOKED_FLAG1	   C50_BOOKED_FLAG1,
	SQ_W_SALES_OREDER_LINE_FS_SC.LAST_ACK_DATE_1	   C51_LAST_ACK_DATE_1,
	SQ_W_SALES_OREDER_LINE_FS_SC.INVOICED_QUANTITY	   C52_INVOICED_QUANTITY,
	SQ_W_SALES_OREDER_LINE_FS_SC.SHIPPABLE_FLAG	   C53_SHIPPABLE_FLAG,
	SQ_W_SALES_OREDER_LINE_FS_SC.FLOW_STATUS_CODE1	   C54_FLOW_STATUS_CODE1,
	SQ_W_SALES_OREDER_LINE_FS_SC.NAME	   C55_NAME,
	SQ_W_SALES_OREDER_LINE_FS_SC.AGREEMENT_NUM	   C56_AGREEMENT_NUM,
	SQ_W_SALES_OREDER_LINE_FS_SC.CANCELLED_FLAG1	   C57_CANCELLED_FLAG1,
	SQ_W_SALES_OREDER_LINE_FS_SC.OPEN_FLAG	   C58_OPEN_FLAG,
	SQ_W_SALES_OREDER_LINE_FS_SC.SHIPMENT_NUMBER	   C59_SHIPMENT_NUMBER,
	SQ_W_SALES_OREDER_LINE_FS_SC.LAST_UPDATE_DATE1	   C60_LAST_UPDATE_DATE1,
	SQ_W_SALES_OREDER_LINE_FS_SC.LAST_UPDATE_DATE2	   C61_LAST_UPDATE_DATE2,
	SQ_W_SALES_OREDER_LINE_FS_SC.CONVERSION_TYPE_CODE	   C62_CONVERSION_TYPE_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.FULFILLED_FLAG	   C63_FULFILLED_FLAG,
	SQ_W_SALES_OREDER_LINE_FS_SC.INVOICE_INTERFACE_STATUS_CODE	   C64_INVOICE_INTERFACE_STATUS_C,
	SQ_W_SALES_OREDER_LINE_FS_SC.SHIPPING_INTERFACED_FLAG	   C65_SHIPPING_INTERFACED_FLAG,
	SQ_W_SALES_OREDER_LINE_FS_SC.OPTION_NUMBER	   C66_OPTION_NUMBER,
	SQ_W_SALES_OREDER_LINE_FS_SC.COMPONENT_NUMBER	   C67_COMPONENT_NUMBER,
	SQ_W_SALES_OREDER_LINE_FS_SC.SOURCE_TYPE_CODE	   C68_SOURCE_TYPE_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.ORDER_SOURCE_ID	   C69_ORDER_SOURCE_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.UNIT_COST	   C70_UNIT_COST,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_CUSTOM	   C71_X_CUSTOM,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_PRICING_ATTRIBUTE28	   C72_X_PRICING_ATTRIBUTE28,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SERVICE_START_DATE	   C73_X_SERVICE_START_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SERVICE_END_DATE	   C74_X_SERVICE_END_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SERVICE_REFERENCE_TYPE_CODE	   C75_X_SERVICE_REFERENCE_TYPE_C,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SERVICE_REFERENCE_LINE_ID	   C76_X_SERVICE_REFERENCE_LINE_I,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_LICENSE_ID	   C77_X_LICENSE_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_ORDER_SOURCE	   C78_X_ORDER_SOURCE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SIMPLIFIED_CONTRACT_NUMBER	   C79_X_SIMPLIFIED_CONTRACT_NUMB,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_LENGTH_OF_CONTRACT	   C80_X_LENGTH_OF_CONTRACT,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_COVERED_INVENTORY_ITEM_ID	   C81_X_COVERED_INVENTORY_ITEM_I,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SOB_ID	   C82_X_SOB_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SOB_CURRENCY_CODE	   C83_X_SOB_CURRENCY_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_PRICING_ATTRIBUTE25	   C84_X_PRICING_ATTRIBUTE25,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_CURRENT_CONTRACT_STATUS	   C85_X_CURRENT_CONTRACT_STATUS,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SOLD_TO_CUSTOMER_ID	   C86_X_SOLD_TO_CUSTOMER_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_BILL_TO_CUSTOMER_ID	   C87_X_BILL_TO_CUSTOMER_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SHIP_TO_CUSTOMER_ID	   C88_X_SHIP_TO_CUSTOMER_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_OKC_SALESPERSON_ID	   C89_X_OKC_SALESPERSON_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SIEBEL_ORDER_NUM	   C90_X_SIEBEL_ORDER_NUM,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_APPLICATION_CODE	   C91_X_APPLICATION_CODE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SC_QUERY_SOURCE	   C92_X_SC_QUERY_SOURCE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_START_DATE	   C93_X_START_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_END_DATE	   C94_X_END_DATE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SF_UNIT_LIST_PRICE	   C95_X_SF_UNIT_LIST_PRICE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SF_UNIT_CONTRACT_PRICE	   C96_X_SF_UNIT_CONTRACT_PRICE,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SF_UNIT_SELLING_PRICE_1	   C97_X_SF_UNIT_SELLING_PRICE_1,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SF_QUANTITY	   C98_X_SF_QUANTITY,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_SERVICE_PERCENTAGE	   C99_X_SERVICE_PERCENTAGE,
	HR_OPERATING_UNITS.SET_OF_BOOKS_ID	   C100_X_SET_OF_BOOKS_ID,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_ATTRIBUTE11	   C101_X_ATTRIBUTE11,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_ATTRIBUTE12	   C102_X_ATTRIBUTE12,
	SQ_W_SALES_OREDER_LINE_FS_SC.X_ATTRIBUTE13	   C103_X_ATTRIBUTE13
from	
( /* Subselect from SDE_ORA_SalesOrderLinesFact.W_SALES_ORDER_LINE_FS.SQ1
*/
SELECT 
      TO_CHAR (okh.ID) header_id

      , NULL order_type_id

      , okh.contract_number|| DECODE (okh.contract_number_modifier,NULL, NULL,' ' || okh.contract_number_modifier) order_number

      , okh.date_approved ordered_date

      , NULL conversion_rate

      , NULL partial_shipments_allowed

      , okh.currency_code transactional_curr_code

      , okh.cust_po_number cust_po_number

      , okh.payment_term_id payment_term_id

      , NULL freight_terms_code

      , TO_NUMBER (sold_to_party.object1_id1) sold_to_org_id

      , NULL sold_to_contact_id

      , okh.creation_date creation_date

      , 'Y' booked_flag, NULL salesrep_id, NULL payment_type_code

      , bill_to_cust.sales_channel_code sales_channel_code

      , NULL last_ack_date

      , okh.sts_code flow_status_code

      , okh.date_approved booked_date

      , TO_CHAR (okl.ID) line_id

      , TO_CHAR (okl.cle_id) service_line_id

      , okh.authoring_org_id org_id

      , NULL project_id

      , NULL task_id

      , TO_NUMBER (okls.line_number || '.' || okl.line_number) line_number

      , NULL request_date

      , NULL promise_date

      , NULL schedule_ship_date

      , NULL order_quantity_uom

      , NULL cancelled_quantity

      , NULL shipped_quantity

      , 1 ordered_quantity

      , NULL ship_from_org_id

      , okls.ship_to_site_use_id ship_to_org_id

      , okls.bill_to_site_use_id invoice_to_org_id

      , csi.inventory_item_id inventory_item_id

      , NULL freight_terms_code1

      , okl.price_negotiated unit_selling_price

      , okl.price_negotiated unit_list_price

      , okh.creation_date creation_date_1

      , okl.created_by

      , okl.last_update_date last_update_date

      , okl.last_updated_by

      , NULL top_model_line_id

      , NULL item_type_code

      , NULL line_category_code

      , okl.sts_code schedule_status_code

      , NULL cancelled_flag

      , 'Y' booked_flag1

      , NULL last_ack_date_1

      , 1 invoiced_quantity

      , NULL shippable_flag

      , okl.sts_code flow_status_code1

      , NULL NAME

      , NULL agreement_num

      , NULL cancelled_flag1

      , NULL open_flag

      , NULL shipment_number

      , NULL last_update_date1

      , okh.last_update_date last_update_date2

      , NULL conversion_type_code

      , NULL fulfilled_flag

      , okl.sts_code invoice_interface_status_code

      , NULL shipping_interfaced_flag

      , NULL option_number

      , NULL component_number, okh.scs_code source_type_code,

       NULL order_source_id, NULL unit_cost, '0' AS x_custom,

       cpav2.pricing_attribute28 as x_pricing_attribute28, okl.start_date x_service_start_date,

       okl.end_date x_service_end_date,

       okh.scs_code x_service_reference_type_code,

       NULL x_service_reference_line_id, csi.system_id x_license_id,

       'SC' x_order_source, okh.contract_number x_simplified_contract_number,

       ROUND (TO_NUMBER (okh.end_date - okh.start_date)) x_length_of_contract,

       msi.inventory_item_id x_covered_inventory_item_id, a_sob.sob_id x_sob_id,

       a_sob.sob_curr x_sob_currency_code, cpav2.pricing_attribute25 as x_pricing_attribute25,

       okhb.sts_code x_current_contract_status,

       --okls.cust_acct_id x_sold_to_customer_id,

       sold_ca.cust_account_id x_sold_to_customer_id,

       bill_to_cust.cust_account_id x_bill_to_customer_id,

       ship_to_cust.cust_account_id x_ship_to_customer_id,

       NULL x_okc_salesperson_id

       , CHRT.cognomen x_siebel_order_num

       , okh.attribute5 x_application_code,

       'A' x_sc_query_source,

       okh.start_date x_Start_Date,

       okh.end_date x_End_Date,

       oklb.SUPPRESSED_CREDIT as x_SUPPRESSED_CREDIT,

       SPA.LISTPRICE x_sf_unit_list_price,

       SPA.CONTRACTPRICE x_sf_unit_contract_price,

       SPA.SELLINGPRICE x_sf_unit_selling_price_1,

       SPA.QTY x_sf_quantity,

       SPA.SERVICE_PERCENTAGE x_Service_Percentage,
        okl.attribute11 x_attribute11,
        okl.attribute12 x_attribute12,
         okl.attribute13 x_attribute13
  FROM "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_HEADERS_ALL_B" okh, --okc_k_headers_v okh,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_HEADERS_TL" CHRT,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_LINES_B" okl,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_LINES_B" okls,

       --okc_contacts okc_salesperson,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_PARTY_ROLES_B" sold_to_party,

       (SELECT ship_su.site_use_id, ship_ca.cust_account_id,

               ship_ps.location_id, ship_ps.party_site_id

          FROM "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_SITE_USES_ALL" ship_su,

               "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCT_SITES_ALL" ship_cas,

               "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCOUNTS" ship_ca ,

                "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_PARTY_SITES" ship_ps

         WHERE ship_su.cust_acct_site_id = ship_cas.cust_acct_site_id

           AND ship_ca.cust_account_id = ship_cas.cust_account_id

           AND ship_ps.party_site_id = ship_cas.party_site_id) ship_to_cust,

       (SELECT bill_su.site_use_id, bill_ca.cust_account_id,

               bill_ps.location_id, bill_ps.party_site_id,

               bill_ca.sales_channel_code

          FROM "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_SITE_USES_ALL" bill_su,

               "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCT_SITES_ALL"  bill_cas,

               "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCOUNTS" bill_ca,

              "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_PARTY_SITES"   bill_ps

         WHERE bill_su.cust_acct_site_id = bill_cas.cust_acct_site_id

           AND bill_ca.cust_account_id = bill_cas.cust_account_id

           AND bill_ps.party_site_id = bill_cas.party_site_id) bill_to_cust,

       (SELECT   party_id, MAX (cust_account_id) cust_account_id

            FROM "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCOUNTS"

            WHERE status = 'A'

        GROUP BY party_id) sold_ca,

        "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_ITEMS" oki,

       "PC_FIVETRAN_DB"."ERPPRD_CSI"."CSI_ITEM_INSTANCES" csi,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_ITEMS" serv_oki,

       "PC_FIVETRAN_DB"."ERPPRD_INV"."MTL_SYSTEM_ITEMS_B" msi,

       (SELECT hou.organization_id org_id, sob.ledger_id sob_id,

               sob.currency_code sob_curr

          FROM ( SELECT O.BUSINESS_GROUP_ID , O.ORGANIZATION_ID , OTL.NAME , O.DATE_FROM , O.DATE_TO ,  O3.ORG_INFORMATION5 SHORT_CODE  , O3.ORG_INFORMATION3 SET_OF_BOOKS_ID , O3.ORG_INFORMATION2 DEFAULT_LEGAL_CONTEXT_ID  , O3.ORG_INFORMATION6  USABLE_FLAG FROM 
"PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ALL_ORGANIZATION_UNITS" O, "PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ALL_ORGANIZATION_UNITS_TL" OTL, "PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ORGANIZATION_INFORMATION" O2, 
"PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ORGANIZATION_INFORMATION" O3 WHERE
O.ORGANIZATION_ID = O2.ORGANIZATION_ID AND O.ORGANIZATION_ID = O3.ORGANIZATION_ID AND O2.ORG_INFORMATION_CONTEXT||'' = 'CLASS' AND 
O3.ORG_INFORMATION_CONTEXT = 'Operating Unit Information' AND O2.ORG_INFORMATION1 = 'OPERATING_UNIT' AND O2.ORG_INFORMATION2 = 'Y' AND
O.ORGANIZATION_ID = OTL.ORGANIZATION_ID AND OTL.LANGUAGE = 'US') hou,  "PC_FIVETRAN_DB"."ERPPRD_GL"."GL_LEDGERS" sob

         WHERE sob.ledger_id = hou.set_of_books_id) a_sob,

       (SELECT   MAX (ID) max_id, cle_id

            FROM "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_PRICE_ATT_VALUES"

        GROUP BY cle_id) cpav,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_PRICE_ATT_VALUES"  cpav2,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_HEADERS_ALL_B" okhb,  -- modified for R12 Retrofit -- okc_k_headers_b

       "PC_FIVETRAN_DB"."ERPPRD_OKS"."OKS_K_LINES_B" oklb,

       "PC_FIVETRAN_DB"."ERPPRD_WRSAPP"."WRS_SFDC_LINE_PRICE_ATTRS" SPA

 WHERE okh.ID = okl.dnz_chr_id

   AND okl.id = SPA.TRANS_LINE_ID(+)

   --AND okl.dnz_chr_id = okc_salesperson.dnz_chr_id(+)

   --AND okc_salesperson.cro_code(+) = 'SALESPERSON'

   --AND okc_salesperson.jtot_object1_code(+) = 'OKX_SALEPERS'

   and okh.ID = CHRT.ID

   AND CHRT.LANGUAGE = 'US'

   AND okl.dnz_chr_id = sold_to_party.dnz_chr_id(+)

   AND sold_to_party.jtot_object1_code(+) = 'OKX_PARTY'

   AND sold_to_party.rle_code(+) = 'CUSTOMER'

   AND sold_to_party.chr_id = sold_to_party.dnz_chr_id

   AND okl.dnz_chr_id = oki.dnz_chr_id(+)

   AND okl.ID = oki.cle_id(+)

   AND oki.jtot_object1_code(+) = 'OKX_CUSTPROD'

   AND csi.instance_id(+) = TO_NUMBER (oki.object1_id1)

   AND okl.dnz_chr_id = serv_oki.dnz_chr_id(+)

   AND okl.cle_id = serv_oki.cle_id(+)

   AND serv_oki.jtot_object1_code(+) = 'OKX_SERVICE'

   AND TO_NUMBER (serv_oki.object1_id1) = msi.inventory_item_id(+)

   AND TO_NUMBER (serv_oki.object1_id2) = msi.organization_id(+)

   AND okh.authoring_org_id = a_sob.org_id(+)

   AND okl.ID = cpav.cle_id(+)

   AND okl.ID = oklb.cle_id

   AND cpav.max_id = cpav2.ID(+)

   AND okh.date_approved IS NOT NULL

   AND okl.lse_id = 9                                   -------COVERED_PRODUCT

   AND (okl.price_negotiated <> 0 OR (okl.price_negotiated = 0 AND okl.trn_code = 'RPL')
    OR (okl.price_negotiated = 0  AND okl.trn_code ='REP'))

   AND okh.ID = okhb.ID(+)

   AND okl.cle_id = okls.ID(+)

   AND okls.lse_id(+) = 1

   AND okls.ship_to_site_use_id = ship_to_cust.site_use_id(+)

   AND okls.bill_to_site_use_id = bill_to_cust.site_use_id(+)

   AND TO_NUMBER (sold_to_party.object1_id1) = sold_ca.party_id

   AND NVL (okl.upg_orig_system_ref, 'XX') != 'ORDER_LINE'

   AND (   OKL.LAST_UPDATE_DATE >=
                      TO_DATE(SUBSTR('2002-01-23 10:11:33',0,19),'YYYY-MM-DD HH24:MI:SS')
        OR OKH.LAST_UPDATE_DATE >=
                      TO_DATE(SUBSTR('2002-01-23 10:11:33',0,19),'YYYY-MM-DD HH24:MI:SS')
       )

UNION ALL

SELECT TO_CHAR (okh.ID) header_id, NULL order_type_id,

          okh.contract_number

       || DECODE (okh.contract_number_modifier,

                  NULL, NULL,

                  ' ' || okh.contract_number_modifier

                 ) order_number,

       okl.last_update_date ordered_date, NULL conversion_rate,

       NULL partial_shipments_allowed,

       okh.currency_code transactional_curr_code,

       okh.cust_po_number cust_po_number, okh.payment_term_id payment_term_id,

       NULL freight_terms_code,

       TO_NUMBER (sold_to_party.object1_id1) sold_to_org_id,

       NULL sold_to_contact_id, okh.creation_date creation_date,

       'Y' booked_flag, NULL salesrep_id, NULL payment_type_code,

       bill_to_cust.sales_channel_code sales_channel_code, NULL last_ack_date,

       okh.sts_code flow_status_code,

        NVL (TO_DATE(OKL.ATTRIBUTE3), LEAST(
// work on package         NVL (
//             wrsobi_utl_pkg.get_sc_credit_date (okl.cle_id,
//                                                okh.contract_number,
//                                                okh.contract_number_modifier),
//             okl.last_update_date),  
         okl.last_update_date)
          )
          booked_date,

       TO_CHAR (okl.ID) line_id, TO_CHAR (okl.cle_id) service_line_id,

       okh.authoring_org_id org_id, NULL project_id, NULL task_id,

       TO_NUMBER (okls.line_number || '.' || okl.line_number) line_number,

       NULL request_date, NULL promise_date, NULL schedule_ship_date,

       NULL order_quantity_uom, NULL cancelled_quantity,

       NULL shipped_quantity, 1 ordered_quantity, NULL ship_from_org_id,

       okls.ship_to_site_use_id ship_to_org_id,

       okls.bill_to_site_use_id invoice_to_org_id,

       csi.inventory_item_id inventory_item_id, NULL freight_terms_code1,

       

       --   obsl.amount

       NVL (credit_amount, ubt_amount) unit_selling_price,

       

       -- full terminated amount included here

       okl.price_negotiated unit_list_price,  okh.creation_date creation_date_1,

       okl.created_by, okl.last_update_date last_update_date,

       okl.last_updated_by, NULL top_model_line_id, NULL item_type_code,

       NULL line_category_code, okl.sts_code schedule_status_code,

       NULL cancelled_flag, 'Y' booked_flag1, NULL last_ack_date_1,

       1 invoiced_quantity, NULL shippable_flag,

       okl.sts_code flow_status_code1, NULL NAME, NULL agreement_num,

       NULL cancelled_flag1, NULL open_flag, NULL shipment_number,

       NULL last_update_date1, okh.last_update_date last_update_date2,

       NULL conversion_type_code, NULL fulfilled_flag,

       okl.sts_code invoice_interface_status_code,

       NULL shipping_interfaced_flag, NULL option_number,

       NULL component_number, okh.scs_code source_type_code,

       NULL order_source_id, NULL unit_cost, '0' AS x_custom,

       cpav2.pricing_attribute28 x_pricing_attribute28, okl.start_date x_service_start_date,

       okl.end_date x_service_end_date, 'RETURN' x_service_reference_type_code,

       NULL x_service_reference_line_id, csi.system_id x_license_id,

       'SC' x_order_source, okh.contract_number x_simplified_contract_number,

       ROUND (TO_NUMBER (okh.end_date - okh.start_date)) x_length_of_contract,

       msi.inventory_item_id x_covered_inventory_item_id, a_sob.sob_id x_sob_id,

       a_sob.sob_curr x_sob_currency_code, cpav2.pricing_attribute25 x_pricing_attribute25,

       okhb.sts_code x_current_contract_status,

       --okls.cust_acct_id x_sold_to_customer_id,

sold_ca.cust_account_id x_sold_to_customer_id,

       bill_to_cust.cust_account_id x_bill_to_customer_id,

       ship_to_cust.cust_account_id x_ship_to_customer_id,

       NULL x_okc_salesperson_id, chrt.cognomen x_siebel_order_num, okh.attribute5 x_application_code,

       'B' x_sc_query_source,

       okh.start_date x_Start_Date,

       okh.end_date x_End_Date,

       oklb.SUPPRESSED_CREDIT x_SUPPRESSED_CREDIT,

       SPA.LISTPRICE x_sf_unit_list_price,

       SPA.CONTRACTPRICE x_sf_unit_contract_price,

       SPA.SELLINGPRICE x_sf_unit_selling_price_1,

       SPA.QTY x_sf_quantity,

       SPA.SERVICE_PERCENTAGE x_Service_Percentage,
        okl.attribute11 x_attribute11,
        okl.attribute12 x_attribute12,
        okl.attribute13 x_attribute13

  FROM "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_HEADERS_ALL_B" okh, --okc_k_headers_v okh,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_HEADERS_TL" CHRT,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_LINES_B" okl,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_LINES_B"  okls,

       --okc_contacts okc_salesperson,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_PARTY_ROLES_B" sold_to_party,

       (SELECT ship_su.site_use_id, ship_ca.cust_account_id,

               ship_ps.location_id, ship_ps.party_site_id

          FROM "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_SITE_USES_ALL" ship_su,

               "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCT_SITES_ALL" ship_cas,

               "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCOUNTS" ship_ca,

               "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_PARTY_SITES" ship_ps

         WHERE ship_su.cust_acct_site_id = ship_cas.cust_acct_site_id

           AND ship_ca.cust_account_id = ship_cas.cust_account_id

           AND ship_ps.party_site_id = ship_cas.party_site_id) ship_to_cust,

       (SELECT bill_su.site_use_id, bill_ca.cust_account_id,

               bill_ps.location_id, bill_ps.party_site_id,

               bill_ca.sales_channel_code

          FROM "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_SITE_USES_ALL" bill_su,

               "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCT_SITES_ALL" bill_cas,

               "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCOUNTS" bill_ca,

              "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_PARTY_SITES" bill_ps

         WHERE bill_su.cust_acct_site_id = bill_cas.cust_acct_site_id

           AND bill_ca.cust_account_id = bill_cas.cust_account_id

           AND bill_ps.party_site_id = bill_cas.party_site_id) bill_to_cust,

       (SELECT   party_id, MAX (cust_account_id) cust_account_id

            FROM "PC_FIVETRAN_DB"."ERPPRD_AR"."HZ_CUST_ACCOUNTS"

            WHERE status = 'A'

        GROUP BY party_id) sold_ca,

      "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_ITEMS"   oki,

      "PC_FIVETRAN_DB"."ERPPRD_CSI"."CSI_ITEM_INSTANCES"   csi,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_ITEMS"  serv_oki,

       "PC_FIVETRAN_DB"."ERPPRD_INV"."MTL_SYSTEM_ITEMS_B"  msi,

       (SELECT hou.organization_id org_id, sob.ledger_id sob_id,

               sob.currency_code sob_curr

          FROM ( SELECT O.BUSINESS_GROUP_ID , O.ORGANIZATION_ID , OTL.NAME , O.DATE_FROM , O.DATE_TO ,  O3.ORG_INFORMATION5 SHORT_CODE  , O3.ORG_INFORMATION3 SET_OF_BOOKS_ID , O3.ORG_INFORMATION2 DEFAULT_LEGAL_CONTEXT_ID  , O3.ORG_INFORMATION6  USABLE_FLAG FROM 
"PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ALL_ORGANIZATION_UNITS" O, "PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ALL_ORGANIZATION_UNITS_TL" OTL, "PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ORGANIZATION_INFORMATION" O2, 
"PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ORGANIZATION_INFORMATION" O3 WHERE
O.ORGANIZATION_ID = O2.ORGANIZATION_ID AND O.ORGANIZATION_ID = O3.ORGANIZATION_ID AND O2.ORG_INFORMATION_CONTEXT||'' = 'CLASS' AND 
O3.ORG_INFORMATION_CONTEXT = 'Operating Unit Information' AND O2.ORG_INFORMATION1 = 'OPERATING_UNIT' AND O2.ORG_INFORMATION2 = 'Y' AND
O.ORGANIZATION_ID = OTL.ORGANIZATION_ID AND OTL.LANGUAGE = 'US') hou, "PC_FIVETRAN_DB"."ERPPRD_GL"."GL_LEDGERS" sob

         WHERE sob.ledger_id = hou.set_of_books_id) a_sob,

       (SELECT   MAX (ID) max_id, cle_id

            FROM "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_PRICE_ATT_VALUES"

        GROUP BY cle_id) cpav,

        "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_PRICE_ATT_VALUES" cpav2,

       "PC_FIVETRAN_DB"."ERPPRD_OKC"."OKC_K_HEADERS_ALL_B" okhb,  -- modified for R12 Retrofit -- okc_k_headers_b

       "PC_FIVETRAN_DB"."ERPPRD_OKS"."OKS_K_LINES_B" oklb,

       "PC_FIVETRAN_DB"."ERPPRD_WRSAPP"."WRS_SFDC_LINE_PRICE_ATTRS" SPA

 WHERE okh.ID = okl.dnz_chr_id

   AND okl.id = SPA.TRANS_LINE_ID(+)

   --AND okl.dnz_chr_id = okc_salesperson.dnz_chr_id(+)

   --AND okc_salesperson.cro_code(+) = 'SALESPERSON'

   --AND okc_salesperson.jtot_object1_code(+) = 'OKX_SALEPERS'

    and okh.ID = CHRT.ID

   AND CHRT.LANGUAGE = 'US'

   AND okl.dnz_chr_id = sold_to_party.dnz_chr_id(+)

   AND sold_to_party.jtot_object1_code(+) = 'OKX_PARTY'

   AND sold_to_party.rle_code(+) = 'CUSTOMER'

   AND sold_to_party.chr_id = sold_to_party.dnz_chr_id                  --????

   AND okl.dnz_chr_id = oki.dnz_chr_id(+)

   AND okl.ID = oki.cle_id(+)

   AND oki.jtot_object1_code(+) = 'OKX_CUSTPROD'

   AND csi.instance_id(+) = TO_NUMBER (oki.object1_id1)             --????????

   AND okl.dnz_chr_id = serv_oki.dnz_chr_id(+)

   AND okl.cle_id = serv_oki.cle_id(+)

   AND serv_oki.jtot_object1_code(+) = 'OKX_SERVICE'

   AND TO_NUMBER (serv_oki.object1_id1) = msi.inventory_item_id(+)

   AND TO_NUMBER (serv_oki.object1_id2) = msi.organization_id(+)

   AND okh.authoring_org_id = a_sob.org_id(+)

   AND okl.ID = cpav.cle_id(+)

   AND cpav.max_id = cpav2.ID(+)

   AND okl.lse_id = 9                                     -----COVERED_PRODUCT

   AND okh.ID = okhb.ID(+)

   AND okl.cle_id = okls.ID(+)

   AND okls.ship_to_site_use_id = ship_to_cust.site_use_id(+)

   AND okls.bill_to_site_use_id = bill_to_cust.site_use_id(+)

   AND TO_NUMBER (sold_to_party.object1_id1) = sold_ca.party_id

   AND okl.ID = oklb.cle_id

   AND okl.date_terminated IS NOT NULL

   AND NVL (credit_amount, ubt_amount) > 0

   AND okl.trn_code <> 'RPL'

   AND (   OKL.LAST_UPDATE_DATE >=
                      TO_DATE(SUBSTR('2002-01-23 10:11:33',0,19),'YYYY-MM-DD HH24:MI:SS')
        OR OKH.LAST_UPDATE_DATE >=
                      TO_DATE(SUBSTR('2002-01-23 10:11:33',0,19),'YYYY-MM-DD HH24:MI:SS')
       )

)    SQ_W_SALES_OREDER_LINE_FS_SC LEFT OUTER JOIN ( SELECT O.BUSINESS_GROUP_ID , O.ORGANIZATION_ID , OTL.NAME , O.DATE_FROM , O.DATE_TO ,  O3.ORG_INFORMATION5 SHORT_CODE  , O3.ORG_INFORMATION3 SET_OF_BOOKS_ID , O3.ORG_INFORMATION2 DEFAULT_LEGAL_CONTEXT_ID  , O3.ORG_INFORMATION6  USABLE_FLAG FROM 
"PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ALL_ORGANIZATION_UNITS" O, "PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ALL_ORGANIZATION_UNITS_TL" OTL, "PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ORGANIZATION_INFORMATION" O2, 
"PC_FIVETRAN_DB"."ERPPRD_HR"."HR_ORGANIZATION_INFORMATION" O3 WHERE
O.ORGANIZATION_ID = O2.ORGANIZATION_ID AND O.ORGANIZATION_ID = O3.ORGANIZATION_ID AND O2.ORG_INFORMATION_CONTEXT||'' = 'CLASS' AND 
O3.ORG_INFORMATION_CONTEXT = 'Operating Unit Information' AND O2.ORG_INFORMATION1 = 'OPERATING_UNIT' AND O2.ORG_INFORMATION2 = 'Y' AND
O.ORGANIZATION_ID = OTL.ORGANIZATION_ID AND OTL.LANGUAGE = 'US')    HR_OPERATING_UNITS ON SQ_W_SALES_OREDER_LINE_FS_SC.ORG_ID=HR_OPERATING_UNITS.ORGANIZATION_ID
where	(1=1)
)