--DESCRIPCIONES DE LOS EANES/LACS con precio
SELECT DISTINCT      
a.ac_cref               as      ean
,c.f_nan_key            as      nankey
,b.ac_retailer          as      retailer
,b.ac_channelid         as      channel
,b.ac_defaultxcodegr    as      code
,a.nc_periodinserted    as      period
,a.ac_crefdescription   as      description
,b.ac_shoptype          as      shop_type
,c.nc_lastprice         as      price
,c.ac_xcodexceptiontype as      xcodetype
,c.nc_conv              as      factconv
,c.ac_creftype          as      creftype
,c.ac_crefsuffix        as      crefsuffix
FROM        VLDRAWDATA_ES.descriptions  a,
            vldinstr_es.stores          b,
            VLDRAWDATA_ES.ASSORTMENTS   c        
           
WHERE       b.AC_NSHOPID    =   a.ac_nshopidinserted
AND         b.AC_NSHOPID    =   c.AC_NSHOPID
AND         a.ac_cref       =   c.ac_cref
AND         a.ac_cref       IN  ('0000050413041')  
         
ORDER BY  
a.ac_cref,
c.f_nan_key,
a.nc_periodinserted desc,
b.ac_retailer       desc,
b.ac_shoptype       desc;