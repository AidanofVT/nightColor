#!/bin/bash

#if  [ $(( $(date +%H) % 19 )) -lt 6 ];
if  [ $(( $(date +%M) % 2 )) -eq 0 ]; then
	plasma-apply-colorscheme Win12OSNord -platform offscreen
	/usr/lib/plasma-changeicons Colorful-Dark-Icons
else
	plasma-apply-colorscheme BreezeClassic -platform offscreen
	/usr/lib/plasma-changeicons infinity
fi
