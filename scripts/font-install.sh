#!/bin/bash

set -e

fonts=(
  FiraCode
  JetBrainsMono
  Ubuntu
)

version="3.4.0"
fonts_dir="$HOME/.local/share/fonts"
tmp_dir="$(mktemp -d)"

mkdir -p "$fonts_dir"

for font in "${fonts[@]}"; do
  zip_file="${font}.zip"
  url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/${zip_file}"

  echo "Downloading $font"
  wget -q "$url" -O "$tmp_dir/$zip_file"

  unzip -q "$tmp_dir/$zip_file" -d "$tmp_dir/$font"

  find "$tmp_dir/$font" -type f ! \( -name "*.ttf" -o -name "*.otf" \) -delete

  cp "$tmp_dir/$font"/* "$fonts_dir/"
done

rm -rf "$tmp_dir"

fc-cache -fv
