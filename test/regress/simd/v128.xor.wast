(module
  (func (export "xor") (param $0 v128) (param $1 v128) (result v128) (v128.xor (local.get $0) (local.get $1)))
)

(assert_return (invoke "xor" (v128.const i32x4 0 0 -1 -1)
                             (v128.const i32x4 0 -1 0 -1))
                             (v128.const i32x4 0 -1 -1 0))
(assert_return (invoke "xor" (v128.const i32x4 0 0 0 0)
                             (v128.const i32x4 0 0 0 0))
                             (v128.const i32x4 0 0 0 0))
(assert_return (invoke "xor" (v128.const i32x4 0 0 0 0)
                             (v128.const i32x4 -1 -1 -1 -1))
                             (v128.const i32x4 -1 -1 -1 -1))
(assert_return (invoke "xor" (v128.const i32x4 0 0 0 0)
                             (v128.const i32x4 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF))
                             (v128.const i32x4 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF))
(assert_return (invoke "xor" (v128.const i32x4 1 1 1 1)
                             (v128.const i32x4 1 1 1 1))
                             (v128.const i32x4 0 0 0 0))
(assert_return (invoke "xor" (v128.const i32x4 255 255 255 255)
                             (v128.const i32x4 85 85 85 85))
                             (v128.const i32x4 170 170 170 170))
(assert_return (invoke "xor" (v128.const i32x4 255 255 255 255)
                             (v128.const i32x4 128 128 128 128))
                             (v128.const i32x4 127 127 127 127))
(assert_return (invoke "xor" (v128.const i32x4 2863311530 2863311530 2863311530 2863311530)
                             (v128.const i32x4 10 128 5 165))
                             (v128.const i32x4 2863311520 2863311402 2863311535 2863311375))
(assert_return (invoke "xor" (v128.const i32x4 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF)
                             (v128.const i32x4 0x55555555 0x55555555 0x55555555 0x55555555))
                             (v128.const i32x4 0xAAAAAAAA 0xAAAAAAAA 0xAAAAAAAA 0xAAAAAAAA))
(assert_return (invoke "xor" (v128.const i32x4 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF)
                             (v128.const i32x4 0xAAAAAAAA 0xAAAAAAAA 0xAAAAAAAA 0xAAAAAAAA))
                             (v128.const i32x4 0x55555555 0x55555555 0x55555555 0x55555555))
(assert_return (invoke "xor" (v128.const i32x4 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF)
                             (v128.const i32x4 0x0 0x0 0x0 0x0))
                             (v128.const i32x4 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF 0xFFFFFFFF))
(assert_return (invoke "xor" (v128.const i32x4 0x55555555 0x55555555 0x55555555 0x55555555)
                             (v128.const i32x4 0x5555 0xFFFF 0x55FF 0x5FFF))
                             (v128.const i32x4 0x55550000 0x5555AAAA 0x555500AA 0x55550AAA))
(assert_return (invoke "xor" (v128.const i32x4 01_234_567_890 01_234_567_890 01_234_567_890 01_234_567_890)
                             (v128.const i32x4 01_234_567_890 01_234_567_890 01_234_567_890 01_234_567_890))
                             (v128.const i32x4 0 0 0 0))
(assert_return (invoke "xor" (v128.const i32x4 0x0_1234_5678 0x0_1234_5678 0x0_1234_5678 0x0_1234_5678)
                             (v128.const i32x4 0x0_90AB_cdef 0x0_90AB_cdef 0x0_90AB_cdef 0x0_90AB_cdef))
                             (v128.const i32x4 0x829f9b97 0x829f9b97 0x829f9b97 0x829f9b97))


;; Type check
(assert_invalid (module (func (result v128) (v128.xor (i32.const 0) (v128.const i32x4 0 0 0 0)))) "type mismatch")
(assert_invalid (module (func (result v128) (v128.xor (v128.const i32x4 0 0 0 0) (i32.const 0)))) "type mismatch")
(assert_invalid (module (func (result v128) (v128.xor (i32.const 0) (i32.const 0)))) "type mismatch")


;; Test operation with empty argument
(assert_invalid
  (module
    (func $v128.xor-1st-arg-empty (result v128)
      (v128.xor (v128.const i32x4 0 0 0 0))
    )
  )
  "type mismatch"
)
(assert_invalid
  (module
    (func $v128.xor-arg-empty (result v128)
      (v128.xor)
    )
  )
  "type mismatch"
)
