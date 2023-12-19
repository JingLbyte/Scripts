$1stname = Read-Host -Prompt "Enter Fire Name: "
$Surname = Read-Host -Prompt "Enter Surname: "
$UserName = Read-Host -Prompt "Enter Username: "
$Password = Read-Host -Prompt "Enter Password: "


# Here is the Regular add user script above will be the automation variables
New-ADUser '
-name $1stname '
-Surname $Surname '
-GivenName $1stname '
-UserPrincipalName $UserName '
-AccountPassword(ConvertTo-SecureString $Password -AsPlainText -Force) '
-path "OU=IT,DC=corp,DC=globexpower,DC=com"

# To enable User
Enable-ADAccount -Identity $1stname
Get-ADUser -Identity $1stname
