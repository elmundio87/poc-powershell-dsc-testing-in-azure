configuration testResource
{
    param (
        [ValidateSet('Present', 'Absent')]
        [string] $Ensure = 'Present',
        [string] $Test = "test",
        [string] $Name = ""
     )
    
    # Install the IIS role
    WindowsFeature IIS
    {
        Ensure          = $Ensure
        Name            = "Web-Server"
    }
    
}
