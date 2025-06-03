@echo off
echo ============================================
echo BEASTLING ECOMMERCE MOBILE SETUP
echo ============================================

echo.
echo Installing Flask dependencies...
pip install Flask-CORS

echo.
echo Installing Flutter dependencies...
cd beastling_ecommerce_app
flutter pub get
cd ..

echo.
echo ============================================
echo SETUP COMPLETE!
echo ============================================
echo.
echo TO RUN THE APPLICATIONS:
echo.
echo 1. Start Flask Backend (Terminal 1):
echo    python main.py
echo.
echo 2. Start Flutter App (Terminal 2):
echo    cd beastling_ecommerce_app
echo    flutter run
echo.
echo 3. For phone testing:
echo    - Find your IP: ipconfig
echo    - Update IP in: beastling_ecommerce_app/lib/services/api_service.dart
echo    - Enable USB Debugging on phone
echo    - Connect phone via USB
echo    - Run: flutter run
echo.
echo ============================================
pause 