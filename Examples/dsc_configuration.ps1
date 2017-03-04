configuration testConfiguration
{
    param
    (
        # Target nodes to apply the configuration
        [string[]]$NodeName = 'localhost'
    )

    Import-DSCResource -ModuleName testModule

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
