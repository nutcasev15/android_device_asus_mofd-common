#All Nutty Optimizations

# OMS Verified
PRODUCT_PROPERTY_OVERRIDES += \
    ro.substratum.verified=true

# Toolchain Flags
SILVERMONT_FLAGS := -march=silvermont \
                    -mtune=silvermont \
                    -msse4.2 \
                    -mpopcnt \
                    -fgcse-las \
                    -mstackrealign \
                    -Ofast -funsafe-math-optimizations

BOARD_GLOBAL_CFLAGS += $(SILVERMONT_FLAGS)
BOARD_GLOBAL_CPPFLAGS := $(SILVERMONT_FLAGS)
BOARD_RELEASE_CFLAGS := $(SILVERMONT_FLAGS)

