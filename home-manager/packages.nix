{
  pkgs,
  lib,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    nixd
    alejandra
    bandwhich
    brotli
    curlFull
    ffmpeg
    glances
    gzip
    htop
    icu
    jq
    json_c
    libnghttp2
    libuv
    lynx
    mkcert
    mpdecimal
    nmap
    nss_latest
    openssl
    python3
    rarcrack
    rclone
    rsync
    tldr
    unrtf
    volta
    xz
    yq
    zenith
    nil
    kubectl
    btop
    zlib-ng
    brotli
    fastfetch
  ];
}
