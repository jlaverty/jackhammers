$testProjects = Get-ChildItem -Path $env:WORKSPACE -Filter "*.UnitTest.dll" -Recurse | ForEach-Object FullName | Select-String -Pattern "bin\Debug" -SimpleMatch
$xconsole = [IO.Path]::Combine($env:WORKSPACE, "packages\xunit.runner.console.2.4.0\tools\net452\xunit.console.exe")
foreach ($project in $testProjects)
{
    $testXmlPath = [IO.Path]::Combine((Get-Item $project).DirectoryName, (Get-Item $project).Basename + ".xml")
    cmd /c $xconsole $project -xml $testXmlPath
}
