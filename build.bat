REM restore packages
.nuget\nuget.exe install App.Tests\packages.config -OutputDirectory packages

REM build
msbuild demo.console.sln

