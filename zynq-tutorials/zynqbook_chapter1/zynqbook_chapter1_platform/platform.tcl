# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter1/zynqbook_chapter1_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter1/zynqbook_chapter1_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {zynqbook_chapter1_platform}\
-hw {/home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter1/first_zynq_system_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {/home/zynq-user/Industri-University_Course/Git/Zynq-Learning/zynq-tutorials/zynqbook_chapter1}

platform write
platform generate -domains 
platform active {zynqbook_chapter1_platform}
platform generate
