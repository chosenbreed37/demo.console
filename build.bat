REM restore packages
tools\nuget\nuget.exe install App.Tests\packages.config -OutputDirectory packages

REM build
msbuild demo.console.sln

REM run tests
tools\NUnit.ConsoleRunner.3.4.1\nunit3-console.exe App.Tests\bin\debug\App.Tests.dll

