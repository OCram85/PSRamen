@{

    # Script module or binary module file associated with this manifest.
<%
"    RootModule        = '{0}.psm1'" -f $PLASTER_PARAM_ModuleName
%>

    # Version number of this module.
    # Do not touch the version number! It gets replaced in the build process!!
<%
"    ModuleVersion     = '{0}'" -f $PLASTER_PARAM_ModuleVersion
%>

    # Supported PSEditions
    # CompatiblePSEditions = @()

    # ID used to uniquely identify this module
<%
"    GUID              = '{0}'" -f $PLASTER_Guid1
%>

    # Author of this module
<%
"    Author            = '{0}'" -f $PLASTER_PARAM_ModuleAuthor
%>

    # Company or vendor of this module
<%
"    CompanyName       = '{0}'" -f $PLASTER_PARAM_ModuleCompany
%>

    # Copyright statement for this module
<%
"    Copyright         = '(c) 2017 {0}. All rights reserved.'" -f $PLASTER_PARAM_ModuleAuthor
%>

    # Description of the functionality provided by this module
<%
"    Description       = '{0}'" -f $PLASTER_PARAM_ModuleDesc
%>

    # Minimum version of the Windows PowerShell engine required by this module
<%
"    PowerShellVersion = '{0}'" -f $PLASTER_PARAM_MinVer
%>
    # Name of the Windows PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the Windows PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = '4.5'

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # CLRVersion = '4.0'

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules   = @()

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    # NestedModules = @()

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    # FunctionsToExport = @()

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport   = @()

    # Variables to export from this module
    VariablesToExport = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport   = @()

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    # ModuleList        = @()

    # List of all files packaged with this module
    # FileList = @()

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData       = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            # Tags         = @()

            # A URL to the license for this module.
<%
if ($PLASTER_PARAM_GithubLink -match 'ModuleAuthor') {
    "            LicenseUri = 'https://https://github.com/{0}/{1}/blob/master/LICENSE'" -f $PLASTER_PARAM_ModuleAuthor, $PLASTER_PARAM_ModuleName
}
elseif ($PLASTER_PARAM_GithubLink -match 'GithubAccount') {
    "            LicenseUri = 'https://https://github.com/{0}/{1}/blob/master/LICENSE'" -f $PLASTER_PARAM_GithubAccount, $PLASTER_PARAM_ModuleName
}
elseif ($PLASTER_PARAM_GithubLink -match 'No') {
    "            # LicenseUri = ''"
}
%>

            # A URL to the main website for this project.
<%
if ($PLASTER_PARAM_GithubLink -match 'ModuleAuthor') {
    "            ProjectUri = 'https://https://github.com/{0}/{1}'" -f $PLASTER_PARAM_ModuleAuthor, $PLASTER_PARAM_ModuleName
}
elseif ($PLASTER_PARAM_GithubLink -match 'GithubAccount') {
    "            ProjectUri = 'https://https://github.com/{0}/{1}'" -f $PLASTER_PARAM_GithubAccount, $PLASTER_PARAM_ModuleName
}
elseif ($PLASTER_PARAM_GithubLink -match 'No') {
    "            # ProjectUri = ''"
}
%>

            # A URL to an icon representing this module.
            # IconUri = ''

            # ReleaseNotes of this module
            # ReleaseNotes = ''

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
<%
if ($PLASTER_PARAM_GithubLink -match 'ModuleAuthor') {
    "            HelpInfoURI = 'https://https://github.com/{0}/{1}'" -f $PLASTER_PARAM_ModuleAuthor, $PLASTER_PARAM_ModuleName
}
elseif ($PLASTER_PARAM_GithubLink -match 'GithubAccount') {
    "            HelpInfoURI = 'https://https://github.com/{0}/{1}'" -f $PLASTER_PARAM_GithubAccount, $PLASTER_PARAM_ModuleName
}
elseif ($PLASTER_PARAM_GithubLink -match 'No') {
    "            # HelpInfoURI = ''"
}
%>

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}
