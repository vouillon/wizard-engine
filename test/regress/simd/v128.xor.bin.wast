(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7b\7b\01\7b\03\82\80\80\80\00\01\00\07\87\80"
  "\80\80\00\01\03\78\6f\72\00\00\0a\8e\80\80\80\00"
  "\01\88\80\80\80\00\00\20\00\20\01\fd\51\0b"
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0x0 0x0 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0xffff_ffff 0x0 0xffff_ffff)
  )
  (v128.const i32x4 0x0 0xffff_ffff 0xffff_ffff 0x0)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0x0 0x0 0x0 0x0)
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0x1 0x1 0x1 0x1)
    (v128.const i32x4 0x1 0x1 0x1 0x1)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0xff 0xff 0xff 0xff)
    (v128.const i32x4 0x55 0x55 0x55 0x55)
  )
  (v128.const i32x4 0xaa 0xaa 0xaa 0xaa)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0xff 0xff 0xff 0xff)
    (v128.const i32x4 0x80 0x80 0x80 0x80)
  )
  (v128.const i32x4 0x7f 0x7f 0x7f 0x7f)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
    (v128.const i32x4 0xa 0x80 0x5 0xa5)
  )
  (v128.const i32x4 0xaaaa_aaa0 0xaaaa_aa2a 0xaaaa_aaaf 0xaaaa_aa0f)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
  )
  (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa 0xaaaa_aaaa)
  )
  (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
    (v128.const i32x4 0x0 0x0 0x0 0x0)
  )
  (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0x5555_5555 0x5555_5555 0x5555_5555 0x5555_5555)
    (v128.const i32x4 0x5555 0xffff 0x55ff 0x5fff)
  )
  (v128.const i32x4 0x5555_0000 0x5555_aaaa 0x5555_00aa 0x5555_0aaa)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
    (v128.const i32x4 0x4996_02d2 0x4996_02d2 0x4996_02d2 0x4996_02d2)
  )
  (v128.const i32x4 0x0 0x0 0x0 0x0)
)
(assert_return
  (invoke "xor"
    (v128.const i32x4 0x1234_5678 0x1234_5678 0x1234_5678 0x1234_5678)
    (v128.const i32x4 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef 0x90ab_cdef)
  )
  (v128.const i32x4 0x829f_9b97 0x829f_9b97 0x829f_9b97 0x829f_9b97)
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9e\80\80\80"
    "\00\01\98\80\80\80\00\00\41\00\fd\0c\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\00\00\fd\51\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9e\80\80\80"
    "\00\01\98\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\41\00\fd\51\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8e\80\80\80"
    "\00\01\88\80\80\80\00\00\41\00\41\00\fd\51\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\9c\80\80\80"
    "\00\01\96\80\80\80\00\00\fd\0c\00\00\00\00\00\00"
    "\00\00\00\00\00\00\00\00\00\00\fd\51\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
    "\00\01\7b\03\82\80\80\80\00\01\00\0a\8a\80\80\80"
    "\00\01\84\80\80\80\00\00\fd\51\0b"
  )
  "type mismatch"
)
