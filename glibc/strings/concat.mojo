@always_inline("nodebug")
fn strcat(s1: UnsafePointer[c_char], s2: UnsafePointer[c_char]) -> UnsafePointer[c_char]:
    return external_call["strcat", UnsafePointer[c_char]](s1, s2)