net stop "W3SVC"
net stop "MSSQLSERVER"
net stop "ColdFusion 9 Application Server"

net start "W3SVC"
net start "MSSQLSERVER"
net start "RAILO"
pause