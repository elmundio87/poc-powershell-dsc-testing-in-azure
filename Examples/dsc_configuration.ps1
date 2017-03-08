configuration testConfiguration
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-DSCResource -ModuleName poc-powershell-dsc-testing-in-azure

    Node $NodeName
    {
        # Install the IIS role
        testResource IIS
        {
            Ensure          = "Present"
            Name            = "Web-Server"
        }

    }
}
