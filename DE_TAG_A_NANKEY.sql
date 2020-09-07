SELECT fds_id, hier_id, to_char(Node_id,'000000000000000000000') TAG,nan_key,
NPR_LONG_DESCRIPTION, LEV
FROM nrsp_v.vrag_fds_flat_hie_prd a, nrsp_v.trag_node_hie_prd b
WHERE a.fds_id = b.npr_phi_fds_id and a.node_id = b.npr_prh_id
and a.fds_id = 10004343
and a.node_id in ('200000000012523943790')
--cambias el FDS y la TAG y listo
--debes correrla en VALPRD