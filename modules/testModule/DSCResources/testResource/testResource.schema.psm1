configuration testResource
{
    param (
        [ValidateSet('Present', 'Absent')]
        [string] $Ensure = 'Present'
        [string] $test = "test"
    )
    
    # Install the IIS role
    WindowsFeature IIS
    {
        Ensure          = $Ensure
        Name            = "Web-Server"
    }
    
}
