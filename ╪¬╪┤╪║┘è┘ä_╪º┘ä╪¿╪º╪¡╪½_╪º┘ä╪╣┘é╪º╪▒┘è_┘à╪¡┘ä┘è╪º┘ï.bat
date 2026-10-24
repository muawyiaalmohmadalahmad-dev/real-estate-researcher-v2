@echo off
chcp 65001 >nul
cd /d "%~dp0"
title الباحث العقاري - تشغيل محلي
where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8765/index.html
  py -3 -m http.server 8765 --bind 127.0.0.1
  pause
  exit /b
)
where python >nul 2>nul
if %errorlevel%==0 (
  start "" http://localhost:8765/index.html
  python -m http.server 8765 --bind 127.0.0.1
  pause
  exit /b
)
echo لم يتم العثور على Python في هذا الكمبيوتر.
echo لتثبيت التطبيق محلياً، يلزم وجود Python أو خادم محلي بديل.
echo يمكنك تنزيل Python من الموقع الرسمي ثم إعادة تشغيل هذا الملف.
pause
