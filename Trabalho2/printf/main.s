@ Main function 

  .text
  .align  4
  .global main
  .type main, %function

main:
  ldr r0, =mystring
  ldr r1, =otherstring2
  ldr r2, =0x142
  ldr r3, =0xfffff
  bl  myprintf
  __mainend:
  mov r7, #1
  svc 0

  .data
  .align  4
mystring:
  .asciz  "%s My first string has only %x modifier.\n"
  .asciz  "garbage"
otherstring:
  .asciz "1"
otherstring2:
  .asciz "Fuck Life !!!!"

