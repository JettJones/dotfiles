@echo off
set path=%path%;C:\scripts\sysinternals
:set path=%path%;C:\MinGW\bin
:set path=%path%;C:\MinGW\msys\1.0\bin
:set path=%path%;C:\Program Files (x86)\Heroku
:set path=%path%;C:\go\bin
:set path=%path%;C:\Program Files\Oracle\VirtualBox
set path=%path%;c:\programdata\chocolatey\lib\python3\tools\Scripts
set path=%path%;C:\scripts\bin
set path=%path%;C:\scripts\jdk13.0.2\bin

set HOME=%UserProfile%
set np="C:\scripts\Notepad2\notepad2.exe"
if exist "C:\Program Files (x86)\Notepad++\notepad++.exe" (
  set np="C:\Program Files (x86)\Notepad++\notepad++.exe"
)
doskey aliases=%np% %UserProfile%\dosconfig.bat
doskey apply=pushd %UserProfile% $T dosconfig.bat $T popd

doskey b=msbuild $*
doskey v=vagrant $*
doskey n=%np% $*
doskey sq=mysql -u%local_sql_user% -p%local_sql_pw%
doskey sqd=mysqldump -u %local_sql_user% -p%local_sql_pw% --no-data --databases test $*
doskey dm=docker-machine $*
doskey il=C:\scripts\IlSpy\2.0.0.1595_RTW\ilspy.exe $*
doskey e=start C:\scripts\emacs\emacs-26.2\bin\runemacs.exe $*
doskey kp=C:\scripts\KeePass2.34\KeePass.exe $*
doskey rmg=C:\scripts\robomongo\Robomongo.exe $*
doskey hosts=%np% C:\windows\system32\drivers\etc\hosts
doskey vmrun="C:\Program Files (x86)\VMware\VMware Workstation\vmrun" $*

doskey dm-apply=pushd %UserProfile% $T docker-machine env $* $G dm-tmp.bat $T dm-tmp.bat $T popd

: wishful linux aliases
doskey ls=dir $*
doskey rm=del $*
doskey cp=copy $*
doskey mv=move $*
doskey ln=mklink $*
doskey cat=type $*


doskey ~=cd %UserProfile%

doskey .=cd ..
doskey ..=cd ..\..
doskey ...=cd ..\..\..
doskey ....=cd ..\..\..\..
doskey .....=cd ..\..\..\..\..

:color 07
prompt $P$+$_$G

:set GOPATH=D:\dev\go
:set GOROOT=C:\go\
:set PATH=%PATH%;%GOPATH%\bin

: Local overrides
if exist "local.bat" (
   local.bat
)

git config --global core.excludesfile ~/.gitignore_global
