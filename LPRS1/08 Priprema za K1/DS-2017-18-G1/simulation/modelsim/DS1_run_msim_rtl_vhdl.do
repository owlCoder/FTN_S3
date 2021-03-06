transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Danijel/Desktop/DS-2017-18-G1/DS1.vhd}

vcom -93 -work work {C:/Users/Danijel/Desktop/DS-2017-18-G1/DS_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  DS1_tb

add wave *
view structure
view signals
run 500 ns
