from .error import *
from .memory import *

alias c_void = UInt8
alias c_char = UInt8
alias c_schar = Int8
alias c_uchar = UInt8
alias c_short = Int16
alias c_ushort = UInt16
alias c_int = Int32
alias c_uint = UInt32
alias c_long = Int64
alias c_ulong = UInt64
alias c_float = Float32
alias c_double = Float64
alias c_size_t = UInt64

@register_passable("trivial")
struct CString:
    var data: UnsafePointer[c_schar]

    fn __init__(inout self, data: UnsafePointer[c_char]):
        self.data = data.bitcast[c_schar]()

    fn __str__(self) -> String:
        return StringRef(self.data)