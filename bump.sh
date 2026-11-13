#!/bin/sh
# Marca una versión nueva para que la app abierta en el móvil se recargue sola.
cd "$(dirname "$0")"
V=$(date -u +%Y%m%d%H%M%S)
sed -i "s/const BUILD=\"[0-9]*\"/const BUILD=\"$V\"/" index.html
printf '{"build":"%s"}\n' "$V" > version.json
echo "$V"
