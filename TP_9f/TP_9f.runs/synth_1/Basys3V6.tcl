# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.cache/wt [current_project]
set_property parent.project_path /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:basys3:part0:1.1 [current_project]
set_property ip_output_repo /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_vhdl -library xil_defaultlib {
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/BaudClk_adept.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Enable190.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPcode.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Funit_lib.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/homade_opcodes.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Hcontrolunit.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Hmaster.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Hsalve.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Hstack.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPBufO.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPTic.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPWait.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_Actif.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_Com.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/new/IP_Compare.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_Led.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_MEcom.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_Put.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/new/IP_Rdm.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_Snum.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_datastack.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_ram.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_regfile.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/new/IP_square2.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IP_switch.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPget.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPidentity.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPmul16.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPsleep.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPstack.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/IPwaitBT1.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Mux2.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Mux2x32.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Mux4.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/QD.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/QDE_1.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Ram8.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/add_gen.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/afficheur.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/arbitre2.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/constant32.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/debounce4.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/dstack.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/mem_bank_1bit.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/mysr8ce.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/netring.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/netring_master.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/next_count.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/predicat.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/pulse.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/qde.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/new/random.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/reg.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/reg1c.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/regc.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/regfile.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/reset_mem.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/returnstack.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/select_in0_save.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/select_out.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/slavedual_prom.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/uart_dispatch.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/uart_driverV2.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/uart_rx.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/x7seg.vhd
  /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/imports/nexys3V6_vhdl/Basys3V6.vhd
}
read_ip -quiet /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/ip/timer/timer.xci
set_property used_in_implementation false [get_files -all /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/ip/timer/timer_board.xdc]
set_property used_in_implementation false [get_files -all /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/ip/timer/timer.xdc]
set_property used_in_implementation false [get_files -all /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/ip/timer/timer_ooc.xdc]

read_ip -quiet /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/ip/multiply/multiply.xci

read_ip -quiet /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/ip/my_ram/my_ram.xci
set_property used_in_implementation false [get_files -all /home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/sources_1/ip/my_ram/my_ram_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{/home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/constrs_1/imports/M1 basys3/Basys3_Master.xdc}}
set_property used_in_implementation false [get_files {{/home/tibo36/Documents/Info-SI/Master/M1S1/AEO/TP_9f/TP_9f.srcs/constrs_1/imports/M1 basys3/Basys3_Master.xdc}}]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top Basys3V6 -part xc7a35tcpg236-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Basys3V6.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Basys3V6_utilization_synth.rpt -pb Basys3V6_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
