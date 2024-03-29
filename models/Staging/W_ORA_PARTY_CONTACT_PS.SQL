

select	
	
	TO_CHAR(SQ_HZ_PARTIES.CUST_ACCOUNT_ROLE_ID)	   CUST_ACCOUNT_ROLE_ID,
	TO_CHAR(SQ_HZ_PARTIES.PARTY_ID)	   REL_PARTY_ID,
	TO_CHAR(SQ_HZ_PARTIES.RELATIONSHIP_ID)	   RELATIONSHIP_ID,
	TO_CHAR(SQ_HZ_PARTIES.CONTACT_PARTY_ID)	  CONTACT_PARTY_ID,
	TO_CHAR(SQ_HZ_PARTIES.CREATED_BY)	   CREATED_BY_ID,
	TO_CHAR(SQ_HZ_PARTIES.LAST_UPDATED_BY)	   CHANGED_BY_ID,
	SQ_HZ_PARTIES.CREATION_DATE	  CREATED_ON_DT,
	SQ_HZ_PARTIES.LAST_UPDATE_DATE	  CHANGED_ON_DT,
	SQ_HZ_PARTIES.LAST_UPDATE_DATE1	   AUX1_CHANGED_ON_DT,
	SQ_HZ_PARTIES.DELETE_FLG	   DELETE_FLG,
	((SQ_HZ_PARTIES.CUST_ACCOUNT_ROLE_ID || '~') || SQ_HZ_PARTIES.RELATIONSHIP_ID)	  INTEGRATION_ID,
	SQ_HZ_PARTIES.X_CUSTOM	   X_CUSTOM,
	TO_CHAR(SQ_HZ_PARTIES.ORG_PARTY_ID)	   ORG_PARTY_ID,
	SQ_HZ_PARTIES.DEPARTMENT	   DEPARTMENT,
	SQ_HZ_PARTIES.ORG_CONTACT_ID	   ORG_CONTACT_ID,
	SQ_HZ_PARTIES.CONTACT_NUMBER	  CONTACT_NUMBER,
	SQ_HZ_PARTIES.JOB_TITLE	  JOB_TITLE,
    380            DATASOURCE_NUM_ID
