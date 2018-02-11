# All Nutty Optimizations

ifneq ($(THERE_BE_NUTS),)
    # OMS Verified
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.substratum.verified=true
endif

# Toolchain Flags
SILVERMONT_FLAGS := -march=slm \
                    -mtune=slm \
                    -msse4.2 \
                    -mpopcnt \
                    -mstackrealign \
                    -funsafe-math-optimizations

ifneq ($(THERE_BE_NUTS),)
    SILVERMONT_FLAGS += \
        -fgcse-las \
        -Ofast
else
    SILVERMONT_FLAGS += \
        -O3
endif

BOARD_GLOBAL_CFLAGS += $(SILVERMONT_FLAGS)
BOARD_GLOBAL_CPPFLAGS := $(SILVERMONT_FLAGS)
BOARD_RELEASE_CFLAGS := $(SILVERMONT_FLAGS)
CLANG_CONFIG_EXTRA_CFLAGS += $(SILVERMONT_FLAGS)
CLANG_CONFIG_EXTRA_CONLYFLAGS += $(SILVERMONT_FLAGS)
CLANG_CONFIG_EXTRA_CPPFLAGS += $(SILVERMONT_FLAGS)
