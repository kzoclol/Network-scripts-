@echo off
echo ===============================
echo Resetting network configuration...
echo ===============================
pause

echo Flushing DNS...
ipconfig /flushdns

echo Resetting IP settings...
netsh int ip reset

echo Resetting Winsock...
netsh winsock reset

echo Deleting ARP cache...
netsh interface ip delete arpcache

echo Releasing current IP address...
ipconfig /release

echo Renewing IP address...
ipconfig /renew

echo ===============================
echo All tasks completed successfully!
echo Please restart your computer if needed.
echo ===============================
pause
