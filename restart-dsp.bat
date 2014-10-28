@echo off
echo Connecting to DOMEDSP...
net use \\domedsp\ipc$ /U:domedsp\micron

echo.
echo Stopping remote service...
sc \\domedsp stop CockpitDsp

echo.
echo Starting remote service...
sc \\domedsp start CockpitDSP

echo.
echo Fetching service status...
sc \\domedsp query CockpitDsp

echo.
echo  
echo Done.
PAUSE