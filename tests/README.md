# About This Folder

## General

The `test` folder contains Pester test files. These files will be executed within the Appveyor build.

## Naming Pattern

You can add pester files respecting the following naming pattern:

* The Name begins with 2 digits:
  * Range: `00` ..`99`
  * Note: You can specify the execution order of the pester files with this. The files will be sorted and executed by order.
* Followed by a single underscore `_`.
* The `Verb-Name` itself which has to be same like the containing function name.
  * Note: This ensures the pester file itself finds the corresponding src file.
* `.Tests.ps1` suffix with file extension.

### Examples

* `00_Invoke-Basic.Tests.ps1`
* `01_Get-Item.Tests.ps1`
* `02_Set-Item.Tests.ps1`
* `99_Invoke-Final.Tests.ps1`

## Pester File Template

```PowerShell

```
