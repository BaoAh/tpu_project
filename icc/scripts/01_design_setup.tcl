set_svf CHIP.svf
set_host_options -max_cores 16

# gui_start
create_mw_lib  -technology /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/ICC/umc_018_1p6m_mk_20ka_cic.tf -mw_reference_library {/usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/ICC/BONDPAD /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/ICC/FSA0M_A_GENERIC_CORE /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.0/CIC/ICC/FSA0M_A_T33_GENERIC_IO} -bus_naming_style {[%d]}  -open  /home/YuLinChen/TEST/icc/scripts/CHIP
import_designs -format verilog -top CHIP -cel CHIP {../design_data/CHIP_syn.v}
set_tlu_plus_files -max_tluplus ../tluplus/u18_typ.tluplus -tech2itf_map  ../tluplus/u18.map

read_sdc  -version Latest "../design_data/CHIP.sdc"
save_mw_cel  -design "CHIP"
save_mw_cel  -design "CHIP" -as "design_setup"
