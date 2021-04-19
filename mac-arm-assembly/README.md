### Run

```
$ as -o hello.o hello.s
$ ld -o hello hello.o -lSystem -syslibroot `xcrun -sdk macosx --show-sdk-path` -e _start -arch arm64
$ ./hello
Hello World!
```

```
$ objdump -d hello.o                     

hello.o:        file format Mach-O arm64


Disassembly of section __TEXT,__text:

0000000000000000 ltmp0:
       0: 22 00 80 d2                   mov     x2, #1
       4: e1 00 00 10                   adr     x1, #28
       8: a2 01 80 d2                   mov     x2, #13
       c: 90 00 80 d2                   mov     x16, #4
      10: 01 00 00 d4                   svc     #0
      14: 00 00 80 d2                   mov     x0, #0
      18: 30 00 80 d2                   mov     x16, #1
      1c: 01 00 00 d4                   svc     #0

0000000000000020 msg:
      20: 48 65 6c 6c                   ldnp    d8, d25, [x10, #-320]
      24: 6f 20 57 6f                   umlal2.4s       v15, v3, v7[1]
      28: 72 6c 64 21                   <unknown>
      2c: 0a                            <unknown>
```

### Set up

```
xcode-select --install
brew install gcc
```