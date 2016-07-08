REM restore packages
tools\nuget\nuget.exe install App\packages.config -OutputDirectory packages
tools\nuget\nuget.exe install App.Tests\packages.config -OutputDirectory packages

REM build
msbuild demo.console.sln /t:Rebuild /p:Configuration=Release

REM run tests
packages\NUnit.ConsoleRunner.3.4.1\tools\nunit3-console.exe App.Tests\bin\Release\App.Tests.dll --result:result.xml;format=nunit2

