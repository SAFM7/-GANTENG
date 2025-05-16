@echo off
:menu
cls
echo Gambar Masukan di folder Input
echo nanti Folder Keluaran di folder output
echo .
echo Pilih mode nya bro :)
echo .
echo 1. realesrnet-x4plus
echo 2. realesrgan-x4plus ( Default )
echo 3. realesrgan-x4plus-anime
echo 4. RealESRGANv2-animevideo-xsx2
echo 5. RealESRGANv2-animevideo-xsx4
echo 6. exit
echo .
echo .
set /p preset=Pilih presetnya gan....   
IF %preset%==1 goto realesrnet-x4plus
IF %preset%==2 goto realesrgan-x4plus
IF %preset%==3 goto realesrgan-x4plus-anime
IF %preset%==4 goto RealESRGANv2-animevideo-xsx2
IF %preset%==5 goto RealESRGANv2-animevideo-xsx4
IF %preset%==6 goto Exit

:realesrnet-x4plus
cls
@echo off
echo Sabar Ya Kalo udah keluar dewek
realesrgan-ncnn-vulkan.exe -i ./input -o ./output -n realesrnet-x4plus
goto menu

:realesrgan-x4plus
cls
@echo off
echo .
echo Sabar Ya Kalo udah keluar dewek
echo .
echo .
realesrgan-ncnn-vulkan.exe -i ./input -o ./output -n realesrgan-x4plus
pause
goto exit

:realesrgan-x4plus-anime
cls
@echo off
echo .
echo Sabar Ya Kalo udah keluar dewek
echo .
echo .
realesrgan-ncnn-vulkan.exe -i ./input -o ./output -n realesrgan-x4plus-anime
goto exit

:RealESRGANv2-animevideo-xsx2
cls
@echo off
echo .
echo Sabar Ya Kalo udah keluar dewek
echo .
echo .
realesrgan-ncnn-vulkan.exe -i input.mp4 -o output.mp4 -n RealESRGANv2-animevideo-xsx2
goto exit

:RealESRGANv2-animevideo-xsx2
cls
@echo off
echo .
echo Sabar Ya Kalo udah keluar dewek
echo .
echo .
realesrgan-ncnn-vulkan.exe -i input.mp4 -o output.mp4 -n RealESRGANv2-animevideo-xsx4
goto exit

:Exit
echo kalo dah kelar teken apa aja sampe jebol wkwkwk
Cls

pause