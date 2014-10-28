@echo off
echo Connecting to DOMEDSP...
net use \\domedsp\ipc$ /U:domedsp\micron

echo.
echo Stopping remote service...
sc \\domedsp stop CockpitMyTestDevice

echo.
echo Starting remote service...
sc \\domedsp start CockpitMyTestDevice

echo.
echo Fetching service status...
sc \\domedsp query CockpitMyTestDevice

echo.
echo  
echo Done.
PAUSE