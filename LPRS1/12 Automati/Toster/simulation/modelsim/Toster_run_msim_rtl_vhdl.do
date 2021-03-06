transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/danijel/Desktop/toster/Toster.vhd}

vcom -93 -work work {/home/danijel/Desktop/toster/Toster_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  Toster_tb

add wave *
view structure
view signals
run 2000 ns
