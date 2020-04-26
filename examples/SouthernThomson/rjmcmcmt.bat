@ECHO OFF

REM If using MPI make sure its mpiexec is in the path
SET path=C:\Microsoft_HPC_Pack_2012\Bin;%path%

REM Make sure rjmcmcmt.exe is in the path
SET path=..\..\bin\x64\Release;%path%

REM run stand-alone
REM rjmcmcmt.exe rjmcmcmt.con

REM run with 6 MPI processes (and thus 6 Markov Chains)
mpiexec -np 6 rjmcmcmt.exe rjmcmcmt.con

PAUSE
