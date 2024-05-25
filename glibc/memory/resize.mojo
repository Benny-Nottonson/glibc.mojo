@always_inline("nodebug")
fn brk(addr: UnsafePointer[NoneType]) -> c_int:
    return external_call["brk", c_int](addr)


@always_inline("nodebug")
fn sbrk(incr: c_int) -> UnsafePointer[NoneType]:
    return external_call["sbrk", UnsafePointer[NoneType]](incr)
