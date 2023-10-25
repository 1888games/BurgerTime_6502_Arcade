echo off

rem Kick assembling
java -cp c:\C64\Tools\KickAssembler\KickAss.jar cml.kickass.KickAssembler btime.asm -vicesymbols -odir ./mame/roms/btime

cd MAME

taskkill /im "mame.exe"
mame.exe btime -w -resolution 684x800 

