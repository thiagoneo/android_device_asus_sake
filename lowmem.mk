#
# SPDX-License-Identifier: Apache-2.0
#
# Optional configuration for build hosts with little RAM (~16 GB).
# Enabled only when building with SAKE_LOWMEM_BUILD=true, together with
# ALLOW_MISSING_DEPENDENCIES=true.
#
# Skips Soong analysis of trees this device never builds (test suites,
# other devices/emulators, Trusty TEE, other Qualcomm platforms), which
# lowers soong_build peak memory. The longest matching prefix wins, so
# entries without "-" re-include subdirectories that are still needed.
#

PRODUCT_SOURCE_ROOT_DIRS += \
    -cts/ \
    cts/libs/json/ \
    -test/ \
    test/app_compat/csuite/ \
    test/vts-testcase/hal/treble/vintf/ \
    -trusty/ \
    -external/trusty/ \
    -device/google/ \
    -device/google_car/ \
    -device/generic/car/ \
    -device/generic/goldfish/ \
    -device/generic/trusty/ \
    -hardware/qcom-caf/sm8150/ \
    -hardware/qcom-caf/sm8250/ \
    -hardware/qcom-caf/sm8450 \
    -hardware/qcom-caf/sm8550/ \
    -hardware/qcom-caf/sm8650/ \
    -hardware/qcom-caf/sm8750/
