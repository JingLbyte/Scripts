# Import the Active Directory module
Import-Module ActiveDirectory

# Set the path to the CSV file
$csvPath = "C:\Users\Administrator\Desktop\Project Test\Test.csv"  

# Update the path to the actual CSV file

# Import the CSV file
$users = Import-Csv -Path $csvPath

# Iterate through each user in the CSV file
foreach ($user in $users) {
    # Set the user details from the CSV data
    $firstName = $user.GivenName
    $lastName = $user.Surname
    $name = $user.Name
    $samAccountName = $user.sAMAccountName
    $jobTitle = $user.Title
    $company = $user.Company
    $department = $user.Department
    $changePasswordAtLogon = $user.ChangePasswordAtLogon
    $accountPassword = $user.AccountPassword
    $ou = $user.OU

    # Create the new user
    New-ADUser -SamAccountName $samAccountName -UserPrincipalName ($samAccountName + "@corp.globex.com") -Name $name -GivenName $firstName -Surname $lastName -Title $jobTitle -Company $company -Department $department -AccountPassword (ConvertTo-SecureString -String $accountPassword -AsPlainText -Force) -ChangePasswordAtLogon $true -PassThru -Path $ou

    # Enable new user
    Get-ADUser -Identity $samAccountName | Enable-ADAccount

    # Output a success message
    Write-Host "User $firstName $lastName has been created in Active Directory."
