@echo off
setlocal ENABLEDELAYEDEXPANSION
set is_py_file_exits=0
for %%f in (*.py) do (
    set s=%%f
    set str=!str! !s:~0,-3!.ipynb
    p2j !s!
    set is_py_file_exits=1
)
call nbmerge%str%>MOONTASIR_MAHMUD_21301176_02.ipynb
call del%str%
if %is_py_file_exits%==1 (
    echo All .py file merged to one .ipynb file!
)else (
    echo No .py file found!
)
endlocal
