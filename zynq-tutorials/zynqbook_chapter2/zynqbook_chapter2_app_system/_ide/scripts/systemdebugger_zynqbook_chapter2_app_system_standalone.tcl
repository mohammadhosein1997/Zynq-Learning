# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2/zynqbook_chapter2_app_system/_ide/scripts/systemdebugger_zynqbook_chapter2_app_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2/zynqbook_chapter2_app_system/_ide/scripts/systemdebugger_zynqbook_chapter2_app_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248469924" && level==0 && jtag_device_ctx=="jsn-Zed-210248469924-03727093-0"}
fpga -file /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2/zynqbook_chapter2_app/_ide/bitstream/zynqbook_chapter2.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2/zynqbook_chapter2/export/zynqbook_chapter2/hw/zynqbook_chapter2.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2/zynqbook_chapter2_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2/zynqbook_chapter2_app/Debug/zynqbook_chapter2_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
