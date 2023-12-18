# First lets Install Active Directory Domain Services using Windows PowerShell

Add-WindowsFeature AD-Domain-Services 

# Secondly lets create a new Active Directory forest and domain, install Domain Name Services (DNS), and promote the server to a domain controller using Windows PowerShell in Windows Server Core.

Install-ADDSForest -DomainName vdom.local -InstallDNS

# Source: https://www.dell.com/support/kbdoc/en-us/000121955/installing-active-directory-domain-services-and-promoting-the-server-to-a-domain-controller#:~:text=Type%20Start%20PowerShell%20and%20press,install%20Active%20Directory%20Domain%20Services.
