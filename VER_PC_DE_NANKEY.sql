--PC de un NANKEY
SELECT DISTINCT
B.F_NCV_NAN_KEY                             as  nankey
,C.AC_CHARDESCRIPTION                       as  characteristic
--,A.AC_CHARVALUETAG                          as  pc
,DECODE(A.AC_CHARVALUETAG,D.PC,D.PCDESC)    as  PCDESCR
,A.F_CVT_LAST_CHANGED_DATE                  as  last_changed
FROM  VLDIMDB_ES.CHARVALS   A
,VLDIMDB_ES.NANCHARVALS     B
,VLDIMDB_ES.CHARS           C
,VLDCHECKES.MODULOS         D
WHERE   C.NC_CHARID         IN     (23726)
AND     A.NC_CHARID         =       B.NC_CHARID
AND     A.NC_CHARVALUEID    =       B.NC_CHARVALUEID
AND     A.NC_CHARID         =       C.NC_CHARID
AND     D.PC                =       A.AC_CHARVALUETAG  
AND     F_NCV_NAN_KEY       IN     ('26457829')
ORDER BY B.F_NCV_NAN_KEY, C.AC_CHARDESCRIPTION asc;