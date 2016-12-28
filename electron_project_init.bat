@echo off
@echo ========= Directory Creation =========
rem --- Directory Template ---
rem |-- .vscode
rem     |----- launch.json
rem |-- bin
rem     |----- app.js
rem     |----- app.js.map
rem |-- src
rem     |----- app.ts
rem |-- node_modules
rem     |-- [..]
rem |-- tsconfig.json
rem |-- [...]

mkdir dev
mkdir .vscode
mkdir src
mkdir dist
mkdir dist\app
@cls
@echo ========= Directory Created =========
@echo ========= Initialization.... =========
@CMD /C npm init -f
@cls
@echo ========= Directory Created =========
@echo ========= Initialized =========
@echo ========= Installing deps ... =========
@CMD /C npm install typescript -g --save
@CMD /C npm install electron-prebuilt --save --save-dev
@CMD /C npm install typings -g --save-dev
@cls
@echo ========= Directory Created =========
@echo ========= Initialized =========
@echo ========= Deps installed =========
@echo ========= Installing typings ... =========
rem typings install github-electron --source dt --global
@CMD /C typings install electron/github-electron --source dt --save --global
@CMD /C typings install node --source dt --save --global
@cls
@echo ========= Directory Created =========
@echo ========= Initialized =========
@echo ========= Deps installed =========
@echo ========= Typings installed =========
@echo.
@echo ========= You'r ready =========
@pause >nul
