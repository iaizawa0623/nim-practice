#import sequtils, sugar

#const src = staticRead("../cpp/lib.cpp")
#{.emit: src.}
#proc cpp_hello() {.importcpp: "hello".}

proc cpp_hello() {.dynlib: "../cpp/lib.dll", importcpp: "hello".}


proc main() =
  for i in 1 .. 5:
    cpp_hello()

main()
