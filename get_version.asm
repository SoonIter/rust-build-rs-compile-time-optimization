include_str_demo::get_version:
 stp     x24, x23, [sp, #-64]!
 stp     x22, x21, [sp, #16]
 stp     x20, x19, [sp, #32]
 stp     x29, x30, [sp, #48]
 add     x29, sp, #48
 sub     sp, sp, #1, lsl, #12
 str     xzr, [sp]
 sub     sp, sp, #2592
 str     xzr, [sp]
 mov     x19, x8
 add     x0, sp, #3344
 bl      __ZN10cargo_toml24Manifest$LT$Metadata$GT$28from_slice_with_metadata_str17h378b90fb72612161E
 ldr     x8, [sp, #3344]
 cmp     x8, #3
 b.eq    LBB392_9
 mov     x0, sp
 add     x1, sp, #3344
 mov     w2, #3344
 bl      _memcpy
 ldr     x9, [sp, #632]
 mov     x8, #-9223372036854775808
 cmp     x9, x8
 b.eq    LBB392_10
 ldr     x9, [sp, #656]
 cmp     x9, x8
 b.eq    LBB392_11
 ldr     x21, [sp, #664]
 ldr     x20, [sp, #672]
 cbz     x20, LBB392_7
 tbnz    x20, #63, LBB392_12
Lloh2822:
 adrp    x8, ___rust_no_alloc_shim_is_unstable@GOTPAGE
Lloh2823:
 ldr     x8, [x8, ___rust_no_alloc_shim_is_unstable@GOTPAGEOFF]
 ldrb    wzr, [x8]
 mov     w23, #1
 mov     x0, x20
 mov     w1, #1
 bl      ___rust_alloc
 cbz     x0, LBB392_13
 mov     x22, x0
 b       LBB392_8
LBB392_7:
 mov     w22, #1
LBB392_8:
 mov     x0, x22
 mov     x1, x21
 mov     x2, x20
 bl      _memcpy
 stp     x20, x22, [x19]
 str     x20, [x19, #16]
 mov     x0, sp
 bl      __ZN4core3ptr41drop_in_place$LT$cargo_toml..Manifest$GT$17h34903aba57a5286bE
 add     sp, sp, #1, lsl, #12
 add     sp, sp, #2592
 ldp     x29, x30, [sp, #48]
 ldp     x20, x19, [sp, #32]
 ldp     x22, x21, [sp, #16]
 ldp     x24, x23, [sp], #64
 ret
LBB392_9:
 add     x8, sp, #3344
 ldur    q0, [x8, #40]
 ldur    q1, [x8, #56]
 stp     q0, q1, [sp, #32]
 ldur    q0, [x8, #72]
 ldur    q1, [x8, #88]
 stp     q0, q1, [sp, #64]
 ldur    q0, [x8, #8]
 ldur    q1, [x8, #24]
 stp     q0, q1, [sp]
Lloh2824:
 adrp    x0, l___unnamed_279@PAGE
Lloh2825:
 add     x0, x0, l___unnamed_279@PAGEOFF
Lloh2826:
 adrp    x3, l___unnamed_280@PAGE
Lloh2827:
 add     x3, x3, l___unnamed_280@PAGEOFF
Lloh2828:
 adrp    x4, l___unnamed_281@PAGE
Lloh2829:
 add     x4, x4, l___unnamed_281@PAGEOFF
 mov     x2, sp
 mov     w1, #23
 bl      __ZN4core6result13unwrap_failed17h42a90317cbe44e31E
 b       LBB392_14
LBB392_10:
Lloh2830:
 adrp    x0, l___unnamed_282@PAGE
Lloh2831:
 add     x0, x0, l___unnamed_282@PAGEOFF
Lloh2832:
 adrp    x2, l___unnamed_283@PAGE
Lloh2833:
 add     x2, x2, l___unnamed_283@PAGEOFF
 mov     w1, #13
 bl      __ZN4core6option13expect_failed17h5c948195168d4da0E
 b       LBB392_14
LBB392_11:
Lloh2834:
 adrp    x8, l___unnamed_284@PAGE
Lloh2835:
 add     x8, x8, l___unnamed_284@PAGEOFF
 mov     w9, #1
 str     x8, [sp, #3344]
 str     x9, [sp, #3352]
 mov     w8, #8
 str     xzr, [sp, #3376]
 str     x8, [sp, #3360]
 str     xzr, [sp, #3368]
Lloh2836:
 adrp    x1, l___unnamed_285@PAGE
Lloh2837:
 add     x1, x1, l___unnamed_285@PAGEOFF
 add     x0, sp, #3344
 bl      __ZN4core9panicking9panic_fmt17hfd5734ec94bc3c1dE
 b       LBB392_14
LBB392_12:
 mov     x23, #0
LBB392_13:
 mov     x0, x23
 mov     x1, x20
 bl      __ZN5alloc7raw_vec12handle_error17h1ced0b2c46aa5468E
LBB392_14:
 brk     #0x1
LBB392_15:
 mov     x19, x0
 mov     x0, sp
 bl      __ZN4core3ptr45drop_in_place$LT$cargo_toml..error..Error$GT$17h420293f575961abfE
 b       LBB392_18
LBB392_16:
 bl      __ZN4core9panicking16panic_in_cleanup17hd54e9d416218712bE
LBB392_17:
 mov     x19, x0
 mov     x0, sp
 bl      __ZN4core3ptr41drop_in_place$LT$cargo_toml..Manifest$GT$17h34903aba57a5286bE
LBB392_18:
 mov     x0, x19
 bl      __Unwind_Resume
LBB392_19:
 bl      __ZN4core9panicking16panic_in_cleanup17hd54e9d416218712bE
