
rem @echo off
set SELF=%~dp0
REM if "%1" equ "" (
REM     echo Usage: update_nuget.cmd {node_version}
REM     echo e.g. update_nuget.cmd 8.2.1
REM     exit /b -1
REM )

rem md "%SELF%\build\nuget\lib\net40"
rem copy /y "%SELF%\..\src\double\Edge.js\bin\Release\net40\EdgeJs.dll"                "%SELF%\build\nuget\lib\net40"
rem copy /y "%SELF%\..\src\double\Edge.js\bin\Release\net40\EdgeJs.pdb"                "%SELF%\build\nuget\lib\net40"

md "%SELF%\build\nuget\lib\net45"
copy /y "%SELF%\..\src\double\Edge.js\bin\win32\Release\net45\EdgeJs.dll"          "%SELF%\build\nuget\lib\net45"
copy /y "%SELF%\..\src\double\Edge.js\bin\win32\Release\net45\EdgeJs.pdb"          "%SELF%\build\nuget\lib\net45"

md "%SELF%\build\nuget\lib\netcoreapp1.1"
copy /y "%SELF%\..\src\double\Edge.js\bin\win32\Release\netcoreapp1.1\EdgeJs.dll"  "%SELF%\build\nuget\lib\netcoreapp1.1"
copy /y "%SELF%\..\src\double\Edge.js\bin\win32\Release\netcoreapp1.1\EdgeJs.pdb"  "%SELF%\build\nuget\lib\netcoreapp1.1"

md "%SELF%\build\nuget\content"
md "%SELF%\build\nuget\content\edge"
copy /y "%SELF%\..\lib\double_edge.js" "%SELF%\build\nuget\content\edge"
copy /y "%SELF%\..\lib\edge.js"        "%SELF%\build\nuget\content\edge"

rem md "%SELF%\build\nuget\content\edge"
rem md "%SELF%\build\nuget\content\edge\x64"
rem md "%SELF%\build\nuget\content\edge\x86"

rem copy "%SELF%\build\node-%1-x64\node.dll"                            "%SELF%\build\nuget\content\edge\x64"
rem copy "%SELF%\build\node-%1-x64\node.pdb"                            "%SELF%\build\nuget\content\edge\x64"
rem copy "%SELF%\build\nuget\content\edge\x64\edge_nativeclr.node"      "%SELF%\build\nuget\content\edge\x64"
rem copy "%SELF%\build\nuget\content\edge\x64\edge_nativeclr.pdb"       "%SELF%\build\nuget\content\edge\x64"

rem copy "%SELF%\build\node-%1-x86\node.dll"                            "%SELF%\build\nuget\content\edge\x86"
rem copy "%SELF%\build\node-%1-x86\node.pdb"                            "%SELF%\build\nuget\content\edge\x86"
rem copy "%SELF%\build\nuget\content\edge\x86\edge_nativeclr.node"      "%SELF%\build\nuget\content\edge\x86"
rem copy "%SELF%\build\nuget\content\edge\x86\edge_nativeclr.pdb"       "%SELF%\build\nuget\content\edge\x86"