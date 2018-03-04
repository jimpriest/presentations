net stop "RAILO"
net stop "W3SVC"
net stop "MSSQLSERVER"

net start "W3SVC"
net start "MSSQLSERVER"
net start "ColdFusion 9 Application Server"