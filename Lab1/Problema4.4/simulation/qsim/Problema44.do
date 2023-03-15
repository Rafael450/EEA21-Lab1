onerror {quit -f}
vlib work
vlog -work work Problema44.vo
vlog -work work Problema44.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Problema44_vlg_vec_tst
vcd file -direction Problema44.msim.vcd
vcd add -internal Problema44_vlg_vec_tst/*
vcd add -internal Problema44_vlg_vec_tst/i1/*
add wave /*
run -all