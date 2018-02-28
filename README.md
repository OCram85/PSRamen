[![AppVeyor branch](https://img.shields.io/appveyor/ci/OCram85/PSRamen/master.svg?style=plastic "Master Banch Build Status")](https://ci.appveyor.com/project/OCram85/psramen/branch/master)
[![AppVeyor tests branch](https://img.shields.io/appveyor/tests/OCram85/PSRamen/master.svg?style=plastic "Pester Tests Results")](https://ci.appveyor.com/project/OCram85/psramen/branch/master/tests)
[![Coveralls github](https://img.shields.io/coveralls/github/OCram85/PSRamen.svg?style=plastic "Coveralls.io Coverage Report")](https://coveralls.io/github/OCram85/PSRamen?branch=master)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/v/PSRamen.svg?style=plastic "PowershellGallery Published Version")](https://www.powershellgallery.com/packages/PSRamen)
[![PowerShell Gallery](https://img.shields.io/powershellgallery/dt/PSRamen.svg?style=plastic "PowershellGallery Downloads")](https://www.powershellgallery.com/packages/PSRamen)

![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)
![forthebadge](http://forthebadge.com/images/badges/for-you.svg)

# About

> PSRamen is a collection of Plaster templates. It's purpose is to keep all important templates for modules and other items in one single place.
# Installation

## PowerShellGallery.com (Recommended Way)


* Make sure you use PowerShell 5.0 or higher with `$PSVersionTable`.
* Use the builtin PackageManagement and install with: `Import-Module PowerShellGet; Install-Module PSRamen`.
* Done. Start exploring the Plaster templates with `Import-Module Plaster; Get-PlasterTemplate -IncludeInstalledModules`.

## Manual Way

* Take a look at the [Latest Release](https://github.com/OCram85/PSRamen/releases/latest) page.
* Download the `PSRamen.zip`.
* Unpack the zip file and put it in your Powershell module path.
  * Don't forget to change the NTFS permission flag in the context menu.
* Done. Start exploring the Plaster templates with `Import-Module Plaster; Get-PlasterTemplate -IncludeInstalledModules`.

# Templates

## Modules

| Name | Title | Description |
| --- | --- | --- |
| `PS_Module_GitHub` | [PowerShell Module](docs/PS_Module_Github.md) | Contains a standard Module layout for a Github hosted repository. Includes AppVeyor, Coveralls.io, and Pester tests.|
