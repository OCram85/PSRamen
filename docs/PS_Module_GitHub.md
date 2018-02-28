# Template Details

- Name: `PS_Module_GitHub`
- Title: PowerShell Module
- Description: Contains a standard Module layout for a Github hosted repository. Includes AppVeyor, Coveralls.io, and Pester tests.

# Description

```
________          __         .__.__
\______ \   _____/  |______  |__|  |   ______
 |    |  \_/ __ \   __\__  \ |  |  |  /  ___/
 |    `   \  ___/|  |  / __ \|  |  |__\___ \
/_______  /\___  >__| (____  /__|____/____  >
        \/     \/          \/             \/

Used template: PowerShell Module (for existing Github Repository).
Limitation:
  - The given destination path from Invoke-Plaster has to exist
  - The parameter value ModuleName has to match the -DestinationPath parameter.

Example:
  Invoke-Plaster -TemplatePath '.\src\Modules\Github' -DestinationPath 'C:\Temp\Foobar'
  ...
  Enter the name of the module: Foobar

Usage:
  - Create a new git repo in your workspace named like your desired module name. Or clone an empty repo into your
    workspace.

  - Optional: Create your AppVeyor Project and encrypt the folling data:
    - PSGallery NuGet token -> Needed for PSGallery deployment
    - Github Access token -> Needed for deploying on GitHub Releases
  - Optional:
  - Optional: Create your Coveralls.io Project and encrypt the folling data via AppVeypr:
    - dataCoveralls.io token -> Needed for uploading your coverage results.
  - Invoke-Plaster with the DestinationPath you've just created.
  - Fill in the parameter values and watch the Plaster magic...
```

## Requirements

## Parameter

- **ModuleName:** Defines the PowerShell module name itself.
- **ModuleDesc:**
- **ModuleCompany:**
- **ModuleAuthor:**
- **ModuleEmail:**
- **ModuleVersion:**
- **MinVer:**
- **License:**

## Features
