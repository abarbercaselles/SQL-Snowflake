--Ver nombre(s) de una(s) base(s) de datos, su(s) FDS y su(s) descripcion(es)
SELECT DISTINCT
A.DDS_CUST_DATAPACK_NAME            "DB NO"
,B.ORD_FDS_ID                       "FDS"
--,A.DDS_DESCRIPTION                  "DB DESC"
,B.ORD_LONG_DESCRIPTION             "DB LONG DESC"
,C.PHI_ID                           "MAIN HIER"
,C.PHI_DESCRIPTION                  "PHI DESC"
,A.DDS_MODIFIED_DATE                  
FROM    NRSP_V.TMPO_DDE_SETUP           A
        ,NRSP_V.TRPO_ORDER              B
        ,NRSP_V.TRAG_PS_HIERARCHY_PRD   C
WHERE   A.DDS_ORD_ID = B.ORD_ID
AND     C.PHI_FDS_ID = B.ORD_FDS_ID
AND     PHI_FLAG_PRINCIPAL=1
AND     A.DDS_CUST_DATAPACK_NAME  IN  ('N1003PE5');


-- EN VALPRD01 !!!!!!!!!!!!