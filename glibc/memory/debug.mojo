@always_inline("nodebug")
fn mtrace() -> NoneType:
    return external_call["mtrace", NoneType]()

@always_inline("nodebug")
fn muntrace() -> NoneType:
    return external_call["muntrace", NoneType]()