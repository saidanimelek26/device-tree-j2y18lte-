#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
#!/bin/bash
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
set -e
DEVICE=j2y18lte
VENDOR=samsung
MY_DIR="${BASH_SOURCE%/*}"
if [[ ! -d "${MY_DIR}" ]]; then MY_DIR="${PWD}"; fi
ANDROID_ROOT="${MY_DIR}/../../.."
HELPER="${ANDROID_ROOT}/tools/extract-utils/extract_utils.sh"
if [ ! -f "${HELPER}" ]; then echo "Unable to find helper script at ${HELPER}"; exit 1; fi
source "${HELPER}"
setup_vendor "${DEVICE}" "${VENDOR}" "${ANDROID_ROOT}"
write_headers
write_makefiles "${MY_DIR}/proprietary-files.txt" true
write_footers

