@echo off
title FIXED INCOME ALM END-TO-END PIPELINE
color 0B

echo [1/2] TIENTRINH 1: TAO MOCK DATA VA DUONG CONG LOI SUAT...
"D:\Python\python.exe" "C:\Users\DELL\Desktop\Project\Project Market risk\Project_Trai_phieu\P2_01_Mock_Bond_Data.py"
IF %ERRORLEVEL% NEQ 0 ( exit /b %ERRORLEVEL% )

echo [2/2] TIENTRINH 2: CHAY DONG CO DINH GIA (DCF) VA STRESS TEST...
"D:\Python\python.exe" "C:\Users\DELL\Desktop\Project\Project Market risk\Project_Trai_phieu\P2_02_Bond_Pricing_Engine.py"
IF %ERRORLEVEL% NEQ 0 ( exit /b %ERRORLEVEL% )

echo DA DAY BAO CAO RUI RO TRAI PHIEU LEN BIGQUERY!
pause