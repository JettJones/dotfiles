: using labels for comments, so lazy

: symlink files
mklink /H "%UserProfile%\.emacs" .\emacs
mklink /D /J "%UserProfile%\.emacs.d" .\emacs.d

mklink /H "%UserProfile%\dosconfig.bat" .\dosconfig.bat
mklink /H "%UserProfile%\.bashrc" .\bashrc

: shortcut to a shell running dosconfig.bat
copy cmd.lnk "%UserProfile%\Desktop\"
