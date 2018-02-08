<%
    if ($PLASTER_PARAM_GithubLink -match 'ModuleAuthor') {
        $GHCallsign = $PLASTER_PARAM_ModuleAuthor
    }
    elseif ($PLASTER_PARAM_GithubLink -match 'GithubAccount') {
        $GHCallsign = $PLASTER_PARAM_GithubAccount
    }
    if ($null -ne $GHCallsign) {
"[![AppVeyor](https://img.shields.io/appveyor/ci/{0}/{1}/master.svg?style=plastic ""Master Banch Build Status"")](https://ci.appveyor.com/project/{0}/{1}/branch/master)" -f $GHCallsign, $PLASTER_PARAM_ModuleName
"[![PesterTests](https://img.shields.io/appveyor/tests/{0}/{1}/master.svg?style=plastic ""Pester Tests Results"")](https://ci.appveyor.com/project/{0}/{1}/branch/master/tests)" -f $GHCallsign, $PLASTER_PARAM_ModuleName
"[![Coveralls](https://img.shields.io/coveralls/github/{0}/{1}.svg?style=plastic ""Coveralls.io Coverage Report"")](https://coveralls.io/github/{0}/{1}?branch=master)" -f $GHCallsign, $PLASTER_PARAM_ModuleName
"[![PSGalleryVersion](https://img.shields.io/powershellgallery/v/{0}.svg?style=plastic ""PowershellGallery Published Version"")](https://www.powershellgallery.com/packages/{0})" -f $PLASTER_PARAM_ModuleName
"[![PSGalleryDownloads](https://img.shields.io/powershellgallery/dt/{0}.svg?style=plastic ""PowershellGallery Downloads"")](https://www.powershellgallery.com/packages/{0})" -f $PLASTER_PARAM_ModuleName
    }
%>

General
=======

Installation
============

PowerShellGallery.com (Recommended Way)
---------------------------------------

* Make sure you use PowerShell 5.0 or higher with `$PSVersionTable`.
<%
"* Use the builtin PackageManagement and install with: ``Import-Module 'PowerShellGet'; Install-Module {0}``" -f ${PLASTER_PARAM_ModuleName}
"* Done. Start exploring the Module with ``Import-Module {0}; Get-Command -Module {0}``" -f ${PLASTER_PARAM_ModuleName}
%>

Manual Way
----------
<%
"* Take a look at the [Latest Release](https://github.com/OCram85/{0}/releases/latest) page." -f ${PLASTER_PARAM_ModuleName}
"* Download the ``{0}.zip``." -f ${PLASTER_PARAM_ModuleName}
"* Unpack the Zip and put it in your Powershell Module path."
"  * Don't forget to change the NTFS permission flag in the context menu."
"* Start with ``Import-Module {0}``." -f ${PLASTER_PARAM_ModuleName}
%>

Usage
-----
