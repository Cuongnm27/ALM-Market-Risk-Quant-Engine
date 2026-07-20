@echo off
title MARKET RISK END-TO-END PIPELINE
color 0A

echo ==============================================================
echo      KHOI DONG HE THONG QUAN TRI RUI RO DA TAI SAN (FRTB)
echo ==============================================================
echo.

echo [1/2] TIENTRINH 1: CAO DU LIEU VA CAP NHAT KHO BIGQUERY...
"D:\Python\python.exe" "C:\Users\DELL\Desktop\Project\Project Market risk\Project_Da_Tai_San\P1_01_Extract_Market_Data.py"
IF %ERRORLEVEL% NEQ 0 (
    color 0C
    echo [THAM HOA] Loi xay ra o buoc Cao du lieu! He thong da dung lai de bao ve Data.
    pause
    exit /b %ERRORLEVEL%
)
echo [OK] TIENTRINH 1 HOAN TAT!
echo.

echo [2/2] TIENTRINH 2: CHAY LOI TOAN HOC QUANT VA DAY BAO CAO LEN MAY...
"D:\Python\python.exe" "C:\Users\DELL\Desktop\Project\Project Market risk\Project_Da_Tai_San\P1_02_Market_Risk_Engine.py"
IF %ERRORLEVEL% NEQ 0 (
    color 0C
    echo [THAM HOA] Loi xay ra o buoc Tinh toan VaR! He thong da dung lai.
    pause
    exit /b %ERRORLEVEL%
)
echo [OK] TIENTRINH 2 HOAN TAT!
echo.

echo ==============================================================
echo   DA DONG GOI XONG BAO CAO HANG NGAY! SAN SANG CHO POWER BI.
echo ==============================================================
pause