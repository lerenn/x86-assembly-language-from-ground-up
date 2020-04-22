# Set gdb
set breakpoint pending on

# Set breakpoints
b main.asm:65

# Run program
r

# Display informations
info registers rax
info registers rbx
info registers rcx

# Stop and quit
kill
q