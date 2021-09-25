vcom -2008 ../src/fibo.vhd
vcom -2008 ../tb/fibo_tb.vhd
vsim -novopt work.fibo_tb

add wave -position insertpoint  \
sim:/fibo_tb/uut/width \
sim:/fibo_tb/uut/clk \
sim:/fibo_tb/uut/rst \
sim:/fibo_tb/uut/din \
sim:/fibo_tb/uut/start \
sim:/fibo_tb/uut/busy \
sim:/fibo_tb/uut/dout \
sim:/fibo_tb/uut/dout_valid \
sim:/fibo_tb/uut/state \
sim:/fibo_tb/uut/next_state \
sim:/fibo_tb/uut/value \
sim:/fibo_tb/uut/value_next \
sim:/fibo_tb/uut/previous_value \
sim:/fibo_tb/uut/previous_value_next \
sim:/fibo_tb/uut/i \
sim:/fibo_tb/uut/i_next

run -all