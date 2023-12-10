Plasma has just about every feature a mouse-monkey could ask for. One thing it is missing, though, is an option to change system colors in time with the nighttime blue-light filter. So, I made it myself. This systemd service doesn't have dynamic timing: it just changes colors at 7:00PM and 6:00AM. The default color schemes are just breeze and breeze-dark, but you can edit nightColors.service to change this (see the names of the schemes you have available with `plasma-apply-colorscheme -l`).

One neat feature I *did* include was to change icon sets along with colors, because you may prefer lighter icons to go with darker system colors. As provided, I've left this commented-out. If you have an alternate icon set that you prefer for night time, you can find the names of your installed themes under *~/.local/share/icons/* . The names of the folders (including capitalization) are the names that `plasma-changeicons` accepts, so just put your desired icons into the relevant lines in nightColor.sh and un-comment those lines. You can also, oh course, find a line which defines on/off time in nightColor.sh, and change that as desired.

**To use this service:**
1. Copy this repository into *~/.config/systemd/user/*
2. `sudo systemctl --user daemon-reload`
3. `sudo systemctl --user start nightColor.timer`
4. `sudo systemctl --user enable nightColor.timer`
