# Magisk module: DPI 411 + ZRAM tuning

Ten moduł ustawia przy starcie systemu:

- DPI ekranu: `411` (`wm density 411`)
- Algorytm kompresji ZRAM: `lz4`
- Rozmiar ZRAM (`/sys/block/zram0/disksize`): `25769803776` (24 GiB)
- `vm.swappiness`: `160`

## Struktura

- `module.prop` — metadane modułu Magisk
- `customize.sh` — flagi instalatora Magisk
- `service.sh` — skrypt wykonywany po starcie systemu

## Uwaga

Wartość `disksize` jest bardzo wysoka (24 GiB). Upewnij się, że Twoje urządzenie i kernel poprawnie obsługują taki rozmiar ZRAM.
