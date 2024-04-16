#!/bin/sh
# Usage: FONT_NAME=[FONT_NAME] ./setup_font.sh [PATH_TO_FONT]

set -eu

mkdir -p fonts
cp "$1" fonts

FONT_PATH="fonts/$(basename "$1")"
FONT_ID=$(echo "${FONT_NAME}" | tr "[:upper:]" "[:lower:]" | sed "s/ //g")

for file in icon-theme-seti.json package.json package.nls.json README.md; do
	sed -i "s^{{FONT_NAME}}^${FONT_NAME}^g" $file
	sed -i "s^{{FONT_PATH}}^${FONT_PATH}^g" $file
	sed -i "s^{{FONT_ID}}^${FONT_ID}^g" $file
done
