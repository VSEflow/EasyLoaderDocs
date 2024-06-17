@echo off

echo ==Building Docs==
python -m mkdocs build
echo ==Creating Archive==
SET ddir=%cd%

echo _
echo ==DONE==
echo _
pause