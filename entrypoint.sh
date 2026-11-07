#!/bin/sh
set -e
WEBGL_BUILD_DIR=${WEBGL_BUILD_DIR:-Build/WebGL}
if [ -d "$WEBGL_BUILD_DIR" ] && [ "$(ls -A "$WEBGL_BUILD_DIR" 2>/dev/null)" != "" ]; then
  rm -rf /usr/share/nginx/html/*
  cp -r "$WEBGL_BUILD_DIR"/.* /usr/share/nginx/html/ 2>/dev/null || cp -r "$WEBGL_BUILD_DIR"/* /usr/share/nginx/html/
else
  echo "WebGL build not found at $WEBGL_BUILD_DIR. Using placeholder."
  cat > /usr/share/nginx/html/index.html << 'HTML'
<!doctype html><html><head><meta charset="utf-8"><title>Dreamcore Placeholder</title></head><body><h1>Dreamcore WebGL Placeholder</h1></body></html>
HTML
fi
exec "$@"
