@always_inline("nodebug")
fn strncopy(dest: UnsafePointer[c_char], src: UnsafePointer[c_char], n: c_size_t) -> UnsafePointer[c_char]:
    return external_call["strncopy", UnsafePointer[c_char]](dest, src, n)

