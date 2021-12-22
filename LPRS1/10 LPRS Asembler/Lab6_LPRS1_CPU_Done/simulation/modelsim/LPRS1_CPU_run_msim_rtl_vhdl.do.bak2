transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/register.vhd}
vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/mux.vhd}
vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/instr_rom.vhd}
vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/data_ram.vhd}
vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/control_unit.vhd}
vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/cnt.vhd}
vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/alu.vhd}
vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/cpu_top.vhd}
vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/top.vhd}

vcom -93 -work work {C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/src/hdl/top_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  top_tb

do C:/Users/Danijel/Desktop/Lab6_LPRS1_CPU_Done/top_tb_run.do
