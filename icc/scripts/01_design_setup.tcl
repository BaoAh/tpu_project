set_svf CHIP.svf
set_host_options -max_cores 16

# gui_start
# create_mw_lib  -technology ../tech/umc_018_1p6m_mk_20ka_cic.tf -mw_reference_library {../physical_lib/FSA0M_A_GENERIC_CORE ../physical_lib/FSA0M_A_T33_GENERIC_IO ../physical_lib/BONDPAD} -bus_naming_style {[%d]}  -open  CHIP
# import_designs -format verilog -top CHIP -cel CHIP {../design_data/CHIP_syn.v}
# set_tlu_plus_files -max_tluplus ../tluplus/u18_typ.tluplus -tech2itf_map  ../tluplus/u18.map

create_mw_lib  -technology /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.1/CIC/ICC/umc_018_1p6m_mk_20ka_cic.tf -mw_reference_library {/usr/cad/CBDK/CBDK018_UMC_Faraday_v1.1/CIC/ICC/BONDPAD /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.1/CIC/ICC/FSA0M_A_GENERIC_CORE /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.1/CIC/ICC/FSA0M_A_T33_GENERIC_IO} -bus_naming_style {[%d]}  -open  CHIP

# set TLU+
set_tlu_plus_files -max_tluplus /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.1/CIC/ICC/tluplus/u18_typ.tluplus -tech2itf_map  /usr/cad/CBDK/CBDK018_UMC_Faraday_v1.1/CIC/ICC/tluplus/u18.map

#Import Design
import_designs -format verilog {/home/YuLinChen/SystolicArray/syn/tpu_syn_UMC_lib.v}

read_sdc  -version Latest "../design_data/tpu.sdc"
save_mw_cel  -design "tpu"
save_mw_cel  -design "tpu" -as "CHIP"
save_mw_cel  -design "CHIP" -as "design_setup"
