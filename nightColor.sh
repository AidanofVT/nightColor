#!/bin/bash

if  [ $(( $(date +%-H) % 19 )) -lt 6 ]; then
	plasma-apply-colorscheme BreezeDark -platform offscreen
#	/usr/lib/plasma-changeicons Colorful-Dark-Icons
else
	plasma-apply-colorscheme BreezeClassic -platform offscreen
#	/usr/lib/plasma-changeicons infinity
fi
