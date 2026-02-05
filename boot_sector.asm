;  Temporary Infinite Loop
loop:
    jmp loop

; Fill remaining positions (byte 510 to (510 - (current Assembly position - start of the section)))
; aka fill eveything between the loop to 510 with zeros
times 510-($-$$) db 0

; These 2 bytes 0xaa and 0x55 is a magic number used to tell the BIOS that this is infact a boot sector
dw 0xaa55
