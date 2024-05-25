from glibc.memory import *
from glibc import *

fn main():
    external_call["mallinfo2", NoneType]()