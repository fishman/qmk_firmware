SRC += matrix.c
SRC += $(QUANTUM_DIR)/color.c
SRC += $(QUANTUM_DIR)/rgb_matrix.c
SRC += mbi5042gp.c
CIE1931_CURVE := yes
RGB_KEYCODES_ENABLE := yes
OPT_DEFS += -DRGB_MATRIX_ENABLE
OPT_DEFS += -DMBI5042

MCU_FAMILY = NUMICRO
MCU_SERIES = NUC123SD4AN0

# linker script to use
# it should exist either in <chibios>/os/common/ports/ARMCMx/compilers/GCC/ld/
#  or <this_dir>/ld/
MCU_LDSCRIPT = NUC123SD4AN0

# startup code to use
# is should exist in <chibios>/os/common/ports/ARMCMx/compilers/GCC/mk/
MCU_STARTUP = NUC123SD4AN0

# it should exist either in <chibios>/os/hal/boards/
#  or <this_dir>/boards
BOARD = NUC123SD4AN0

# NUC123 series is Cortex M0
MCU  = cortex-m0
# ARM version, CORTEX-M0/M1 are 6, CORTEX-M3/M4/M7 are 7
ARMV = 6

# Interrupt driven control endpoint task(+60)
OPT_DEFS += -DINTERRUPT_CONTROL_ENDPOINT

# Build Options
#   change yes to no to disable
#
BOOTMAGIC_ENABLE = lite     # Virtual DIP switch configuration
MOUSEKEY_ENABLE = yes       # Mouse keys
EXTRAKEY_ENABLE = yes       # Audio control and System control
CONSOLE_ENABLE = no         # Console for debug
COMMAND_ENABLE = no         # Commands for debug and configuration
# Do not enable SLEEP_LED_ENABLE. it uses the same timer as BACKLIGHT_ENABLE
SLEEP_LED_ENABLE = no       # Breathing sleep LED during USB suspend
# if this doesn't work, see here: https://github.com/tmk/tmk_keyboard/wiki/FAQ#nkro-doesnt-work
NKRO_ENABLE = yes           # USB Nkey Rollover
BACKLIGHT_ENABLE = no       # Enable keyboard backlight functionality
RGBLIGHT_ENABLE = no        # Enable keyboard RGB underglow
BLUETOOTH_ENABLE = no       # Enable Bluetooth
AUDIO_ENABLE = no           # Audio output
DIP_SWITCH_ENABLE = yes
CUSTOM_MATRIX = yes         # Custom keyscan matrix (don't force inputs)

# Enter lower-power sleep mode when on the ChibiOS idle thread
OPT_DEFS += -DCORTEX_ENABLE_WFI_IDLE=TRUE
