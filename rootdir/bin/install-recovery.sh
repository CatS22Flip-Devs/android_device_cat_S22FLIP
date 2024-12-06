#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:50331648:ead632d5e355a3246b7b749505aadfadc0808054; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:50331648:ead632d5e355a3246b7b749505aadfadc0808054 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
