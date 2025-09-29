#!/bin/bash


if ! which mkarchiso 2>&1 >/dev/null; then
	sudo pacman -S archiso
fi

[[ -e /tmp/archiso-tmp ]] && sudo rm -rfv /tmp/archiso-tmp/

sudo mkarchiso -v -w /tmp/archiso-tmp -o out .

