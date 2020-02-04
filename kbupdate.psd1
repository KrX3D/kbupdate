#
# Module manifest for module 'kbupdate'
#
# Generated by: Chrissy LeMaire
#
# Generated on: 7/7/2019
#
@{
    # Version number of this module.
    ModuleVersion     = '1.1.11'

    # ID used to uniquely identify this module
    GUID              = 'f292e190-ed32-4232-b9f3-b50b42a5655f'

    # Author of this module
    Author            = 'Chrissy LeMaire'

    # Company or vendor of this module
    CompanyName       = 'Chrissy LeMaire'

    # Copyright statement for this module
    Copyright         = '2019 Chrissy LeMaire'

    # Description of the functionality provided by this module
    Description       = 'KB Viewer, Saver, Installer and Uninstaller'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '3.0'

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules   = @(
        if ($PSScriptRoot -like "*\*") {
            # load up everything in Windows
            @{ ModuleName = 'PSFramework'; ModuleVersion = '1.0.19' },
            @{ ModuleName = 'kbupdate-library'; ModuleVersion = '1.0.1' },
            @{ ModuleName = 'PSSQLite'; ModuleVersion = '1.0.3' },
            @{ ModuleName = 'PoshWSUS'; ModuleVersion = '2.3.1.6' }
        } else {
            # limited import in Linux and Mac
            @{ ModuleName = 'PSFramework'; ModuleVersion = '1.0.19' },
            @{ ModuleName = 'kbupdate-library'; ModuleVersion = '1.0.1' }
        }
    )

    # Script module or binary module file associated with this manifest.
    RootModule        = 'kbupdate.psm1'

    FunctionsToExport = @(
        'Get-KbUpdate',
        'Save-KbUpdate',
        'Connect-KbWsusServer',
        'Get-KbInstalledUpdate',
        'Install-KbUpdate',
        'Uninstall-KbUpdate'
    )

    PrivateData       = @{
        # PSData is module packaging and gallery metadata embedded in PrivateData
        # It's for rebuilding PowerShellGet (and PoshCode) NuGet-style packages
        # We had to do this because it's the only place we're allowed to extend the manifest
        # https://connect.microsoft.com/PowerShell/feedback/details/421837
        PSData = @{
            # The primary categorization of this module (from the TechNet Gallery tech tree).
            Category     = 'Windows Update'

            # Keyword tags to help users find this module via navigations and search.
            Tags         = @('kb', 'knowledgebase', 'windowsupdate', 'update', 'patch', 'patches', 'patching')

            # The web address of an icon which can be used in galleries to represent this module
            IconUri      = 'https://user-images.githubusercontent.com/8278033/60797982-97668c00-a170-11e9-8f61-06bd40413c54.png'

            # Indicates this is a pre-release/testing version of the module.
            IsPrerelease = 'False'
        }
    }
}



