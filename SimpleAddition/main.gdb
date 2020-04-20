# Set gdb
set breakpoint pending on

# Set breakpoints
b main.asm:26

# Run program
r

# Display informations
info registers eax

# Stop and quit
kill
q