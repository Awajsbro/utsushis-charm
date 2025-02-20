@echo off
set skill_corrections="skill_corrections.csv"
set version=%1
echo "Building version %version%"

set version=%version:.=_%
set archive_name="Utsushis-Charm_v%version%.zip"

del %archive_name%
rd /s /q "build"
rd /s /q "dist"
md dist
md "dist\inputs"

cmd /c ".\env\scripts\activate & python -m PyInstaller .\utsushis-charm.spec --onefile & .\env\scripts\deactivate;" 

7z a -tzip %archive_name% ".\dist\*"
