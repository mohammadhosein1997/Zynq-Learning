# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2/zynqbook_chapter2/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2/zynqbook_chapter2/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zynqbook_chapter2}\
-hw {/home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2/zynqbook_chapter2.xsa}\
-out {/home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter2}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {zynqbook_chapter2}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
