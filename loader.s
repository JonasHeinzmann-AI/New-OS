.section .text
.extern kernelMain
.global loader

loader:
    mov $kernel_stack, %esp    //setting the stack pointer
    call kernelMain            //calling the kernelMain

_stop:                        //extra precaution to keep running
    cli
    hlt
    jmp _stop

.section .bss 
kernel_stack:
