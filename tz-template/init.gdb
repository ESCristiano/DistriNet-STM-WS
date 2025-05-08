# Connect to the GDB server
target extended-remote localhost:3333

# Reset and halt the MCU
monitor reset halt

# Add symbols
add-symbol-file src/Secure/build/STM32L5-Single-step_Cache_110MHz_S.elf
add-symbol-file src/NonSecure/build/STM32L5-Single-step_Cache_110MHz_NS.elf

# Enable Gui
- 

# C + Asm
layout split

