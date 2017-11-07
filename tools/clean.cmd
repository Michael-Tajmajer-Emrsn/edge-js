
rem @echo off
set SELF=%~dp0
del "%SELF%\build\nuget\lib\net40\*.dll"
del "%SELF%\build\nuget\lib\net40\*.pdb"
del "%SELF%\build\nuget\lib\net45\*.dll"
del "%SELF%\build\nuget\lib\net45\*.pdb"
del "%SELF%\build\nuget\content\edge\*.js"
del "%SELF%\build\nuget\content\edge\x64\*.dll"
del "%SELF%\build\nuget\content\edge\x64\*.pdb"
del "%SELF%\build\nuget\content\edge\x86\*.dll"
del "%SELF%\build\nuget\content\edge\x86\*.pdb"
rd /s /q "%SELF%\build\nuget\lib\netstandard1.6"

del "%SELF%\build\nuget\content\edge\x64\*.node"
del "%SELF%\build\nuget\content\edge\x86\*.node"