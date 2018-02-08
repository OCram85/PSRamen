## About the tests folder

This folder contains all Pester relevant file for performing the unit test for your module. the tests folder should
be exactly structured like your `src` folder. This simplifies switching between the source files and their tests.
You can control the order in which the tests will be executed by adding digits as suffix. This is usefull if your
tests depends on each other.

For Example:

- 00_BasicTests.Tests.ps1
- 01_Invoke-AwesomeJob.Tests.ps1
- 99_FinalUnitTests.Tests.ps1

Notice the naming convention of the Pester files. If you stick with the following example the Pester files names
have to contain the function name like source file. This enables your to find the functions without any manual dot
sourcing.

## Pester Test example

- PowerShell Function File: `.\src\Group1\Invoke-AwesomeJob.ps1`

```PowerShell
function Invoke-AwesomeJob {
    [OutputType([string])]
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory = $false)]
        [ValidateNotNullOrEmpty()]
        [string]$Message
    )

    Write-Output $Message
}
```


- Corresponding Pester tests file`.\tests\Group1\Invoke-AwesomeJob.Tests.ps1`:

```PowerShell
#region HEADER
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
# Keep in mind to adjust `.parent` method based on the directory level of the pester test file.
$RepoRoot = (Get-Item -Path $here).Parent.Parent.FullName
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
$sut = $sut -replace "\d{2}`_", ''
$suthome = (Get-ChildItem -Path $RepoRoot -Exclude ".\tests\" -Filter $sut -Recurse).FullName
# Skip try loading the source file if it doesn't exists.
If ($suthome.Length -gt 0) {
    . $suthome
}
Else {
    Write-Warning ("Could not find source file {0}" -f $sut)
}
#endregion HEADER

# load additional functions defined in the repository. Replace the expression <FunctionName>.
# . (Get-ChildItem -Path $RepoRoot -Exclude ".\tests\" -Filter "<Function-Name>.ps1" -Recurse).FullName

Describe "Invoke-AwesomeJob" {
    Context "Basic logic tests" {
        It "Test1: Should run without errors" {
            { Invoke-AwesomeJob } | Should not Throw
        }

        It "Should return a specific value" {
            $inp = "Awesome"
            Invoke-AwesomeJob -Message $inp | Should Be 'Awesome'
        }
    }
}
```
