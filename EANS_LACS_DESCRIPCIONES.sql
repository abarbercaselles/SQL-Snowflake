/* PARA SABER A QUE DATABASES AFECTA ESTE EAN */
select b.ac_retailer, a.*
from VLDRAWDATA_ES.descriptions a, vldinstr_es.stores b
where a.ac_cref='8410698046211' /*AND ac_crefdescRiption like '%HERBAL%' AND ac_crefdescRiption like '%CHAMPU%'*/
and b.AC_NSHOPID=a.ac_nshopidinserted
order by nc_periodinserted desc;