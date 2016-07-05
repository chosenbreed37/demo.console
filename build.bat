REM restore packages
.nuget\nuget.exe install App.Tests\packages.config -OutputDirectory packages

REM build
msbuild demo.console.sln

REM run tests
packages\NUnit.ConsoleRunner.3.4.11\tools\nunit3-console.exe App.Tests\bin\debug\App.Tests.dll

