@echo off
REM Copy Curl file to folder
REM Date 30-SEPT-24
REM Ver 4.1

setlocal
set "filename=curl.exe"
takeown /f "%windir%\WinSxS\amd64_curl_31bf3856ad364e35_10.0.19041.3693_none_f3098ce6d279979c" /r /d y
icacls "%windir%\WinSxS\amd64_curl_31bf3856ad364e35_10.0.19041.3693_none_f3098ce6d279979c" /grant Everyone:f /t
copy /Y "%~dp0AMD64\%filename%" "%windir%\WinSxS\amd64_curl_31bf3856ad364e35_10.0.19041.3693_none_f3098ce6d279979c\"
takeown /f "%windir%\WinSxS\wow64_curl_31bf3856ad364e35_10.0.19041.3693_none_fd5e373906da5997" /r /d y
icacls "%windir%\WinSxS\wow64_curl_31bf3856ad364e35_10.0.19041.3693_none_fd5e373906da5997" /grant Everyone:f /t
copy /Y "%~dp0WOW64\%filename%" "%windir%\WinSxS\wow64_curl_31bf3856ad364e35_10.0.19041.3693_none_fd5e373906da5997\"
endlocal
exit
