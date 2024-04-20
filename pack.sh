#!/bin/bash

#     _                _  __                    _ _____ 
#    / \   _ __  _   _| |/ /___ _ __ _ __   ___| |___ / 
#   / _ \ | '_ \| | | | ' // _ \ '__| '_ \ / _ \ | |_ \ 
#  / ___ \| | | | |_| | . \  __/ |  | | | |  __/ |___) |
# /_/   \_\_| |_|\__, |_|\_\___|_|  |_| |_|\___|_|____/ 
#                |___/                                  

# +--------------------------+
# | AnyKernel3 pakage script |
# +--------------------------+

VERSION_CODE="v1.0"
O="out"
FILES=("Image.gz-dtb")

YELLOW='\033[1;33m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
RESET='\033[0m'

# clone AnyKernel3
if ! [ -d AnyKernel3 ]; then
	echo -e "${YELLOW}=> Clone AnyKernel3 ...${RESET}"
	git clone https://github.com/osm0sis/AnyKernel3.git --depth=1
fi

# copy files
for file in $FILES; do
	cp $O/arch/arm64/boot/${file} AnyKernel3/
	echo -e "${YELLOW}-> Copy ${file}${RESET}"
done

# zip files
cd AnyKernel3/
zip -r9 "Kernel-polaris-lineageOS-${VERSION_CODE}-$(date +%Y-%m-%d-%H_%M).zip" * -x .git README.md LICENCE *.zip
