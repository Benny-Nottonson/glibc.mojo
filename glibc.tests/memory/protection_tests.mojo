from glibc.memory.protection import *
from glibc.memory.allocate import *
from glibc import *


@always_inline("nodebug")
fn test_mprotect():
    var ptr = malloc[NoneType](10)
    var result = mprotect(ptr, 10, 1)
    print(result)
    free(ptr)

fn main():
    test_mprotect()