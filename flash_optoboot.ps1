Write-Host "Flash optiboot loader (nano)"
Read-Host "Press Enter to continue"


Write-Host "Flash optiboot loader"
.\avrdude.exe -c usbasp -p m328p -B12 -U "flash:w:optiboot/optiboot_atmega328.hex:i"


Write-Host "Flash fuse (l:0xff | h:0xda | e:0x05)"
.\avrdude.exe -c usbasp -p m328p -B12 -U lfuse:w:0xff:m -U hfuse:w:0xda:m -U efuse:w:0x05:m

Read-Host "Press Enter to close"