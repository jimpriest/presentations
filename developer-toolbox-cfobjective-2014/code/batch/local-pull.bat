@ECHO OFF
@REM Script to automatically update a git project via git pull

c:
set BASEDIR=C:\inetpub\wwwroot

echo --- update booking
cd %BASEDIR%/project1
call git pull
echo --- update search
cd %BASEDIR%/project2
call git pull
echo --- update common
cd %BASEDIR%/project3
call git pull
echo --- update findit
cd %BASEDIR%/project4
call git pull
echo --- done updating

pause