*** Variables ***
${SCRIPT}                       ${CURDIR}/../1_hpc.resc
${UART}                         sysbus.apb_uart_0

*** Settings ***
Suite Setup     Setup
Suite Teardown  Teardown
Test Teardown   Test Teardown
Resource        ${RENODEKEYWORDS}

*** Keywords ***
Create Machine
    Execute Script              ${SCRIPT}

*** Test Cases ***
Hello DLA works
    Create Machine
    Create Terminal Tester      ${UART}
    Start Emulation

    Execute Command             $bin?=@target/riscv64imac-unknown-none-elf/debug/examples/dla
    Execute Command             runMacro $reset
    Execute Command             start;
    Wait For Line On Uart     Hello world!