from	
( /* Subselect from SDE_ORA_PartyContactStaging.W_ORA_PARTY_CONTACT_PS_SQ_HZ_PARTIES
*/


select 
	  
	   
	   SQ_PARTY_CNTCT.ORG_PARTY_ID ORG_PARTY_ID,
	SQ_PARTY_CNTCT.CONTACT_NUMBER CONTACT_NUMBER,
	SQ_PARTY_CNTCT.JOB_TITLE JOB_TITLE,
	SQ_PARTY_CNTCT.X_CUSTOM X_CUSTOM,
	SQ_PARTY_CNTCT.RELATIONSHIP_ID RELATIONSHIP_ID,
	SQ_PARTY_CNTCT.CREATED_BY CREATED_BY,
	SQ_PARTY_CNTCT.CONTACT_PARTY_ID CONTACT_PARTY_ID,
	SQ_PARTY_CNTCT.CREATION_DATE CREATION_DATE,
	SQ_PARTY_CNTCT.CUST_ACCOUNT_ROLE_ID CUST_ACCOUNT_ROLE_ID,
	SQ_PARTY_CNTCT.LAST_UPDATED_BY LAST_UPDATED_BY,
	SQ_PARTY_CNTCT.DEPARTMENT DEPARTMENT,
	SQ_PARTY_CNTCT.LAST_UPDATE_DATE1 LAST_UPDATE_DATE1,
	SQ_PARTY_CNTCT.ORG_CONTACT_ID ORG_CONTACT_ID,
	SQ_PARTY_CNTCT.DELETE_FLG DELETE_FLG,
	SQ_PARTY_CNTCT.PARTY_ID PARTY_ID,
	SQ_PARTY_CNTCT.LAST_UPDATE_DATE LAST_UPDATE_DATE
from	"PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_PARTIES"    HZ_PARTIES INNER JOIN 
( /* Subselect from SDE_ORA_PartyContactStaging.W_ORA_PARTY_CONTACT_PS_Max_OrgContact
*/


select 
	  
	   
	   SQ_CONTACT.CUST_ACCOUNT_ROLE_ID CUST_ACCOUNT_ROLE_ID,
	SQ_CONTACT.CONTACT_PARTY_ID CONTACT_PARTY_ID,
	SQ_CONTACT.RELATIONSHIP_ID RELATIONSHIP_ID,
	SQ_CONTACT.PARTY_ID PARTY_ID,
	SQ_CONTACT.LAST_UPDATE_DATE LAST_UPDATE_DATE,
	SQ_CONTACT.LAST_UPDATED_BY LAST_UPDATED_BY,
	SQ_CONTACT.CREATION_DATE CREATION_DATE,
	SQ_CONTACT.CREATED_BY CREATED_BY,
	SQ_CONTACT.X_CUSTOM X_CUSTOM,
	SQ_CONTACT.ORG_PARTY_ID ORG_PARTY_ID,
	SQ_CONTACT.DEPARTMENT DEPARTMENT,
	SQ_CONTACT.ORG_CONTACT_ID ORG_CONTACT_ID,
	SQ_CONTACT.CONTACT_NUMBER CONTACT_NUMBER,
	SQ_CONTACT.JOB_TITLE JOB_TITLE,
	SQ_CONTACT.LAST_UPDATE_DATE1 LAST_UPDATE_DATE1,
	SQ_CONTACT.DELETE_FLG DELETE_FLG,
	MAX(SQ_CONTACT.CUST_ACCOUNT_ROLE_ID) CUST_ACCNT_ROLE_ID
from	
( /* Subselect from SDE_ORA_PartyContactStaging.W_ORA_PARTY_CONTACT_PS_OrgContact
*/


select 
	  
	   
	   0 CUST_ACCOUNT_ROLE_ID,
	R.SUBJECT_ID CONTACT_PARTY_ID,
	R.RELATIONSHIP_ID RELATIONSHIP_ID,
	R.PARTY_ID PARTY_ID,
	
R.LAST_UPDATE_DATE
 LAST_UPDATE_DATE,
	R.LAST_UPDATED_BY LAST_UPDATED_BY,
	R.CREATION_DATE CREATION_DATE,
	R.CREATED_BY CREATED_BY,
	'0' X_CUSTOM,
	R.OBJECT_ID ORG_PARTY_ID,
	OC.DEPARTMENT DEPARTMENT,
	OC.ORG_CONTACT_ID ORG_CONTACT_ID,
	OC.CONTACT_NUMBER CONTACT_NUMBER,
	OC.JOB_TITLE JOB_TITLE,
	OC.LAST_UPDATE_DATE LAST_UPDATE_DATE1,
	
'N'
 DELETE_FLG
from	"PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_ORG_CONTACTS"    OC INNER JOIN "PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_RELATIONSHIPS"    R ON OC.PARTY_RELATIONSHIP_ID=R.RELATIONSHIP_ID
where	(1=1)

And (

(R.LAST_UPDATE_DATE > TO_DATE(SUBSTR('2002-01-23 09:46:38',0,19),'YYYY-MM-DD HH24:MI:SS'))

)
 And (R.RELATIONSHIP_CODE IN ('CONTACT_OF', 'EMPLOYEE_OF'))




UNION ALL

select 
	  
	   
	   CAR.CUST_ACCOUNT_ROLE_ID CUST_ACCOUNT_ROLE_ID,
	CAR.PARTY_ID CONTACT_PARTY_ID,
	null RELATIONSHIP_ID,
	null PARTY_ID,
	
CAR.LAST_UPDATE_DATE
 LAST_UPDATE_DATE,
	CAR.LAST_UPDATED_BY LAST_UPDATED_BY,
	CAR.CREATION_DATE CREATION_DATE,
	CAR.CREATED_BY CREATED_BY,
	'0' X_CUSTOM,
	null ORG_PARTY_ID,
	null DEPARTMENT,
	null ORG_CONTACT_ID,
	null CONTACT_NUMBER,
	null JOB_TITLE,
	null LAST_UPDATE_DATE1,
	
'N'
 DELETE_FLG
from	"PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_CUST_ACCOUNT_ROLES"   CAR
where	(1=1)

And (

(CAR.LAST_UPDATE_DATE > TO_DATE(SUBSTR('2002-01-23 09:46:38',0,19),'YYYY-MM-DD HH24:MI:SS'))

)




UNION ALL

select 
	  
	   
	   CAR1.CUST_ACCOUNT_ROLE_ID CUST_ACCOUNT_ROLE_ID,
	R1.OBJECT_ID CONTACT_PARTY_ID,
	R1.RELATIONSHIP_ID RELATIONSHIP_ID,
	R1.PARTY_ID PARTY_ID,
	
CAR1.LAST_UPDATE_DATE
 LAST_UPDATE_DATE,
	CAR1.LAST_UPDATED_BY LAST_UPDATED_BY,
	CAR1.CREATION_DATE CREATION_DATE,
	CAR1.CREATED_BY CREATED_BY,
	'0' X_CUSTOM,
	null ORG_PARTY_ID,
	null DEPARTMENT,
	null ORG_CONTACT_ID,
	null CONTACT_NUMBER,
	null JOB_TITLE,
	R1.LAST_UPDATE_DATE LAST_UPDATE_DATE1,
	
'N'
 DELETE_FLG
from	"PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_CUST_ACCOUNT_ROLES"   CAR1, "PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_RELATIONSHIPS"   R1, "PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_CUST_ACCOUNTS"   CA
where	(1=1)
 And (R1.SUBJECT_ID=CA.PARTY_ID)
AND (R1.PARTY_ID=CAR1.PARTY_ID)
AND (CA.CUST_ACCOUNT_ID=CAR1.CUST_ACCOUNT_ID)

And (

(CAR1.LAST_UPDATE_DATE > TO_DATE(SUBSTR('2002-01-23 09:46:38',0,19),'YYYY-MM-DD HH24:MI:SS'))

)




UNION ALL

select 
	  
	   
	   0 CUST_ACCOUNT_ROLE_ID,
	R1.SUBJECT_ID CONTACT_PARTY_ID,
	R1.RELATIONSHIP_ID RELATIONSHIP_ID,
	R1.PARTY_ID PARTY_ID,
	
R1.LAST_UPDATE_DATE
 LAST_UPDATE_DATE,
	R1.LAST_UPDATED_BY LAST_UPDATED_BY,
	R1.CREATION_DATE CREATION_DATE,
	R1.CREATED_BY CREATED_BY,
	'0' X_CUSTOM,
	R1.OBJECT_ID ORG_PARTY_ID,
	OC1.DEPARTMENT DEPARTMENT,
	OC1.ORG_CONTACT_ID ORG_CONTACT_ID,
	OC1.CONTACT_NUMBER CONTACT_NUMBER,
	OC1.JOB_TITLE JOB_TITLE,
	OC1.LAST_UPDATE_DATE LAST_UPDATE_DATE1,
	
'N'
 DELETE_FLG
from	"PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_ORG_CONTACTS"    OC1 INNER JOIN "PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_RELATIONSHIPS"    R1 ON OC1.PARTY_RELATIONSHIP_ID=R1.RELATIONSHIP_ID
where	(1=1)

And (R1.RELATIONSHIP_CODE IN ('CONTACT_OF', 'EMPLOYEE_OF'))
 And (

(OC1.LAST_UPDATE_DATE > TO_DATE(SUBSTR('2002-01-23 09:46:38',0,19),'YYYY-MM-DD HH24:MI:SS'))

)




UNION ALL

select 
	  /*+ INDEX(CAR2 HZ_CUST_ACCOUNT_ROLES_N1) */ 

	   
	   CAR2.CUST_ACCOUNT_ROLE_ID CUST_ACCOUNT_ROLE_ID,
	R3.OBJECT_ID CONTACT_PARTY_ID,
	R3.RELATIONSHIP_ID RELATIONSHIP_ID,
	R3.PARTY_ID PARTY_ID,
	
CAR2.LAST_UPDATE_DATE
 LAST_UPDATE_DATE,
	CAR2.LAST_UPDATED_BY LAST_UPDATED_BY,
	CAR2.CREATION_DATE CREATION_DATE,
	CAR2.CREATED_BY CREATED_BY,
	'0' X_CUSTOM,
	null ORG_PARTY_ID,
	null DEPARTMENT,
	null ORG_CONTACT_ID,
	null CONTACT_NUMBER,
	null JOB_TITLE,
	R3.LAST_UPDATE_DATE LAST_UPDATE_DATE1,
	
'N'
 DELETE_FLG
from	"PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_RELATIONSHIPS"  R3, "PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_CUST_ACCOUNT_ROLES"   CAR2, "PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_CUST_ACCOUNTS"   CA1
where	(1=1)
 And (CA1.CUST_ACCOUNT_ID=CAR2.CUST_ACCOUNT_ID)
AND (R3.PARTY_ID=CAR2.PARTY_ID)
AND (R3.SUBJECT_ID=CA1.PARTY_ID)

And (

(R3.LAST_UPDATE_DATE > TO_DATE(SUBSTR('2002-01-23 09:46:38',0,19),'YYYY-MM-DD HH24:MI:SS'))

)




UNION ALL

select 
	  /*+ INDEX(CAR3 HZ_CUST_ACCOUNT_ROLES_N1) */ 

	   
	   CAR3.CUST_ACCOUNT_ROLE_ID CUST_ACCOUNT_ROLE_ID,
	R4.OBJECT_ID CONTACT_PARTY_ID,
	R4.RELATIONSHIP_ID RELATIONSHIP_ID,
	R4.PARTY_ID PARTY_ID,
	
CAR3.LAST_UPDATE_DATE
 LAST_UPDATE_DATE,
	CAR3.LAST_UPDATED_BY LAST_UPDATED_BY,
	CAR3.CREATION_DATE CREATION_DATE,
	CAR3.CREATED_BY CREATED_BY,
	'0' X_CUSTOM,
	null ORG_PARTY_ID,
	null DEPARTMENT,
	null ORG_CONTACT_ID,
	null CONTACT_NUMBER,
	null JOB_TITLE,
	R4.LAST_UPDATE_DATE LAST_UPDATE_DATE1,
	
'N'
 DELETE_FLG
from	"PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_RELATIONSHIPS"    R4, "PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_CUST_ACCOUNT_ROLES"   CAR3, "PC_FIVETRAN_DB"."ERPPRD1_AR"."HZ_CUST_ACCOUNTS"  CA2
where	(1=1)
 And (R4.SUBJECT_ID=CA2.PARTY_ID)
AND (R4.PARTY_ID=CAR3.PARTY_ID)
AND (CA2.CUST_ACCOUNT_ID=CAR3.CUST_ACCOUNT_ID)

And (

(CA2.LAST_UPDATE_DATE > TO_DATE(SUBSTR('2002-01-23 09:46:38',0,19),'YYYY-MM-DD HH24:MI:SS'))

)







)   SQ_CONTACT
where	(1=1)



Group By SQ_CONTACT.CUST_ACCOUNT_ROLE_ID,
 SQ_CONTACT.CONTACT_PARTY_ID,
 SQ_CONTACT.RELATIONSHIP_ID,
 SQ_CONTACT.PARTY_ID,
 SQ_CONTACT.LAST_UPDATE_DATE,
 SQ_CONTACT.LAST_UPDATED_BY,
 SQ_CONTACT.CREATION_DATE,
 SQ_CONTACT.CREATED_BY,
 SQ_CONTACT.X_CUSTOM,
 SQ_CONTACT.ORG_PARTY_ID,
 SQ_CONTACT.DEPARTMENT,
 SQ_CONTACT.ORG_CONTACT_ID,
 SQ_CONTACT.CONTACT_NUMBER,
 SQ_CONTACT.JOB_TITLE,
 SQ_CONTACT.LAST_UPDATE_DATE1,
 SQ_CONTACT.DELETE_FLG





)    SQ_PARTY_CNTCT ON SQ_PARTY_CNTCT.CONTACT_PARTY_ID=HZ_PARTIES.PARTY_ID
where	(1=1)

And (HZ_PARTIES.PARTY_TYPE='PERSON')







)   SQ_HZ_PARTIES
where	(1=1)






 

