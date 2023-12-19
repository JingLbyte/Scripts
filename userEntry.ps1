# Lets add a line to add a new user.

New-ADUser '
-name FinalP '
-Surname Tier1 '
-GivenName FinalP '
-UserPrincipalName FinalP '
-AccountPassword(ConvertTo-SecureString "Passw0rd12" -AsPlainText -Force) '
-path "OU=IT,DC=corp,DC=globexpower,DC=com"

# If you do not do this part then the user will not be active.
Enable-ADAccount -Identity FinalP
Get-ADUSer -Identity FinalP
