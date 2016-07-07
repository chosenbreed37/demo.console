REM restore packages
tools\nuget\nuget.exe install App.Tests\packages.config -OutputDirectory packages

REM build
msbuild demo.console.sln /t:Rebuild /p:Configuration=Release

REM run tests
tools\NUnit.ConsoleRunner.3.4.1\nunit3-console.exe App.Tests\bin\Release\App.Tests.dll --output=nunit-result.xml


