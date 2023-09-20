for /F "tokens=3 delims=: " %%S in ('sc query "c2srcsvc" ^| findstr "        ESTADO"') do (
  if /I "%%S" EQU "STOPPING" (
    for /F "tokens=2 delims=: " %%P in ('sc queryex "c2srcsvc" ^| findstr "        PID"') do (
      taskkill /f /pid %%P
    )
  )
)
net start c2srcsvc