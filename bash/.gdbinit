# GDB History
set history save on
set history size 10000
set history filename ~/.gdb_history

# Formatted Printing
set print pretty on
set print array on
set print elements 0
set print object on
set print static-members on
set print vtbl on
set print demangle on
set demangle-style gnu-v3
set print sevenbit-strings off

# GDB logging
set logging file gdb.log
set logging overwrite on
set logging enabled on

# Hex dump with xxd
define xxd
    dump binary memory /tmp/dump.bin $arg0 ((char *)$arg0)+$arg1
    shell xxd /tmp/dump.bin
end
document xxd
    Runs xxd on a memory ADDR and LENGTH
    xxd ADDR LENGTH
end

# Backtrace for all threads
define btall
    thread apply all backtrace
end
document btall
    thread apply all backtrace
end
