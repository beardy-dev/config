@echo off
doskey clear=cls
doskey ls=dir
doskey home=cd %USERPROFILE%
doskey config=cd %USERPROFILE%\.config
doskey workspace=cd %USERPROFILE%\workspace
doskey omp-scripts=cd %USERPROFILE%\AppData\Local\clink
doskey reload=%USERPROFILE%\.config\init.cmd
