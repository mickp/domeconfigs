@echo off
echo Connecting to DOME5u...
net use \\dome5u\ipc$ /U:dome5u\micron

echo.
echo Stopping remote service...
sc \\domedsp stop CockpitIxonCameras

echo.
echo Starting remote service...
sc \\domedsp start CockpitIxonCameras

echo.
echo Fetching service status...
sc \\domedsp query CockpitIxonCameras

echo.
echo  
echo Done.
PAUSE