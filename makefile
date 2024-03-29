TARGET = uefi-rv32ima.efi
include uefi/Makefile

CFLAGS += -O2

run: uefi-rv32ima.efi
	uefi-run -b res/OVMF.fd $<

.PHONY: run