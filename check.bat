@echo off
md P
:Begin
  rand.exe > in.txt
  Test.exe < in.txt > out.txt
  std.exe < in.txt > stdout.txt
  fc out.txt stdout.txt
if not errorlevel 1 goto Begin
  copy in.txt P
  copy stdout.txt P
  pause
goto Begin
