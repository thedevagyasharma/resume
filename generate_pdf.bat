@echo off
REM Script to generate PDF from LaTeX resume file

echo Compiling LaTeX to PDF...
pdflatex -interaction=nonstopmode devagya_sharma_resume.tex

if %ERRORLEVEL% EQU 0 (
    echo.
    echo PDF generated successfully: devagya_sharma_resume.pdf
    echo.
    echo Cleaning up auxiliary files...
    del devagya_sharma_resume.aux 2>nul
    del devagya_sharma_resume.log 2>nul
    del devagya_sharma_resume.out 2>nul
    echo Done!
) else (
    echo.
    echo Error: PDF compilation failed. Check the .log file for details.
    exit /b 1
)
