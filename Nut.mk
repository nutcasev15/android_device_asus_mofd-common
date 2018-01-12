#All Nutty Optimizations

# OMS Verified
PRODUCT_PROPERTY_OVERRIDES += \
    ro.substratum.verified=true

# Toolchain Flags
SILVERMONT_FLAGS := -march=slm \
                    -mtune=slm \
                    -msse4.2 \
                    -mpopcnt \
                    -fgcse-las \
                    -mstackrealign

BOARD_GLOBAL_CFLAGS += $(SILVERMONT_FLAGS) -Ofast -funsafe-math-optimizations
BOARD_GLOBAL_CPPFLAGS := $(SILVERMONT_FLAGS) -Ofast -funsafe-math-optimizations
BOARD_RELEASE_CFLAGS := $(SILVERMONT_FLAGS) -Ofast -funsafe-math-optimizations
CLANG_CONFIG_EXTRA_CFLAGS += $(SILVERMONT_FLAGS) -O3 -funsafe-math-optimizations
CLANG_CONFIG_EXTRA_CONLYFLAGS += $(SILVERMONT_FLAGS) -O3 -funsafe-math-optimizations
CLANG_CONFIG_EXTRA_CPPFLAGS += $(SILVERMONT_FLAGS) -O3 -funsafe-math-optimizations

