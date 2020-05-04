# Set gdb
set breakpoint pending on

# Set breakpoints
b main.asm:1

# Run program
r

# Display informations
info registers eax
n
info registers eax
n
info registers eax
n
p/x (int)ans

# Stop and quit
kill
q