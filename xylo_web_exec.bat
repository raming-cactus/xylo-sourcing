@echo off
set p=%localappdata%\Xylo
if not exist "%p%" mkdir "%p%"
set q=%p%\xylo_web_exec.html
powershell -noprofile -command "(New-Object Net.WebClient).DownloadFile('https://raw.githubusercontent.com/raming-cactus/xylo-sourcing/refs/heads/main/web_exec_not_src.html','%q%')" 1>nul 2>nul
start "" "%q%"
