@echo off
echo ⚙️  Installing Tailwind CSS dependencies...

REM Install Tailwind and PostCSS
npm install -D tailwindcss@latest postcss autoprefixer

IF %ERRORLEVEL% NEQ 0 (
  echo ❌ Error during Tailwind CSS installation
  exit /b %ERRORLEVEL%
)

echo 📦 Installing project packages...
npm install

IF %ERRORLEVEL% NEQ 0 (
  echo ❌ Error during npm install
  exit /b %ERRORLEVEL%
)

echo 🚀 Starting development server...
npm run dev
