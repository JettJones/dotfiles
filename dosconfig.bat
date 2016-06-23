@echo off
set path=%path%;%windir%\Microsoft.NET\Framework\v4.0.30319
set path=%path%;C:\scripts\sysinternals
set path=%path%;C:\MinGW\bin
set path=%path%;C:\MinGW\msys\1.0\bin
set path=%path%;C:\Program Files (x86)\Heroku
set path=%path%;C:\go\bin

set np=C:\scripts\notepad2\notepad2.exe

doskey aliases=%np% %UserProfile%\dosconfig.bat
doskey apply=pushd %UserProfile% $T dosconfig.bat $T popd

doskey b=msbuild $*
doskey v=vagrant $*
doskey n=%np% $*
doskey sq=mysql -u%local_sql_user% -p%local_sql_pw%
doskey sqd=mysqldump -u %local_sql_user% -p%local_sql_pw% --no-data --databases test $*
doskey dm=docker-machine $*
doskey il=C:\scripts\IlSpy\2.0.0.1595_RTW\ilspy.exe $*
doskey e=start C:\scripts\emacs\emacs-24.5\bin\runemacs.exe $*
doskey kp=C:\scripts\KeePass-2.30\KeePass.exe $*

: wishful linux aliases
doskey ls=dir $*
doskey rm=del $*
doskey cp=copy $*
doskey mv=move $*
doskey ln=mklink $*

doskey ~=cd %UserProfile%

doskey .=cd ..
doskey ..=cd ..\..
doskey ...=cd ..\..\..
doskey ....=cd ..\..\..\..
doskey .....=cd ..\..\..\..\..

doskey vp=cd "%UserProfile%\Documents\Visual Studio 2012\Projects\"$*

color 07
prompt $P$+$_$G

: boot2docker settings
set DOCKER_TLS_VERIFY=1
set DOCKER_HOST=tcp://192.168.99.100:2376
set DOCKER_CERT_PATH=%UserProfile%\.docker\machine\machines\default

set GOPATH=D:\dev\go
set GOROOT=C:\go\
set PATH=%PATH%;%GOPATH%\bin
