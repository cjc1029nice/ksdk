#!/usr/bin/env bash
(cd  ../../../../../../../../rtos/mqx/mqx/build/armgcc/mqx_twrkw24d512 && source build_release.sh nopause) 
(cd  ../../../../../build/armgcc/mfs_twrkw24d512 && source build_release.sh nopause) 
(cd  ../../../../../../../../rtos/mqx/nshell/build/armgcc/nshell_twrkw24d512 && source build_release.sh nopause) 
(cd  ../../../../../../../../rtos/mqx/mqx_stdlib/build/armgcc/mqx_stdlib_twrkw24d512 && source build_release.sh nopause) 
(cd  ../../../../../../../../lib/ksdk_mqx_lib/armgcc/KW24D5 && source build_release.sh nopause) 
cmake -DCMAKE_TOOLCHAIN_FILE=armgcc.cmake -DCMAKE_BUILD_TYPE="int flash release" -G "Unix Makefiles" 
make all 
if [ "${1}" != "nopause" ]; then
read -p "Press any key to continue... " -n1 -s
fi
