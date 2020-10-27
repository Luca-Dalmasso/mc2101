# CMake generated Testfile for 
# Source directory: /media/sf_Shared/pulpino/sw/apps/sequential_tests/matrixAdd
# Build directory: /media/sf_Shared/pulpino/sw/build/apps/sequential_tests/matrixAdd
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(matrixAdd32.test "tcsh" "-c" "env VSIM_DIR=/media/sf_Shared/pulpino/vsim USE_ZERO_RISCY=1 RISCY_RV32F=0 ZERO_RV32M=1 ZERO_RV32E=0 PL_NETLIST= TB_TEST=\"\" /opt/intelFPGA/20.1/modelsim_ase/linuxaloem/vsim  -c -64 -do 'source tcl_files/run.tcl; run_and_exit;'")
set_tests_properties(matrixAdd32.test PROPERTIES  LABELS "sequential_tests" WORKING_DIRECTORY "/media/sf_Shared/pulpino/sw/build/apps/sequential_tests/matrixAdd/matrixAdd32")
add_test(matrixAdd16.test "tcsh" "-c" "env VSIM_DIR=/media/sf_Shared/pulpino/vsim USE_ZERO_RISCY=1 RISCY_RV32F=0 ZERO_RV32M=1 ZERO_RV32E=0 PL_NETLIST= TB_TEST=\"\" /opt/intelFPGA/20.1/modelsim_ase/linuxaloem/vsim  -c -64 -do 'source tcl_files/run.tcl; run_and_exit;'")
set_tests_properties(matrixAdd16.test PROPERTIES  LABELS "sequential_tests" WORKING_DIRECTORY "/media/sf_Shared/pulpino/sw/build/apps/sequential_tests/matrixAdd/matrixAdd16")
add_test(matrixAdd8.test "tcsh" "-c" "env VSIM_DIR=/media/sf_Shared/pulpino/vsim USE_ZERO_RISCY=1 RISCY_RV32F=0 ZERO_RV32M=1 ZERO_RV32E=0 PL_NETLIST= TB_TEST=\"\" /opt/intelFPGA/20.1/modelsim_ase/linuxaloem/vsim  -c -64 -do 'source tcl_files/run.tcl; run_and_exit;'")
set_tests_properties(matrixAdd8.test PROPERTIES  LABELS "sequential_tests" WORKING_DIRECTORY "/media/sf_Shared/pulpino/sw/build/apps/sequential_tests/matrixAdd/matrixAdd8")
