include_str_demo::get_version_build:
 stp     x20, x19, [sp, #-32]!
 stp     x29, x30, [sp, #16]
 add     x29, sp, #16
 mov     x19, x8
Lloh2838:
 adrp    x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh2839:
 ldr     x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
 ldrb    wzr, [x8]
 mov     w0, #5
 mov     w1, #1
 bl      ___rust_alloc
 cbz     x0, LBB393_2
 mov     w8, #48
 strb    w8, [x0, #4]
 mov     w8, #11824
 movk    w8, #11825, lsl, #16
 str     w8, [x0]
 mov     w8, #5
 stp     x8, x0, [x19]
 str     x8, [x19, #16]
 ldp     x29, x30, [sp, #16]
 ldp     x20, x19, [sp], #32
 ret
LBB393_2:
 mov     w0, #1
 mov     w1, #5
 bl      __ZN5alloc7raw_vec12handle_error17h1ced0b2c46aa5468E
