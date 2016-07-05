# restore packages
.nuget/nuget.exe install App.Tests/packages.config -OutputDirectory packages

# build
msbuild demo.console.sln

