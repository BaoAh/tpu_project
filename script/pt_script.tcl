#PrimeTime Script
set power_enable_analysis TRUE
set power_analysis_mode time_based

read_file -format verilog  ../syn/tpu_syn.v
current_design tpu
link

read_sdf -load_delay net ../syn/tpu_syn.sdf


## Measure  power
# report_switching_activity -list_not_annotated -show_pin

read_vcd  -strip_path top_tb/TOP ./tpu.fsdb
update_power
report_power 
report_power > tpu.power