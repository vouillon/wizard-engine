(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\00\01\7f\03\82\80\80\80\00\01\00\07\8f\80\80\80"
  "\00\01\0b\62\72\65\61\6b\2d\69\6e\6e\65\72\00\00"
  "\0a\ec\80\80\80\00\01\e6\80\80\80\00\01\01\7f\41"
  "\00\21\00\20\00\02\7f\03\7f\02\7f\41\01\0c\02\0b"
  "\0b\0b\6a\21\00\20\00\02\7f\03\7f\03\7f\41\02\0c"
  "\02\0b\0b\0b\6a\21\00\20\00\02\7f\03\7f\02\7f\03"
  "\7f\41\04\0c\01\0b\0b\0b\0b\6a\21\00\20\00\02\7f"
  "\03\7f\41\08\0c\01\68\0b\0b\6a\21\00\20\00\02\7f"
  "\03\7f\03\7f\41\10\0c\02\0b\68\0b\0b\6a\21\00\20"
  "\00\0b"
)
(assert_return (invoke "break-inner") (i32.const 0x1f))
